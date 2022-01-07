; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_create_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_create_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_device = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.ib_ucm_create_id_resp = type { i32 }
%struct.ib_ucm_create_id = type { i64 }
%struct.cm_id_private = type { %struct.ib_cm_id }

@ENOMEM = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_CREATE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_create_id(%struct.ib_cm_device* %0, %struct.ib_cm_id** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cm_device*, align 8
  %6 = alloca %struct.ib_cm_id**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_ucm_create_id_resp*, align 8
  %9 = alloca %struct.ib_ucm_create_id*, align 8
  %10 = alloca %struct.cm_id_private*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cm_device* %0, %struct.ib_cm_device** %5, align 8
  store %struct.ib_cm_id** %1, %struct.ib_cm_id*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.ib_cm_device*, %struct.ib_cm_device** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.cm_id_private* @ib_cm_alloc_id(%struct.ib_cm_device* %14, i8* %15)
  store %struct.cm_id_private* %16, %struct.cm_id_private** %10, align 8
  %17 = load %struct.cm_id_private*, %struct.cm_id_private** %10, align 8
  %18 = icmp ne %struct.cm_id_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @ERR(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.ib_ucm_create_id*, %struct.ib_ucm_create_id** %9, align 8
  %25 = load %struct.ib_ucm_create_id_resp*, %struct.ib_ucm_create_id_resp** %8, align 8
  %26 = load i32, i32* @IB_USER_CM_CMD_CREATE_ID, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @CM_CREATE_MSG_CMD_RESP(i8* %23, %struct.ib_ucm_create_id* %24, %struct.ib_ucm_create_id_resp* %25, i32 %26, i32 %27)
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %10, align 8
  %30 = ptrtoint %struct.cm_id_private* %29 to i64
  %31 = load %struct.ib_ucm_create_id*, %struct.ib_ucm_create_id** %9, align 8
  %32 = getelementptr inbounds %struct.ib_ucm_create_id, %struct.ib_ucm_create_id* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ib_cm_device*, %struct.ib_cm_device** %5, align 8
  %34 = getelementptr inbounds %struct.ib_cm_device, %struct.ib_cm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @write(i32 %35, i8* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %55

43:                                               ; preds = %22
  %44 = load %struct.ib_ucm_create_id_resp*, %struct.ib_ucm_create_id_resp** %8, align 8
  %45 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_ucm_create_id_resp* %44, i32 4)
  %46 = load %struct.ib_ucm_create_id_resp*, %struct.ib_ucm_create_id_resp** %8, align 8
  %47 = getelementptr inbounds %struct.ib_ucm_create_id_resp, %struct.ib_ucm_create_id_resp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cm_id_private*, %struct.cm_id_private** %10, align 8
  %50 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.cm_id_private*, %struct.cm_id_private** %10, align 8
  %53 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %52, i32 0, i32 0
  %54 = load %struct.ib_cm_id**, %struct.ib_cm_id*** %6, align 8
  store %struct.ib_cm_id* %53, %struct.ib_cm_id** %54, align 8
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.cm_id_private*, %struct.cm_id_private** %10, align 8
  %57 = call i32 @ib_cm_free_id(%struct.cm_id_private* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %43, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.cm_id_private* @ib_cm_alloc_id(%struct.ib_cm_device*, i8*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD_RESP(i8*, %struct.ib_ucm_create_id*, %struct.ib_ucm_create_id_resp*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_ucm_create_id_resp*, i32) #1

declare dso_local i32 @ib_cm_free_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
