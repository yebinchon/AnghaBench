; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_attr_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_attr_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_cm_attr_param = type { i32, i32, i32, i32 }
%struct.ib_ucm_attr_id_resp = type { i32, i32, i32, i32 }
%struct.ib_ucm_attr_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_ATTR_ID = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_attr_id(%struct.ib_cm_id* %0, %struct.ib_cm_attr_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_attr_param*, align 8
  %6 = alloca %struct.ib_ucm_attr_id_resp*, align 8
  %7 = alloca %struct.ib_ucm_attr_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_attr_param* %1, %struct.ib_cm_attr_param** %5, align 8
  %11 = load %struct.ib_cm_attr_param*, %struct.ib_cm_attr_param** %5, align 8
  %12 = icmp ne %struct.ib_cm_attr_param* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = call i32 @ERR(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.ib_ucm_attr_id*, %struct.ib_ucm_attr_id** %7, align 8
  %19 = load %struct.ib_ucm_attr_id_resp*, %struct.ib_ucm_attr_id_resp** %6, align 8
  %20 = load i32, i32* @IB_USER_CM_CMD_ATTR_ID, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @CM_CREATE_MSG_CMD_RESP(i8* %17, %struct.ib_ucm_attr_id* %18, %struct.ib_ucm_attr_id_resp* %19, i32 %20, i32 %21)
  %23 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %24 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ib_ucm_attr_id*, %struct.ib_ucm_attr_id** %7, align 8
  %27 = getelementptr inbounds %struct.ib_ucm_attr_id, %struct.ib_ucm_attr_id* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %29 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @write(i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %16
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENODATA, align 4
  %44 = call i32 @ERR(i32 %43)
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ -1, %45 ]
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %16
  %49 = load %struct.ib_ucm_attr_id_resp*, %struct.ib_ucm_attr_id_resp** %6, align 8
  %50 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_ucm_attr_id_resp* %49, i32 16)
  %51 = load %struct.ib_ucm_attr_id_resp*, %struct.ib_ucm_attr_id_resp** %6, align 8
  %52 = getelementptr inbounds %struct.ib_ucm_attr_id_resp, %struct.ib_ucm_attr_id_resp* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_cm_attr_param*, %struct.ib_cm_attr_param** %5, align 8
  %55 = getelementptr inbounds %struct.ib_cm_attr_param, %struct.ib_cm_attr_param* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ib_ucm_attr_id_resp*, %struct.ib_ucm_attr_id_resp** %6, align 8
  %57 = getelementptr inbounds %struct.ib_ucm_attr_id_resp, %struct.ib_ucm_attr_id_resp* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_cm_attr_param*, %struct.ib_cm_attr_param** %5, align 8
  %60 = getelementptr inbounds %struct.ib_cm_attr_param, %struct.ib_cm_attr_param* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ib_ucm_attr_id_resp*, %struct.ib_ucm_attr_id_resp** %6, align 8
  %62 = getelementptr inbounds %struct.ib_ucm_attr_id_resp, %struct.ib_ucm_attr_id_resp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_cm_attr_param*, %struct.ib_cm_attr_param** %5, align 8
  %65 = getelementptr inbounds %struct.ib_cm_attr_param, %struct.ib_cm_attr_param* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ib_ucm_attr_id_resp*, %struct.ib_ucm_attr_id_resp** %6, align 8
  %67 = getelementptr inbounds %struct.ib_ucm_attr_id_resp, %struct.ib_ucm_attr_id_resp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_cm_attr_param*, %struct.ib_cm_attr_param** %5, align 8
  %70 = getelementptr inbounds %struct.ib_cm_attr_param, %struct.ib_cm_attr_param* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %48, %46, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD_RESP(i8*, %struct.ib_ucm_attr_id*, %struct.ib_ucm_attr_id_resp*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ib_ucm_attr_id_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
