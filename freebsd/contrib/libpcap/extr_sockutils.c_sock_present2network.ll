; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_present2network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_present2network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"22222\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"More than one socket requested; using the first one returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_present2network(i8* %0, %struct.sockaddr_storage* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo, align 8
  store i8* %0, i8** %7, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = call i32 @memset(%struct.addrinfo* %14, i32 0, i32 24)
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @sock_initaddress(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %14, %struct.addrinfo** %13, i8* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %33 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memcpy(%struct.sockaddr_storage* %32, i32 %35, i32 4)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memcpy(%struct.sockaddr_storage* %38, i32 %41, i32 4)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %50 = call i32 @freeaddrinfo(%struct.addrinfo* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pcap_snprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %48
  store i32 -2, i32* %6, align 4
  br label %61

58:                                               ; preds = %43
  %59 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %60 = call i32 @freeaddrinfo(%struct.addrinfo* %59)
  store i32 -1, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %57, %23
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @sock_initaddress(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
