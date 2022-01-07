; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_set_ib_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_set_ib_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_addrinfo = type { i64, i32, i32*, i8*, %struct.TYPE_4__*, i8*, i32, i32 }
%struct.sockaddr = type { i32 }

@RAI_ROUTEONLY = common dso_local global i32 0, align 4
@RDMA_OPTION_IB = common dso_local global i32 0, align 4
@RDMA_OPTION_IB_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @ucma_set_ib_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_set_ib_route(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_addrinfo, align 8
  %5 = alloca %struct.rdma_addrinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %7 = call i32 @memset(%struct.rdma_addrinfo* %4, i32 0, i32 56)
  %8 = load i32, i32* @RAI_ROUTEONLY, align 4
  %9 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %4, i32 0, i32 7
  store i32 %8, i32* %9, align 4
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %4, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_4__* %20 to %struct.sockaddr*
  %22 = call i8* @ucma_addrlen(%struct.sockaddr* %21)
  %23 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %4, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  %24 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %25 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %4, i32 0, i32 4
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.sockaddr*
  %34 = call i8* @ucma_addrlen(%struct.sockaddr* %33)
  %35 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %4, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %4, i32 0, i32 2
  store i32* %39, i32** %40, align 8
  %41 = call i32 @rdma_getaddrinfo(i32* null, i32* null, %struct.rdma_addrinfo* %4, %struct.rdma_addrinfo** %5)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %67

46:                                               ; preds = %1
  %47 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %48 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %53 = load i32, i32* @RDMA_OPTION_IB, align 4
  %54 = load i32, i32* @RDMA_OPTION_IB_PATH, align 4
  %55 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %56 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %59 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @rdma_set_option(%struct.rdma_cm_id* %52, i32 %53, i32 %54, i32 %57, i64 %60)
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %46
  store i32 -1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %65 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %44
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.rdma_addrinfo*, i32, i32) #1

declare dso_local i8* @ucma_addrlen(%struct.sockaddr*) #1

declare dso_local i32 @rdma_getaddrinfo(i32*, i32*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @rdma_set_option(%struct.rdma_cm_id*, i32, i32, i32, i64) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
