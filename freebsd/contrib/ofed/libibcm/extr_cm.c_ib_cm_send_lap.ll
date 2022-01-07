; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_lap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_sa_path_rec = type { i32 }
%struct.ib_user_path_rec = type { i32 }
%struct.ib_ucm_lap = type { i64, i64, i64, i32 }

@IB_USER_CM_CMD_SEND_LAP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_send_lap(%struct.ib_cm_id* %0, %struct.ibv_sa_path_rec* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.ibv_sa_path_rec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ib_user_path_rec, align 4
  %11 = alloca %struct.ib_ucm_lap*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %6, align 8
  store %struct.ibv_sa_path_rec* %1, %struct.ibv_sa_path_rec** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = load %struct.ib_ucm_lap*, %struct.ib_ucm_lap** %11, align 8
  %17 = load i32, i32* @IB_USER_CM_CMD_SEND_LAP, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call i32 @CM_CREATE_MSG_CMD(i8* %15, %struct.ib_ucm_lap* %16, i32 %17, i32 %18)
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %21 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_ucm_lap*, %struct.ib_ucm_lap** %11, align 8
  %24 = getelementptr inbounds %struct.ib_ucm_lap, %struct.ib_ucm_lap* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ibv_sa_path_rec*, %struct.ibv_sa_path_rec** %7, align 8
  %26 = call i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec* %10, %struct.ibv_sa_path_rec* %25)
  %27 = ptrtoint %struct.ib_user_path_rec* %10 to i64
  %28 = load %struct.ib_ucm_lap*, %struct.ib_ucm_lap** %11, align 8
  %29 = getelementptr inbounds %struct.ib_ucm_lap, %struct.ib_ucm_lap* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.ib_ucm_lap*, %struct.ib_ucm_lap** %11, align 8
  %39 = getelementptr inbounds %struct.ib_ucm_lap, %struct.ib_ucm_lap* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ib_ucm_lap*, %struct.ib_ucm_lap** %11, align 8
  %42 = getelementptr inbounds %struct.ib_ucm_lap, %struct.ib_ucm_lap* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %32, %4
  %44 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %45 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @write(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @ENODATA, align 4
  %60 = call i32 @ERR(i32 %59)
  br label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ -1, %61 ]
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_lap*, i32, i32) #1

declare dso_local i32 @ibv_copy_path_rec_to_kern(%struct.ib_user_path_rec*, %struct.ibv_sa_path_rec*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
