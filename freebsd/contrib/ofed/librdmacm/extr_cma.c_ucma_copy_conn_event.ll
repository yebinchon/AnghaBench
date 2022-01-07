; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_copy_conn_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_copy_conn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rdma_conn_param }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64 }
%struct.ucma_abi_conn_param = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cma_event*, %struct.ucma_abi_conn_param*)* @ucma_copy_conn_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_copy_conn_event(%struct.cma_event* %0, %struct.ucma_abi_conn_param* %1) #0 {
  %3 = alloca %struct.cma_event*, align 8
  %4 = alloca %struct.ucma_abi_conn_param*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  store %struct.cma_event* %0, %struct.cma_event** %3, align 8
  store %struct.ucma_abi_conn_param* %1, %struct.ucma_abi_conn_param** %4, align 8
  %6 = load %struct.cma_event*, %struct.cma_event** %3, align 8
  %7 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.rdma_conn_param* %9, %struct.rdma_conn_param** %5, align 8
  %10 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %11 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %13, i32 0, i32 8
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %16 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.cma_event*, %struct.cma_event** %3, align 8
  %21 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %20, i32 0, i32 0
  %22 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %23 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %22, i32 0, i32 7
  store i32* %21, i32** %23, align 8
  %24 = load %struct.cma_event*, %struct.cma_event** %3, align 8
  %25 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %24, i32 0, i32 0
  %26 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %27 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %30 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i32* %25, i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %19, %2
  %34 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %35 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %38 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %40 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %43 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %45 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %48 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %50 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %53 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %55 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %58 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %60 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %63 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ucma_abi_conn_param*, %struct.ucma_abi_conn_param** %4, align 8
  %65 = getelementptr inbounds %struct.ucma_abi_conn_param, %struct.ucma_abi_conn_param* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
