; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_mra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_mra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucm_mra = type { i64, i8*, i8*, i32 }

@IB_USER_CM_CMD_SEND_MRA = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_send_mra(%struct.ib_cm_id* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ib_ucm_mra*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load %struct.ib_ucm_mra*, %struct.ib_ucm_mra** %10, align 8
  %16 = load i32, i32* @IB_USER_CM_CMD_SEND_MRA, align 4
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @CM_CREATE_MSG_CMD(i8* %14, %struct.ib_ucm_mra* %15, i32 %16, i32 %17)
  %19 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %20 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ib_ucm_mra*, %struct.ib_ucm_mra** %10, align 8
  %23 = getelementptr inbounds %struct.ib_ucm_mra, %struct.ib_ucm_mra* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.ib_ucm_mra*, %struct.ib_ucm_mra** %10, align 8
  %26 = getelementptr inbounds %struct.ib_ucm_mra, %struct.ib_ucm_mra* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.ib_ucm_mra*, %struct.ib_ucm_mra** %10, align 8
  %36 = getelementptr inbounds %struct.ib_ucm_mra, %struct.ib_ucm_mra* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.ib_ucm_mra*, %struct.ib_ucm_mra** %10, align 8
  %39 = getelementptr inbounds %struct.ib_ucm_mra, %struct.ib_ucm_mra* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %32, %29, %4
  %41 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %42 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @write(i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @ENODATA, align 4
  %57 = call i32 @ERR(i32 %56)
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %57, %55 ], [ %59, %58 ]
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_mra*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
