; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet6.c_in6_status_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet6.c_in6_status_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifreq = type { i32, i32 }
%struct.sockaddr = type { i64, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@SIOCGIFPSRCADDR_IN6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@SIOCGIFPDSTADDR_IN6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09tunnel inet6 %s --> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @in6_status_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_status_tunnel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.in6_ifreq, align 4
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
  %16 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %6, i32 0, i32 1
  %17 = bitcast i32* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %7, align 8
  %18 = call i32 @memset(%struct.in6_ifreq* %6, i32 0, i32 8)
  %19 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @name, align 4
  %22 = call i32 @strlcpy(i32 %20, i32 %21, i32 4)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @SIOCGIFPSRCADDR_IN6, align 4
  %25 = ptrtoint %struct.in6_ifreq* %6 to i32
  %26 = call i64 @ioctl(i32 %23, i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = trunc i64 %10 to i32
  %42 = load i32, i32* @NI_NUMERICHOST, align 4
  %43 = call i64 @getnameinfo(%struct.sockaddr* %37, i32 %40, i8* %12, i32 %41, i32 0, i32 0, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %46, align 16
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SIOCGIFPDSTADDR_IN6, align 4
  %50 = ptrtoint %struct.in6_ifreq* %6 to i32
  %51 = call i64 @ioctl(i32 %48, i32 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %74

54:                                               ; preds = %47
  %55 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET6, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %74

61:                                               ; preds = %54
  %62 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %64 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = trunc i64 %14 to i32
  %67 = load i32, i32* @NI_NUMERICHOST, align 4
  %68 = call i64 @getnameinfo(%struct.sockaddr* %62, i32 %65, i8* %15, i32 %66, i32 0, i32 0, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %71, align 16
  br label %72

72:                                               ; preds = %70, %61
  %73 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %15)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %60, %53, %35, %28
  %75 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.in6_ifreq*, i32, i32) #2

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
