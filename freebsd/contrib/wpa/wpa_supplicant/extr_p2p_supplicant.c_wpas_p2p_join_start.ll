; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_join_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_join_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i64, i32*, i32, i32*, i32, %struct.TYPE_2__*, %struct.wpa_supplicant*, i32, i32* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }
%struct.p2p_go_neg_results = type { i32, i64, i32*, i32, i32*, i32* }
%struct.wpa_bss = type { i32, i64, i32* }

@ETH_ALEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"P2P: Join target GO operating frequency from BSS table: %d MHz (SSID %s)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"P2P: Join target GO (SSID %s)\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"P2P: Cancel remain-on-channel prior to starting client\00", align 1
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32*, i64)* @wpas_p2p_join_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_join_start(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca %struct.p2p_go_neg_results, align 8
  %12 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %14 = call %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant* %13, i32 0, i32 0)
  store %struct.wpa_supplicant* %14, %struct.wpa_supplicant** %10, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %16 = icmp eq %struct.wpa_supplicant* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %194

18:                                               ; preds = %4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %21 = icmp ne %struct.wpa_supplicant* %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 10
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 10
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @os_memcpy(i32* %25, i32* %28, i64 8)
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %22, %18
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %38, align 8
  %40 = icmp eq %struct.wpa_supplicant* %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 7
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.wpa_supplicant* %42, %struct.wpa_supplicant** %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = call i32 @os_memset(%struct.p2p_go_neg_results* %11, i32 0, i32 48)
  %56 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @ETH_ALEN, align 8
  %62 = call i32 @os_memcpy(i32* %57, i32* %60, i64 %61)
  %63 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @ETH_ALEN, align 8
  %69 = call i32 @os_memcpy(i32* %64, i32* %67, i64 %68)
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %47
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @os_memcpy(i32* %88, i32* %89, i64 %90)
  br label %166

92:                                               ; preds = %79, %76, %47
  %93 = load i32*, i32** %8, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %101 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call %struct.wpa_bss* @wpa_bss_get(%struct.wpa_supplicant* %99, i32* %102, i32* %103, i64 %104)
  store %struct.wpa_bss* %105, %struct.wpa_bss** %12, align 8
  br label %112

106:                                              ; preds = %95, %92
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call %struct.wpa_bss* @wpa_bss_get_bssid_latest(%struct.wpa_supplicant* %107, i32* %110)
  store %struct.wpa_bss* %111, %struct.wpa_bss** %12, align 8
  br label %112

112:                                              ; preds = %106, %98
  %113 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %114 = icmp ne %struct.wpa_bss* %113, null
  br i1 %114, label %115, label %145

115:                                              ; preds = %112
  %116 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %117 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %121 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 1
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %127 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %130 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @os_memcpy(i32* %125, i32* %128, i64 %131)
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %135 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %138 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.wpa_bss*, %struct.wpa_bss** %12, align 8
  %141 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @wpa_ssid_txt(i32* %139, i64 %142)
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %143)
  br label %165

145:                                              ; preds = %112
  %146 = load i32*, i32** %8, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i64, i64* %9, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %11, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @os_memcpy(i32* %155, i32* %156, i64 %157)
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @wpa_ssid_txt(i32* %160, i64 %161)
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %151, %148, %145
  br label %165

165:                                              ; preds = %164, %115
  br label %166

166:                                              ; preds = %165, %82
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %168 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171, %166
  %177 = load i32, i32* @MSG_DEBUG, align 4
  %178 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %179 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %180 = call i32 @wpa_drv_cancel_remain_on_channel(%struct.wpa_supplicant* %179)
  %181 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %182 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  %183 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %184 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %176, %171
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %187 = call i32 @wpas_start_wps_enrollee(%struct.wpa_supplicant* %186, %struct.p2p_go_neg_results* %11)
  %188 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %189 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %190 = call i32 @eloop_cancel_timeout(i32 %188, %struct.wpa_supplicant* %189, i32* null)
  %191 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %192 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %193 = call i32 @eloop_register_timeout(i32 60, i32 0, i32 %191, %struct.wpa_supplicant* %192, i32* null)
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %185, %17
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(%struct.p2p_go_neg_results*, i32, i32) #1

declare dso_local %struct.wpa_bss* @wpa_bss_get(%struct.wpa_supplicant*, i32*, i32*, i64) #1

declare dso_local %struct.wpa_bss* @wpa_bss_get_bssid_latest(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_ssid_txt(i32*, i64) #1

declare dso_local i32 @wpa_drv_cancel_remain_on_channel(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_start_wps_enrollee(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
