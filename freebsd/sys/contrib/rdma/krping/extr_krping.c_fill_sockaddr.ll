; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_fill_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_fill_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.krping_cb = type { i64, i32, i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_storage*, %struct.krping_cb*)* @fill_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_sockaddr(%struct.sockaddr_storage* %0, %struct.krping_cb* %1) #0 {
  %3 = alloca %struct.sockaddr_storage*, align 8
  %4 = alloca %struct.krping_cb*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  store %struct.krping_cb* %1, %struct.krping_cb** %4, align 8
  %7 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %8 = call i32 @memset(%struct.sockaddr_storage* %7, i32 0, i32 4)
  %9 = load %struct.krping_cb*, %struct.krping_cb** %4, align 8
  %10 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %5, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i32 24, i32* %18, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i8*
  %26 = load %struct.krping_cb*, %struct.krping_cb** %4, align 8
  %27 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i8* %25, i32 %28, i32 4)
  %30 = load %struct.krping_cb*, %struct.krping_cb** %4, align 8
  %31 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %62

35:                                               ; preds = %2
  %36 = load %struct.krping_cb*, %struct.krping_cb** %4, align 8
  %37 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %43 = bitcast %struct.sockaddr_storage* %42 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %43, %struct.sockaddr_in6** %6, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  store i32 24, i32* %45, align 8
  %46 = load i64, i64* @AF_INET6, align 8
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 2
  %51 = bitcast i32* %50 to i8*
  %52 = load %struct.krping_cb*, %struct.krping_cb** %4, align 8
  %53 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i8* %51, i32 %54, i32 16)
  %56 = load %struct.krping_cb*, %struct.krping_cb** %4, align 8
  %57 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %41, %35
  br label %62

62:                                               ; preds = %61, %14
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
