; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_get_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.addrinfo = type { i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"getaddrinfo failed (%s) - invalid hostname or IP address\0A\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr*)* @get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_addr(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @getaddrinfo(i8* %8, i32* null, i32* null, %struct.addrinfo** %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @gai_strerror(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(%struct.sockaddr* %24, i32 %27, i32 4)
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PF_INET6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(%struct.sockaddr* %36, i32 %39, i32 4)
  br label %42

41:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %45 = call i32 @freeaddrinfo(%struct.addrinfo* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
