; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_update_sta_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_update_sta_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32, %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { i64, i32* }
%struct.radius_msg = type { i32 }

@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"old identity '%s' updated with User-Name from Access-Accept '%s'\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, %struct.radius_msg*)* @ieee802_1x_update_sta_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_update_sta_identity(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.radius_msg* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.radius_msg* %2, %struct.radius_msg** %6, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 1
  %13 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %12, align 8
  store %struct.eapol_state_machine* %13, %struct.eapol_state_machine** %10, align 8
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %15 = icmp eq %struct.eapol_state_machine* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %19 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %20 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %18, i32 %19, i32** %7, i64* %9, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %63

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @dup_binstr(i32* %24, i64 %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %63

31:                                               ; preds = %23
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %37 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %38 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %39 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %44 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to i8*
  br label %48

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i8* [ %46, %42 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %47 ]
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @hostapd_logger(%struct.hostapd_data* %32, i32 %35, i32 %36, i32 %37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %51)
  %53 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %54 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @os_free(i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %59 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %10, align 8
  %62 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %48, %30, %22, %16
  ret void
}

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i32, i32**, i64*, i32*) #1

declare dso_local i64 @dup_binstr(i32*, i64) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
