; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_rekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.eapol_authenticator* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.eapol_authenticator = type { i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IEEE 802.1X: New default WEP key index %d\00", align 1
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to generate a new broadcast key\00", align 1
@WPA_ALG_WEP = common dso_local global i32 0, align 4
@broadcast_ether_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to configure a new broadcast key\00", align 1
@ieee802_1x_sta_key_available = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @ieee802_1x_rekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_rekey(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.eapol_authenticator*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hostapd_data*
  store %struct.hostapd_data* %8, %struct.hostapd_data** %5, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 1
  %11 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  store %struct.eapol_authenticator* %11, %struct.eapol_authenticator** %6, align 8
  %12 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %13 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 3
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %18 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %26 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %29 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %35 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %39 = call i64 @ieee802_1x_rekey_broadcast(%struct.hostapd_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %43 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %44 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %45 = call i32 @hostapd_logger(%struct.hostapd_data* %42, i32* null, i32 %43, i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %47 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @os_free(i32* %48)
  %50 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %51 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %103

52:                                               ; preds = %32
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %59 = load i32, i32* @WPA_ALG_WEP, align 4
  %60 = load i32, i32* @broadcast_ether_addr, align 4
  %61 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %62 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %65 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %68 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @hostapd_drv_set_key(i32 %57, %struct.hostapd_data* %58, i32 %59, i32 %60, i32 %63, i32 1, i32* null, i32 0, i32* %66, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %52
  %75 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %76 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %77 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %78 = call i32 @hostapd_logger(%struct.hostapd_data* %75, i32* null, i32 %76, i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %80 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @os_free(i32* %81)
  %83 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  %84 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  br label %103

85:                                               ; preds = %52
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %87 = load i32, i32* @ieee802_1x_sta_key_available, align 4
  %88 = call i32 @ap_for_each_sta(%struct.hostapd_data* %86, i32 %87, i32* null)
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %90 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %97 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %102 = call i32 @eloop_register_timeout(i64 %100, i32 0, void (i8*, i8*)* @ieee802_1x_rekey, %struct.hostapd_data* %101, i32* null)
  br label %103

103:                                              ; preds = %41, %74, %95, %85
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @ieee802_1x_rekey_broadcast(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32*, i32, i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @hostapd_drv_set_key(i32, %struct.hostapd_data*, i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ap_for_each_sta(%struct.hostapd_data*, i32, i32*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, void (i8*, i8*)*, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
