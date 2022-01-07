; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_find_assoc_pmkid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_find_assoc_pmkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32 }
%struct.wpa_ie_data = type { i64, i32* }

@PMKID_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"RSN: PMKID from assoc IE %sfound from PMKSA cache\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpa_find_assoc_pmkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_find_assoc_pmkid(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_ie_data, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  store i32 -1, i32* %4, align 4
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @wpa_sm_parse_own_wpa_ie(i32 %8, %struct.wpa_ie_data* %3)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %3, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %52

16:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %3, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @PMKID_LEN, align 8
  %30 = mul i64 %28, %29
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 @pmksa_cache_set_current(i32 %25, i32* %31, i32* null, i32* null, i32 0, i32* null, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @eapol_sm_notify_pmkid_attempt(i32 %38)
  br label %44

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %17

44:                                               ; preds = %35, %17
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @wpa_dbg(%struct.wpa_supplicant* %45, i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %44, %15
  ret void
}

declare dso_local i64 @wpa_sm_parse_own_wpa_ie(i32, %struct.wpa_ie_data*) #1

declare dso_local i32 @pmksa_cache_set_current(i32, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @eapol_sm_notify_pmkid_attempt(i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
