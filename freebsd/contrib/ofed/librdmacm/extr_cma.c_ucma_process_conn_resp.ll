; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_process_conn_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_process_conn_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ucma_abi_accept = type { i32 }

@RDMA_MAX_RESP_RES = common dso_local global i32 0, align 4
@RDMA_MAX_INIT_DEPTH = common dso_local global i32 0, align 4
@ACCEPT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*)* @ucma_process_conn_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_process_conn_resp(%struct.cma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cma_id_private*, align 8
  %4 = alloca %struct.ucma_abi_accept, align 4
  %5 = alloca i32, align 4
  store %struct.cma_id_private* %0, %struct.cma_id_private** %3, align 8
  %6 = load %struct.cma_id_private*, %struct.cma_id_private** %3, align 8
  %7 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %6, i32 0, i32 0
  %8 = load i32, i32* @RDMA_MAX_RESP_RES, align 4
  %9 = call i32 @ucma_modify_qp_rtr(%struct.TYPE_6__* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.cma_id_private*, %struct.cma_id_private** %3, align 8
  %15 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %14, i32 0, i32 0
  %16 = load i32, i32* @RDMA_MAX_INIT_DEPTH, align 4
  %17 = call i32 @ucma_modify_qp_rts(%struct.TYPE_6__* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %48

21:                                               ; preds = %13
  %22 = load i32, i32* @ACCEPT, align 4
  %23 = call i32 @CMA_INIT_CMD(%struct.ucma_abi_accept* %4, i32 4, i32 %22)
  %24 = load %struct.cma_id_private*, %struct.cma_id_private** %3, align 8
  %25 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.ucma_abi_accept, %struct.ucma_abi_accept* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cma_id_private*, %struct.cma_id_private** %3, align 8
  %29 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @write(i32 %33, %struct.ucma_abi_accept* %4, i32 4)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENODATA, align 4
  %43 = call i32 @ERR(i32 %42)
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ -1, %44 ]
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %45, %20, %12
  %49 = load %struct.cma_id_private*, %struct.cma_id_private** %3, align 8
  %50 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %49, i32 0, i32 0
  %51 = call i32 @ucma_modify_qp_err(%struct.TYPE_6__* %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ucma_modify_qp_rtr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ucma_modify_qp_rts(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CMA_INIT_CMD(%struct.ucma_abi_accept*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ucma_abi_accept*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ucma_modify_qp_err(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
