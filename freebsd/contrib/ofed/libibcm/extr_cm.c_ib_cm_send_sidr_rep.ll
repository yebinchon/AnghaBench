; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_sidr_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_send_sidr_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_cm_sidr_rep_param = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.ib_ucm_sidr_rep = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_USER_CM_CMD_SEND_SIDR_REP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cm_send_sidr_rep(%struct.ib_cm_id* %0, %struct.ib_cm_sidr_rep_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_sidr_rep_param*, align 8
  %6 = alloca %struct.ib_ucm_sidr_rep*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_sidr_rep_param* %1, %struct.ib_cm_sidr_rep_param** %5, align 8
  %10 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %11 = icmp ne %struct.ib_cm_sidr_rep_param* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = call i32 @ERR(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %18 = load i32, i32* @IB_USER_CM_CMD_SEND_SIDR_REP, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @CM_CREATE_MSG_CMD(i8* %16, %struct.ib_ucm_sidr_rep* %17, i32 %18, i32 %19)
  %21 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %22 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %25 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %27 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %30 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %32 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %35 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %37 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %40 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %42 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %15
  %46 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %47 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %52 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %55 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %57 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %60 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %45, %15
  %62 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %63 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %68 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %73 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %76 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ib_cm_sidr_rep_param*, %struct.ib_cm_sidr_rep_param** %5, align 8
  %78 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ib_ucm_sidr_rep*, %struct.ib_ucm_sidr_rep** %6, align 8
  %81 = getelementptr inbounds %struct.ib_ucm_sidr_rep, %struct.ib_ucm_sidr_rep* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %71, %66, %61
  %83 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %84 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @write(i32 %87, i8* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ENODATA, align 4
  %99 = call i32 @ERR(i32 %98)
  br label %101

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i32 [ %99, %97 ], [ -1, %100 ]
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %101, %12
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_sidr_rep*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
