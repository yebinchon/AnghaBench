; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_rsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_gtk_data = type { i32, i32, i32, i32, i32, i32 }
%struct.wpa_eapol_ie_parse = type { i32*, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RSN: msg 1/2 key data\00", align 1
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"WPA: GTK IE in unencrypted key data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"WPA: No GTK IE in Group Key msg 1/2\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"RSN: received GTK in group key handshake\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"RSN: Too long GTK in GTK IE (len=%lu)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"RSN: Failed to configure IGTK\00", align 1
@ocv_errorstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i32*, i64, i32, %struct.wpa_gtk_data*)* @wpa_supplicant_process_1_of_2_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_process_1_of_2_rsn(%struct.wpa_sm* %0, i32* %1, i64 %2, i32 %3, %struct.wpa_gtk_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpa_gtk_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpa_eapol_ie_parse, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wpa_gtk_data* %4, %struct.wpa_gtk_data** %11, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @wpa_hexdump_key(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %15, i64 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @wpa_supplicant_parse_ies(i32* %18, i64 %19, %struct.wpa_eapol_ie_parse* %13)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %142

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MSG_WARNING, align 4
  %39 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %37, i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %142

40:                                               ; preds = %27, %23
  %41 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %46 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %49, i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %142

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 2
  %56 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %57 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 %55, i32* %12, align 4
  %58 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %59 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %60 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %63 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %67 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %66, i32 0, i32 5
  %68 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %69 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %68, i32 0, i32 4
  %70 = call i64 @wpa_supplicant_check_group_cipher(%struct.wpa_sm* %58, i32 %61, i32 %64, i32 %65, i32* %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %142

73:                                               ; preds = %52
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = call i32 @wpa_hexdump_key(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32* %76, i64 %79)
  %81 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 3
  %86 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %87 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BIT(i32 2)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm* %88, i32 %98)
  %100 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %101 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = icmp ugt i64 %105, 4
  br i1 %106, label %107, label %119

107:                                              ; preds = %73
  %108 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %109 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MSG_INFO, align 4
  %114 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, 2
  %118 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %112, i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %117)
  store i32 -1, i32* %6, align 4
  br label %142

119:                                              ; preds = %73
  %120 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %121 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 2
  %129 = call i32 @os_memcpy(i32 %122, i32* %125, i32 %128)
  %130 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %131 = call i64 @ieee80211w_set_keys(%struct.wpa_sm* %130, %struct.wpa_eapol_ie_parse* %13)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %119
  %134 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %135 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MSG_INFO, align 4
  %140 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %138, i32 %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %133, %119
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %107, %72, %44, %32, %22
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @wpa_supplicant_parse_ies(i32*, i64, %struct.wpa_eapol_ie_parse*) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, ...) #1

declare dso_local i64 @wpa_supplicant_check_group_cipher(%struct.wpa_sm*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @ieee80211w_set_keys(%struct.wpa_sm*, %struct.wpa_eapol_ie_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
