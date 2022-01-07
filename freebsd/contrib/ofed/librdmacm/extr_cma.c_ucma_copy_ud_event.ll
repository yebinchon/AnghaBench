; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_copy_ud_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_copy_ud_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { i32, i32, i32, i32*, i64 }
%struct.ucma_abi_ud_param = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cma_event*, %struct.ucma_abi_ud_param*)* @ucma_copy_ud_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_copy_ud_event(%struct.cma_event* %0, %struct.ucma_abi_ud_param* %1) #0 {
  %3 = alloca %struct.cma_event*, align 8
  %4 = alloca %struct.ucma_abi_ud_param*, align 8
  %5 = alloca %struct.rdma_ud_param*, align 8
  store %struct.cma_event* %0, %struct.cma_event** %3, align 8
  store %struct.ucma_abi_ud_param* %1, %struct.ucma_abi_ud_param** %4, align 8
  %6 = load %struct.cma_event*, %struct.cma_event** %3, align 8
  %7 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.rdma_ud_param* %9, %struct.rdma_ud_param** %5, align 8
  %10 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %11 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rdma_ud_param*, %struct.rdma_ud_param** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_ud_param, %struct.rdma_ud_param* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %16 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.cma_event*, %struct.cma_event** %3, align 8
  %21 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %20, i32 0, i32 0
  %22 = load %struct.rdma_ud_param*, %struct.rdma_ud_param** %5, align 8
  %23 = getelementptr inbounds %struct.rdma_ud_param, %struct.rdma_ud_param* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.cma_event*, %struct.cma_event** %3, align 8
  %25 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %24, i32 0, i32 0
  %26 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %27 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %30 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i32* %25, i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %19, %2
  %34 = load %struct.rdma_ud_param*, %struct.rdma_ud_param** %5, align 8
  %35 = getelementptr inbounds %struct.rdma_ud_param, %struct.rdma_ud_param* %34, i32 0, i32 2
  %36 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %37 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %36, i32 0, i32 2
  %38 = call i32 @ibv_copy_ah_attr_from_kern(i32* %35, i32* %37)
  %39 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %40 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rdma_ud_param*, %struct.rdma_ud_param** %5, align 8
  %43 = getelementptr inbounds %struct.rdma_ud_param, %struct.rdma_ud_param* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ucma_abi_ud_param*, %struct.ucma_abi_ud_param** %4, align 8
  %45 = getelementptr inbounds %struct.ucma_abi_ud_param, %struct.ucma_abi_ud_param* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rdma_ud_param*, %struct.rdma_ud_param** %5, align 8
  %48 = getelementptr inbounds %struct.rdma_ud_param, %struct.rdma_ud_param* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @ibv_copy_ah_attr_from_kern(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
