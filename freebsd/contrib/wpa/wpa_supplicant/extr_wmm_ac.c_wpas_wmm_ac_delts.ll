; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wpas_wmm_ac_delts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wpas_wmm_ac_delts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wmm_tspec_element***, i32 }
%struct.wmm_tspec_element = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"WMM AC: Failed to delete TS, WMM AC is disabled\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"WMM AC: TS does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wmm_ac_delts(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmm_tspec_element, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @wmm_ac_find_tsid(%struct.wpa_supplicant* %17, i32 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %48

25:                                               ; preds = %16
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 1
  %28 = load %struct.wmm_tspec_element***, %struct.wmm_tspec_element**** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.wmm_tspec_element**, %struct.wmm_tspec_element*** %28, i64 %30
  %32 = load %struct.wmm_tspec_element**, %struct.wmm_tspec_element*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %32, i64 %34
  %36 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %35, align 8
  %37 = bitcast %struct.wmm_tspec_element* %6 to i8*
  %38 = bitcast %struct.wmm_tspec_element* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @wmm_ac_del_ts_idx(%struct.wpa_supplicant* %39, i32 %40, i32 %41)
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wmm_ac_send_delts(%struct.wpa_supplicant* %43, %struct.wmm_tspec_element* %6, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %25, %22, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wmm_ac_find_tsid(%struct.wpa_supplicant*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wmm_ac_del_ts_idx(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wmm_ac_send_delts(%struct.wpa_supplicant*, %struct.wmm_tspec_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
