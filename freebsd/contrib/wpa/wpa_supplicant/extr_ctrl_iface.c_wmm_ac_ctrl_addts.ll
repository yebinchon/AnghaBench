; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wmm_ac_ctrl_addts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wmm_ac_ctrl_addts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmm_ac_ts_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpa_supplicant = type { i32 }

@__const.wmm_ac_ctrl_addts.params = private unnamed_addr constant %struct.wmm_ac_ts_setup_params { i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tsid=%i\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"up=%i\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nominal_msdu_size=%i\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mean_data_rate=%i\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"min_phy_rate=%i\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sba=%i\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"downlink\00", align 1
@WMM_TSPEC_DIRECTION_DOWNLINK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"uplink\00", align 1
@WMM_TSPEC_DIRECTION_UPLINK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"bidi\00", align 1
@WMM_TSPEC_DIRECTION_BI_DIRECTIONAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"fixed_nominal_msdu\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"CTRL: Invalid WMM_AC_ADDTS parameter: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wmm_ac_ctrl_addts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmm_ac_ctrl_addts(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wmm_ac_ts_setup_params, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = bitcast %struct.wmm_ac_ts_setup_params* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.wmm_ac_ts_setup_params* @__const.wmm_ac_ctrl_addts.params to i8*), i64 32, i1 false)
  br label %10

10:                                               ; preds = %79, %44, %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @str_token(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 0
  %17 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %44, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 2
  %22 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 3
  %27 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 4
  %32 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 5
  %37 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 6
  %42 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34, %29, %24, %19, %14
  br label %10

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @os_strcasecmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @WMM_TSPEC_DIRECTION_DOWNLINK, align 4
  %51 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  br label %79

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @os_strcasecmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @WMM_TSPEC_DIRECTION_UPLINK, align 4
  %58 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  br label %78

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @os_strcasecmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @WMM_TSPEC_DIRECTION_BI_DIRECTIONAL, align 4
  %65 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  br label %77

66:                                               ; preds = %59
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @os_strcasecmp(i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.wmm_ac_ts_setup_params, %struct.wmm_ac_ts_setup_params* %8, i32 0, i32 7
  store i32 1, i32* %71, align 4
  br label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %3, align 4
  br label %83

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %49
  br label %10

80:                                               ; preds = %10
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %82 = call i32 @wpas_wmm_ac_addts(%struct.wpa_supplicant* %81, %struct.wmm_ac_ts_setup_params* %8)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @str_token(i8*, i8*, i8**) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i64 @os_strcasecmp(i8*, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #2

declare dso_local i32 @wpas_wmm_ac_addts(%struct.wpa_supplicant*, %struct.wmm_ac_ts_setup_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
