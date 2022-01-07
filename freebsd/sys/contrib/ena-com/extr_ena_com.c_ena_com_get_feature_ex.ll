; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_feature_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_feature_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_admin_get_feat_resp = type { i32 }
%struct.ena_admin_get_feat_cmd = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@ENA_COM_UNSUPPORTED = common dso_local global i32 0, align 4
@ENA_ADMIN_GET_FEATURE = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"memory address set failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to submit get_feature command %d error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i64, i32)* @ena_com_get_feature_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %0, %struct.ena_admin_get_feat_resp* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_com_dev*, align 8
  %9 = alloca %struct.ena_admin_get_feat_resp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ena_com_admin_queue*, align 8
  %15 = alloca %struct.ena_admin_get_feat_cmd, align 8
  %16 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %8, align 8
  store %struct.ena_admin_get_feat_resp* %1, %struct.ena_admin_get_feat_resp** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENA_COM_UNSUPPORTED, align 4
  store i32 %24, i32* %7, align 4
  br label %77

25:                                               ; preds = %6
  %26 = call i32 @memset(%struct.ena_admin_get_feat_cmd* %15, i32 0, i32 40)
  %27 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %28 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %27, i32 0, i32 0
  store %struct.ena_com_admin_queue* %28, %struct.ena_com_admin_queue** %14, align 8
  %29 = load i32, i32* @ENA_ADMIN_GET_FEATURE, align 4
  %30 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i64, i64* @ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 8
  %36 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %41

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %43 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %42, i32* %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = call i32 (i8*, ...) @ena_trc_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %7, align 4
  br label %77

53:                                               ; preds = %41
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %14, align 8
  %64 = bitcast %struct.ena_admin_get_feat_cmd* %15 to %struct.ena_admin_aq_entry*
  %65 = load %struct.ena_admin_get_feat_resp*, %struct.ena_admin_get_feat_resp** %9, align 8
  %66 = bitcast %struct.ena_admin_get_feat_resp* %65 to %struct.ena_admin_acq_entry*
  %67 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %63, %struct.ena_admin_aq_entry* %64, i32 40, %struct.ena_admin_acq_entry* %66, i32 4)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %53
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 (i8*, ...) @ena_trc_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %53
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %50, %21
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_trc_dbg(i8*, i32) #1

declare dso_local i32 @memset(%struct.ena_admin_get_feat_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_mem_addr_set(%struct.ena_com_dev*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, ...) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
