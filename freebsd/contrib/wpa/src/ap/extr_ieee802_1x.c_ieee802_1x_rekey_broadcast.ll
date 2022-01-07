; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_rekey_broadcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_rekey_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__*, %struct.eapol_authenticator* }
%struct.TYPE_2__ = type { i32 }
%struct.eapol_authenticator = type { i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not generate random WEP key\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IEEE 802.1X: New default WEP key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*)* @ieee802_1x_rekey_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_rekey_broadcast(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.eapol_authenticator*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %5 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %5, i32 0, i32 1
  %7 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %6, align 8
  store %struct.eapol_authenticator* %7, %struct.eapol_authenticator** %4, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %17 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @os_free(i32* %18)
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @os_malloc(i32 %24)
  %26 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %27 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %29 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %15
  %33 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %34 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @random_get_bytes(i32* %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32, %15
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %47 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @os_free(i32* %48)
  %50 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %51 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  store i32 -1, i32* %2, align 4
  br label %63

52:                                               ; preds = %32
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %4, align 8
  %55 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %58 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wpa_hexdump_key(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %56, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %52, %43, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
