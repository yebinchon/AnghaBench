; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucm_notify = type { i32, i32 }

@abi_ver = common dso_local global i32 0, align 4
@IBV_EVENT_COMM_EST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_NOTIFY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_notify(%struct.ib_cm_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ucm_notify*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @abi_ver, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IBV_EVENT_COMM_EST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %18 = call i32 @cm_establish(%struct.ib_cm_id* %17)
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @ERR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.ib_ucm_notify*, %struct.ib_ucm_notify** %6, align 8
  %25 = load i32, i32* @IB_USER_CM_CMD_NOTIFY, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @CM_CREATE_MSG_CMD(i8* %23, %struct.ib_ucm_notify* %24, i32 %25, i32 %26)
  %28 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %29 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_ucm_notify*, %struct.ib_ucm_notify** %6, align 8
  %32 = getelementptr inbounds %struct.ib_ucm_notify, %struct.ib_ucm_notify* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ib_ucm_notify*, %struct.ib_ucm_notify** %6, align 8
  %35 = getelementptr inbounds %struct.ib_ucm_notify, %struct.ib_ucm_notify* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %37 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @write(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %22
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @ENODATA, align 4
  %52 = call i32 @ERR(i32 %51)
  br label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ -1, %53 ]
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %54, %19, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @cm_establish(%struct.ib_cm_id*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_notify*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
