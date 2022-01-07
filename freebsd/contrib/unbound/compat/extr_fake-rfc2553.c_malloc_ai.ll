; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_fake-rfc2553.c_malloc_ai.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_fake-rfc2553.c_malloc_ai.c"
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
  %9 = call %struct.addrinfo* @calloc(i32 1, i32 48)
  store %struct.addrinfo* %9, %struct.addrinfo** %8, align 8
  %10 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %11 = icmp eq %struct.addrinfo* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8
  br label %68

13:                                               ; preds = %3
  %14 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i64 1
  %16 = bitcast %struct.addrinfo* %15 to %struct.sockaddr*
  %17 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 3
  store %struct.sockaddr* %16, %struct.sockaddr** %18, align 8
  %19 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = load i32, i32* @AF_INET, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 3
  %26 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  store i32 %21, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 3
  %31 = load %struct.sockaddr*, %struct.sockaddr** %30, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in*
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 3
  %37 = load %struct.sockaddr*, %struct.sockaddr** %36, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in*
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %34, i32* %40, align 4
  %41 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %13
  %46 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %55

51:                                               ; preds = %13
  %52 = load i64, i64* @SOCK_STREAM, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %67, %struct.addrinfo** %4, align 8
  br label %68

68:                                               ; preds = %66, %12
  %69 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  ret %struct.addrinfo* %69
}

declare dso_local %struct.addrinfo* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
