; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_fake-rfc2553.c_malloc_ai.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_fake-rfc2553.c_malloc_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i64, %struct.sockaddr*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i32, i32, %struct.addrinfo*)* @malloc_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @malloc_ai(i32 %0, i32 %1, %struct.addrinfo* %2) #0 {
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  %9 = call %struct.addrinfo* @malloc(i32 48)
  store %struct.addrinfo* %9, %struct.addrinfo** %8, align 8
  %10 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %11 = icmp eq %struct.addrinfo* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  br label %70

13:                                               ; preds = %3
  %14 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %15 = call i32 @memset(%struct.addrinfo* %14, i8 signext 0, i32 48)
  %16 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i64 1
  %18 = bitcast %struct.addrinfo* %17 to %struct.sockaddr*
  %19 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 3
  store %struct.sockaddr* %18, %struct.sockaddr** %20, align 8
  %21 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 3
  %28 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 3
  %33 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  %34 = bitcast %struct.sockaddr* %33 to %struct.sockaddr_in*
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 3
  %39 = load %struct.sockaddr*, %struct.sockaddr** %38, align 8
  %40 = bitcast %struct.sockaddr* %39 to %struct.sockaddr_in*
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 4
  %43 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %13
  %48 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %57

53:                                               ; preds = %13
  %54 = load i64, i64* @SOCK_STREAM, align 8
  %55 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %69, %struct.addrinfo** %4, align 8
  br label %70

70:                                               ; preds = %68, %12
  %71 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  ret %struct.addrinfo* %71
}

declare dso_local %struct.addrinfo* @malloc(i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
