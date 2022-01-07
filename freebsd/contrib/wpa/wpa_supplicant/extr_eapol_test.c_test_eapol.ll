; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_test_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_test_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { i32 }
%struct.wpa_supplicant = type { i32*, i32, %struct.TYPE_2__*, %struct.wpa_ssid*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.wpa_ssid = type { i32, i32 }
%struct.eapol_config = type { i32, i32, i32, i32, i64 }
%struct.eapol_ctx = type { i32, i32, %struct.wpa_supplicant*, %struct.eapol_test_data*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.wpa_supplicant*, %struct.eapol_test_data*, i32, i32 }
%struct.wpa_sm_ctx = type { i32, i32, %struct.wpa_supplicant*, %struct.eapol_test_data*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.wpa_supplicant*, %struct.eapol_test_data*, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate EAPOL context.\0A\00", align 1
@eapol_sm_cb = common dso_local global i32 0, align 4
@eapol_test_eapol_done_cb = common dso_local global i32 0, align 4
@eapol_test_eapol_send = common dso_local global i32 0, align 4
@eapol_test_set_config_blob = common dso_local global i32 0, align 4
@eapol_test_get_config_blob = common dso_local global i32 0, align 4
@eapol_test_eap_param_needed = common dso_local global i32 0, align 4
@eapol_test_cert_cb = common dso_local global i32 0, align 4
@eapol_test_set_anon_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to initialize EAPOL state machines.\0A\00", align 1
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@eapol_test_get_state = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eapol_test_data*, %struct.wpa_supplicant*, %struct.wpa_ssid*)* @test_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_eapol(%struct.eapol_test_data* %0, %struct.wpa_supplicant* %1, %struct.wpa_ssid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eapol_test_data*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca %struct.eapol_config, align 8
  %9 = alloca %struct.eapol_ctx*, align 8
  %10 = alloca %struct.wpa_sm_ctx*, align 8
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %5, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_ssid* %2, %struct.wpa_ssid** %7, align 8
  %11 = call %struct.wpa_sm_ctx* @os_zalloc(i32 104)
  %12 = bitcast %struct.wpa_sm_ctx* %11 to %struct.eapol_ctx*
  store %struct.eapol_ctx* %12, %struct.eapol_ctx** %9, align 8
  %13 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %14 = icmp eq %struct.eapol_ctx* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %190

17:                                               ; preds = %3
  %18 = load %struct.eapol_test_data*, %struct.eapol_test_data** %5, align 8
  %19 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %19, i32 0, i32 3
  store %struct.eapol_test_data* %18, %struct.eapol_test_data** %20, align 8
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %22, i32 0, i32 2
  store %struct.wpa_supplicant* %21, %struct.wpa_supplicant** %23, align 8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %27, i32 0, i32 19
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @eapol_sm_cb, align 4
  %30 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %30, i32 0, i32 18
  store i32 %29, i32* %31, align 8
  %32 = load %struct.eapol_test_data*, %struct.eapol_test_data** %5, align 8
  %33 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %33, i32 0, i32 17
  store %struct.eapol_test_data* %32, %struct.eapol_test_data** %34, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %36 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %36, i32 0, i32 16
  store %struct.wpa_supplicant* %35, %struct.wpa_supplicant** %37, align 8
  %38 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %38, i32 0, i32 15
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @eapol_test_eapol_done_cb, align 4
  %41 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @eapol_test_eapol_send, align 4
  %44 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @eapol_test_set_config_blob, align 4
  %47 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @eapol_test_get_config_blob, align 4
  %50 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %51 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %58 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %79 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @eapol_test_eap_param_needed, align 4
  %81 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @eapol_test_cert_cb, align 4
  %84 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %87 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* @eapol_test_set_anon_id, align 4
  %89 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %90 = getelementptr inbounds %struct.eapol_ctx, %struct.eapol_ctx* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %92 = bitcast %struct.eapol_ctx* %91 to %struct.wpa_sm_ctx*
  %93 = call i32* @eapol_sm_init(%struct.wpa_sm_ctx* %92)
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %17
  %101 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %102 = bitcast %struct.eapol_ctx* %101 to %struct.wpa_sm_ctx*
  %103 = call i32 @os_free(%struct.wpa_sm_ctx* %102)
  %104 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %190

105:                                              ; preds = %17
  %106 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %108 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = call %struct.wpa_sm_ctx* @os_zalloc(i32 104)
  store %struct.wpa_sm_ctx* %109, %struct.wpa_sm_ctx** %10, align 8
  %110 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %10, align 8
  %111 = icmp eq %struct.wpa_sm_ctx* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %114 = bitcast %struct.eapol_ctx* %113 to %struct.wpa_sm_ctx*
  %115 = call i32 @os_free(%struct.wpa_sm_ctx* %114)
  store i32 -1, i32* %4, align 4
  br label %190

116:                                              ; preds = %105
  %117 = load %struct.eapol_test_data*, %struct.eapol_test_data** %5, align 8
  %118 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %10, align 8
  %119 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %118, i32 0, i32 3
  store %struct.eapol_test_data* %117, %struct.eapol_test_data** %119, align 8
  %120 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %121 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %10, align 8
  %122 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %121, i32 0, i32 2
  store %struct.wpa_supplicant* %120, %struct.wpa_supplicant** %122, align 8
  %123 = load i32, i32* @eapol_test_get_state, align 4
  %124 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %10, align 8
  %125 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %10, align 8
  %127 = call i32 @wpa_sm_init(%struct.wpa_sm_ctx* %126)
  %128 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %129 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %116
  %135 = load %struct.eapol_ctx*, %struct.eapol_ctx** %9, align 8
  %136 = bitcast %struct.eapol_ctx* %135 to %struct.wpa_sm_ctx*
  %137 = call i32 @os_free(%struct.wpa_sm_ctx* %136)
  %138 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %10, align 8
  %139 = call i32 @os_free(%struct.wpa_sm_ctx* %138)
  store i32 -1, i32* %4, align 4
  br label %190

140:                                              ; preds = %116
  %141 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %142 = icmp ne %struct.wpa_ssid* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %190

144:                                              ; preds = %140
  %145 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %146 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %147 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %146, i32 0, i32 3
  store %struct.wpa_ssid* %145, %struct.wpa_ssid** %147, align 8
  %148 = call i32 @os_memset(%struct.eapol_config* %8, i32 0, i32 24)
  %149 = getelementptr inbounds %struct.eapol_config, %struct.eapol_config* %8, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = getelementptr inbounds %struct.eapol_config, %struct.eapol_config* %8, i32 0, i32 4
  store i64 0, i64* %150, align 8
  %151 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %152 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.eapol_config, %struct.eapol_config* %8, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %158 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.eapol_config, %struct.eapol_config* %8, i32 0, i32 2
  store i32 %159, i32* %160, align 8
  %161 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %162 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.eapol_config, %struct.eapol_config* %8, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %168 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %171 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %170, i32 0, i32 0
  %172 = call i32 @eapol_sm_notify_config(i32* %169, i32* %171, %struct.eapol_config* %8)
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %174 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %177 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @eapol_sm_register_scard_ctx(i32* %175, i32 %178)
  %180 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %181 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @FALSE, align 4
  %184 = call i32 @eapol_sm_notify_portValid(i32* %182, i32 %183)
  %185 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %186 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @TRUE, align 4
  %189 = call i32 @eapol_sm_notify_portEnabled(i32* %187, i32 %188)
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %144, %143, %134, %112, %100, %15
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.wpa_sm_ctx* @os_zalloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @eapol_sm_init(%struct.wpa_sm_ctx*) #1

declare dso_local i32 @os_free(%struct.wpa_sm_ctx*) #1

declare dso_local i32 @wpa_sm_init(%struct.wpa_sm_ctx*) #1

declare dso_local i32 @os_memset(%struct.eapol_config*, i32, i32) #1

declare dso_local i32 @eapol_sm_notify_config(i32*, i32*, %struct.eapol_config*) #1

declare dso_local i32 @eapol_sm_register_scard_ctx(i32*, i32) #1

declare dso_local i32 @eapol_sm_notify_portValid(i32*, i32) #1

declare dso_local i32 @eapol_sm_notify_portEnabled(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
