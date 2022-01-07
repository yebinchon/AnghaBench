; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_initaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_initaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"getaddrinfo() %s\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"getaddrinfo(): socket type not supported\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"getaddrinfo(): multicast addresses are not valid when using TCP streams\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_initaddress(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %10, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %18 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %19 = call i32 @getaddrinfo(i8* %15, i8* %16, %struct.addrinfo* %17, %struct.addrinfo** %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %6
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @gai_strerror(i32 %28)
  %30 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  store i32 -1, i32* %7, align 4
  br label %85

32:                                               ; preds = %6
  %33 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %34 = load %struct.addrinfo*, %struct.addrinfo** %33, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PF_INET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %41 = load %struct.addrinfo*, %struct.addrinfo** %40, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PF_INET6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %55 = load %struct.addrinfo*, %struct.addrinfo** %54, align 8
  %56 = call i32 @freeaddrinfo(%struct.addrinfo* %55)
  %57 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %57, align 8
  store i32 -1, i32* %7, align 4
  br label %85

58:                                               ; preds = %39, %32
  %59 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %59, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SOCK_STREAM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %66, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @sock_ismcastaddr(i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  %81 = load %struct.addrinfo*, %struct.addrinfo** %80, align 8
  %82 = call i32 @freeaddrinfo(%struct.addrinfo* %81)
  %83 = load %struct.addrinfo**, %struct.addrinfo*** %11, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %83, align 8
  store i32 -1, i32* %7, align 4
  br label %85

84:                                               ; preds = %65, %58
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %79, %53, %31
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @sock_ismcastaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
