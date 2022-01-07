; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_set_af_ib_support.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_set_af_ib_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.sockaddr_ib = type { i8*, i8*, i32 }
%struct.sockaddr = type { i32 }

@RDMA_PS_IB = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i32 0, align 4
@RDMA_IB_IP_PS_TCP = common dso_local global i32 0, align 4
@RDMA_IB_IP_PS_MASK = common dso_local global i32 0, align 4
@af_ib_support = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ucma_set_af_ib_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_set_af_ib_support() #0 {
  %1 = alloca %struct.rdma_cm_id*, align 8
  %2 = alloca %struct.sockaddr_ib, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @RDMA_PS_IB, align 4
  %5 = call i32 @rdma_create_id(i32* null, %struct.rdma_cm_id** %1, i32* null, i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %28

9:                                                ; preds = %0
  %10 = call i32 @memset(%struct.sockaddr_ib* %2, i32 0, i32 24)
  %11 = load i32, i32* @AF_IB, align 4
  %12 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @RDMA_IB_IP_PS_TCP, align 4
  %14 = call i8* @htobe64(i32 %13)
  %15 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %2, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @RDMA_IB_IP_PS_MASK, align 4
  %17 = call i8* @htobe64(i32 %16)
  %18 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %2, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  store i32 1, i32* @af_ib_support, align 4
  %19 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %1, align 8
  %20 = bitcast %struct.sockaddr_ib* %2 to %struct.sockaddr*
  %21 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %19, %struct.sockaddr* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @af_ib_support, align 4
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %1, align 8
  %27 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %26)
  br label %28

28:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @rdma_create_id(i32*, %struct.rdma_cm_id**, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_ib*, i32, i32) #1

declare dso_local i8* @htobe64(i32) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
