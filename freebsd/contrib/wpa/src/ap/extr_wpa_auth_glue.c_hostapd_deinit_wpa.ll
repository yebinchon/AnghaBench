; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_deinit_wpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_deinit_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, %struct.TYPE_2__*, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Could not disable PrivacyInvoked for interface %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Could not remove generic information element from interface %s\00", align 1
@ELOOP_ALL_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_deinit_wpa(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %3 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %4 = call i32 @ieee80211_tkip_countermeasures_deinit(%struct.hostapd_data* %3)
  %5 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %6 = call i32 @rsn_preauth_iface_deinit(%struct.hostapd_data* %5)
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @wpa_deinit(i32* %14)
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %11
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %24 = call i64 @hostapd_set_privacy(%struct.hostapd_data* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %26, %22, %11
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %41 = call i64 @hostapd_set_generic_elem(%struct.hostapd_data* %40, i32* bitcast ([1 x i8]* @.str.1 to i32*), i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %43, %39, %34
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %54 = call i32 @ieee802_1x_deinit(%struct.hostapd_data* %53)
  ret void
}

declare dso_local i32 @ieee80211_tkip_countermeasures_deinit(%struct.hostapd_data*) #1

declare dso_local i32 @rsn_preauth_iface_deinit(%struct.hostapd_data*) #1

declare dso_local i32 @wpa_deinit(i32*) #1

declare dso_local i64 @hostapd_set_privacy(%struct.hostapd_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @hostapd_set_generic_elem(%struct.hostapd_data*, i32*, i32) #1

declare dso_local i32 @ieee802_1x_deinit(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
