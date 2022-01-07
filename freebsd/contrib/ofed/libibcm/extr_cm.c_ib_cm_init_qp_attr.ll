; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_init_qp_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_init_qp_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_qp_attr = type { i32 }
%struct.ibv_kern_qp_attr = type { i32 }
%struct.ib_ucm_init_qp_attr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_INIT_QP_ATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_init_qp_attr(%struct.ib_cm_id* %0, %struct.ibv_qp_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cm_id*, align 8
  %6 = alloca %struct.ibv_qp_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ibv_kern_qp_attr*, align 8
  %9 = alloca %struct.ib_ucm_init_qp_attr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %5, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %14 = icmp ne %struct.ibv_qp_attr* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @ERR(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %15
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.ib_ucm_init_qp_attr*, %struct.ib_ucm_init_qp_attr** %9, align 8
  %24 = load %struct.ibv_kern_qp_attr*, %struct.ibv_kern_qp_attr** %8, align 8
  %25 = load i32, i32* @IB_USER_CM_CMD_INIT_QP_ATTR, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @CM_CREATE_MSG_CMD_RESP(i8* %22, %struct.ib_ucm_init_qp_attr* %23, %struct.ibv_kern_qp_attr* %24, i32 %25, i32 %26)
  %28 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %29 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_ucm_init_qp_attr*, %struct.ib_ucm_init_qp_attr** %9, align 8
  %32 = getelementptr inbounds %struct.ib_ucm_init_qp_attr, %struct.ib_ucm_init_qp_attr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_ucm_init_qp_attr*, %struct.ib_ucm_init_qp_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ib_ucm_init_qp_attr, %struct.ib_ucm_init_qp_attr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %39 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @write(i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %21
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ENODATA, align 4
  %54 = call i32 @ERR(i32 %53)
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %54, %52 ], [ %56, %55 ]
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %21
  %60 = load %struct.ibv_kern_qp_attr*, %struct.ibv_kern_qp_attr** %8, align 8
  %61 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_kern_qp_attr* %60, i32 4)
  %62 = load %struct.ibv_kern_qp_attr*, %struct.ibv_kern_qp_attr** %8, align 8
  %63 = getelementptr inbounds %struct.ibv_kern_qp_attr, %struct.ibv_kern_qp_attr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %67 = load %struct.ibv_kern_qp_attr*, %struct.ibv_kern_qp_attr** %8, align 8
  %68 = call i32 @ibv_copy_qp_attr_from_kern(%struct.ibv_qp_attr* %66, %struct.ibv_kern_qp_attr* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %57, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD_RESP(i8*, %struct.ib_ucm_init_qp_attr*, %struct.ibv_kern_qp_attr*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_kern_qp_attr*, i32) #1

declare dso_local i32 @ibv_copy_qp_attr_from_kern(%struct.ibv_qp_attr*, %struct.ibv_kern_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
