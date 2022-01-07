; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet.c_in_status_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet.c_in_status_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }
%struct.sockaddr = type { i64, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFPSRCADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@SIOCGIFPDSTADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\09tunnel inet %s --> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @in_status_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_status_tunnel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @NI_MAXHOST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @NI_MAXHOST, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %17 = bitcast i32* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %7, align 8
  %18 = call i32 @memset(%struct.ifreq* %6, i32 0, i32 8)
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @name, align 4
  %22 = load i32, i32* @IFNAMSIZ, align 4
  %23 = call i32 @strlcpy(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SIOCGIFPSRCADDR, align 4
  %26 = ptrtoint %struct.ifreq* %6 to i32
  %27 = call i64 @ioctl(i32 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %75

30:                                               ; preds = %1
  %31 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %75

37:                                               ; preds = %30
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = trunc i64 %10 to i32
  %43 = load i32, i32* @NI_NUMERICHOST, align 4
  %44 = call i64 @getnameinfo(%struct.sockaddr* %38, i32 %41, i8* %12, i32 %42, i32 0, i32 0, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %47, align 16
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SIOCGIFPDSTADDR, align 4
  %51 = ptrtoint %struct.ifreq* %6 to i32
  %52 = call i64 @ioctl(i32 %49, i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %75

55:                                               ; preds = %48
  %56 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AF_INET, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  br label %75

62:                                               ; preds = %55
  %63 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %64 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %65 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = trunc i64 %14 to i32
  %68 = load i32, i32* @NI_NUMERICHOST, align 4
  %69 = call i64 @getnameinfo(%struct.sockaddr* %63, i32 %66, i8* %15, i32 %67, i32 0, i32 0, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %72, align 16
  br label %73

73:                                               ; preds = %71, %62
  %74 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %15)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %61, %54, %36, %29
  %76 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %8, align 4
  switch i32 %77, label %79 [
    i32 0, label %78
    i32 1, label %78
  ]

78:                                               ; preds = %75, %75
  ret void

79:                                               ; preds = %75
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, i32) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
