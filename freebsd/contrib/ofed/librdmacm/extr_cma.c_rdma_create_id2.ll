; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_id2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_id2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_event_channel = type { i32 }
%struct.rdma_cm_id = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucma_abi_create_id_resp = type { i32 }
%struct.ucma_abi_create_id = type { i64, i32, i32 }
%struct.cma_id_private = type { %struct.rdma_cm_id, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CREATE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_event_channel*, %struct.rdma_cm_id**, i8*, i32, i32)* @rdma_create_id2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_create_id2(%struct.rdma_event_channel* %0, %struct.rdma_cm_id** %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdma_event_channel*, align 8
  %8 = alloca %struct.rdma_cm_id**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ucma_abi_create_id_resp, align 4
  %13 = alloca %struct.ucma_abi_create_id, align 8
  %14 = alloca %struct.cma_id_private*, align 8
  %15 = alloca i32, align 4
  store %struct.rdma_event_channel* %0, %struct.rdma_event_channel** %7, align 8
  store %struct.rdma_cm_id** %1, %struct.rdma_cm_id*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = call i32 (...) @ucma_init()
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %15, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %15, align 4
  store i32 %20, i32* %6, align 4
  br label %68

21:                                               ; preds = %5
  %22 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.cma_id_private* @ucma_alloc_id(%struct.rdma_event_channel* %22, i8* %23, i32 %24, i32 %25)
  store %struct.cma_id_private* %26, %struct.cma_id_private** %14, align 8
  %27 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %28 = icmp ne %struct.cma_id_private* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @ERR(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %68

32:                                               ; preds = %21
  %33 = load i32, i32* @CREATE_ID, align 4
  %34 = call i32 @CMA_INIT_CMD_RESP(%struct.ucma_abi_create_id* %13, i32 16, i32 %33, %struct.ucma_abi_create_id_resp* %12, i32 4)
  %35 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %36 = ptrtoint %struct.cma_id_private* %35 to i64
  %37 = getelementptr inbounds %struct.ucma_abi_create_id, %struct.ucma_abi_create_id* %13, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.ucma_abi_create_id, %struct.ucma_abi_create_id* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.ucma_abi_create_id, %struct.ucma_abi_create_id* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %43 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @write(i32 %47, %struct.ucma_abi_create_id* %13, i32 16)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 16
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %64

53:                                               ; preds = %32
  %54 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ucma_abi_create_id_resp* %12, i32 4)
  %55 = getelementptr inbounds %struct.ucma_abi_create_id_resp, %struct.ucma_abi_create_id_resp* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %58 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %60 = call i32 @ucma_insert_id(%struct.cma_id_private* %59)
  %61 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %62 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %61, i32 0, i32 0
  %63 = load %struct.rdma_cm_id**, %struct.rdma_cm_id*** %8, align 8
  store %struct.rdma_cm_id* %62, %struct.rdma_cm_id** %63, align 8
  store i32 0, i32* %6, align 4
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.cma_id_private*, %struct.cma_id_private** %14, align 8
  %66 = call i32 @ucma_free_id(%struct.cma_id_private* %65)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %53, %29, %19
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @ucma_init(...) #1

declare dso_local %struct.cma_id_private* @ucma_alloc_id(%struct.rdma_event_channel*, i8*, i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CMA_INIT_CMD_RESP(%struct.ucma_abi_create_id*, i32, i32, %struct.ucma_abi_create_id_resp*, i32) #1

declare dso_local i32 @write(i32, %struct.ucma_abi_create_id*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ucma_abi_create_id_resp*, i32) #1

declare dso_local i32 @ucma_insert_id(%struct.cma_id_private*) #1

declare dso_local i32 @ucma_free_id(%struct.cma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
