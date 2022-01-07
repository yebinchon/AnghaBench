; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eapol_auth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.hostapd_data* }
%struct.eapol_auth_cb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.hostapd_data* }

@.str = private unnamed_addr constant [8 x i8] c"hostapd\00", align 1
@ieee802_1x_eapol_send = common dso_local global i32 0, align 4
@ieee802_1x_aaa_send = common dso_local global i32 0, align 4
@_ieee802_1x_finished = common dso_local global i32 0, align 4
@ieee802_1x_get_eap_user = common dso_local global i32 0, align 4
@ieee802_1x_sta_entry_alive = common dso_local global i32 0, align 4
@ieee802_1x_logger = common dso_local global i32 0, align 4
@ieee802_1x_set_port_authorized = common dso_local global i32 0, align 4
@_ieee802_1x_abort_auth = common dso_local global i32 0, align 4
@_ieee802_1x_tx_key = common dso_local global i32 0, align 4
@ieee802_1x_eapol_event = common dso_local global i32 0, align 4
@RADIUS_AUTH = common dso_local global i32 0, align 4
@ieee802_1x_receive_auth = common dso_local global i32 0, align 4
@WPA_ALG_NONE = common dso_local global i32 0, align 4
@ieee802_1x_erp_add_key = common dso_local global i32 0, align 4
@ieee802_1x_erp_get_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_init(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eapol_auth_config, align 8
  %6 = alloca %struct.eapol_auth_cb, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 7
  %9 = call i32 @dl_list_init(i32* %8)
  %10 = call i32 @os_memset(%struct.eapol_auth_config* %5, i32 0, i32 200)
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %12 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 44
  store %struct.hostapd_data* %11, %struct.hostapd_data** %12, align 8
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 29
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 43
  store i32 %17, i32* %18, align 8
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 42
  store i64 %23, i64* %24, align 8
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 28
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 41
  store i32 %29, i32* %30, align 4
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 27
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 40
  store i32 %35, i32* %36, align 8
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 39
  store i32 %39, i32* %40, align 4
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 38
  store i32 %43, i32* %44, align 8
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 37
  store i32 %47, i32* %48, align 4
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 26
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 36
  store i32 %53, i32* %54, align 8
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %56 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 25
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 35
  store i32 %59, i32* %60, align 4
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 24
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 34
  store i32 %65, i32* %66, align 8
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %68 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 23
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 33
  store i32 %71, i32* %72, align 4
  %73 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %74 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 22
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 32
  store i32 %77, i32* %78, align 8
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %80 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 21
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 31
  store i32 %83, i32* %84, align 4
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %86 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 20
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 30
  store i32 %89, i32* %90, align 8
  %91 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %92 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 19
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 29
  store i32 %95, i32* %96, align 4
  %97 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %98 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 18
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 28
  store i32 %101, i32* %102, align 8
  %103 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %104 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 17
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 27
  store i32 %107, i32* %108, align 4
  %109 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %110 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 16
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 26
  store i32 %113, i32* %114, align 8
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %116 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 25
  store i32 %119, i32* %120, align 4
  %121 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %122 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 24
  store i32 %125, i32* %126, align 8
  %127 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %128 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 23
  store i32 %131, i32* %132, align 4
  %133 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %134 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 22
  store i32 %137, i32* %138, align 8
  %139 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %140 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 21
  store i32 %143, i32* %144, align 4
  %145 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %146 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 20
  store i32 %149, i32* %150, align 8
  %151 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %152 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 19
  store i32 %155, i32* %156, align 4
  %157 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %158 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 18
  store i32 %161, i32* %162, align 8
  %163 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %164 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 17
  store i32 %165, i32* %166, align 4
  %167 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %168 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 16
  store i32 %171, i32* %172, align 8
  %173 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %174 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 15
  store i32 %177, i32* %178, align 4
  %179 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %180 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 14
  store i32 %183, i32* %184, align 8
  %185 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %186 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %1
  %192 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %193 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i32*
  %198 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 13
  store i32* %197, i32** %198, align 8
  %199 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %200 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @os_strlen(i64 %203)
  %205 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 0
  store i32 %204, i32* %205, align 8
  br label %209

206:                                              ; preds = %1
  %207 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 13
  store i32* bitcast ([8 x i8]* @.str to i32*), i32** %207, align 8
  %208 = getelementptr inbounds %struct.eapol_auth_config, %struct.eapol_auth_config* %5, i32 0, i32 0
  store i32 7, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %191
  %210 = bitcast %struct.eapol_auth_cb* %6 to %struct.eapol_auth_config*
  %211 = call i32 @os_memset(%struct.eapol_auth_config* %210, i32 0, i32 200)
  %212 = load i32, i32* @ieee802_1x_eapol_send, align 4
  %213 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 12
  store i32 %212, i32* %213, align 8
  %214 = load i32, i32* @ieee802_1x_aaa_send, align 4
  %215 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 11
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* @_ieee802_1x_finished, align 4
  %217 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 10
  store i32 %216, i32* %217, align 8
  %218 = load i32, i32* @ieee802_1x_get_eap_user, align 4
  %219 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 9
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* @ieee802_1x_sta_entry_alive, align 4
  %221 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 8
  store i32 %220, i32* %221, align 8
  %222 = load i32, i32* @ieee802_1x_logger, align 4
  %223 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 7
  store i32 %222, i32* %223, align 4
  %224 = load i32, i32* @ieee802_1x_set_port_authorized, align 4
  %225 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 6
  store i32 %224, i32* %225, align 8
  %226 = load i32, i32* @_ieee802_1x_abort_auth, align 4
  %227 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 5
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* @_ieee802_1x_tx_key, align 4
  %229 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 4
  store i32 %228, i32* %229, align 8
  %230 = load i32, i32* @ieee802_1x_eapol_event, align 4
  %231 = getelementptr inbounds %struct.eapol_auth_cb, %struct.eapol_auth_cb* %6, i32 0, i32 3
  store i32 %230, i32* %231, align 4
  %232 = bitcast %struct.eapol_auth_cb* %6 to %struct.eapol_auth_config*
  %233 = call %struct.TYPE_4__* @eapol_auth_init(%struct.eapol_auth_config* %5, %struct.eapol_auth_config* %232)
  %234 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %235 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %234, i32 0, i32 0
  store %struct.TYPE_4__* %233, %struct.TYPE_4__** %235, align 8
  %236 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %237 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = icmp eq %struct.TYPE_4__* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %209
  store i32 -1, i32* %2, align 4
  br label %311

241:                                              ; preds = %209
  %242 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %243 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %242, i32 0, i32 1
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %241
  %249 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %250 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %249, i32 0, i32 1
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %248, %241
  %256 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %257 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %258 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %257, i32 0, i32 1
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @hostapd_set_drv_ieee8021x(%struct.hostapd_data* %256, i32 %261, i32 1)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255
  store i32 -1, i32* %2, align 4
  br label %311

265:                                              ; preds = %255, %248
  %266 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %267 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @RADIUS_AUTH, align 4
  %270 = load i32, i32* @ieee802_1x_receive_auth, align 4
  %271 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %272 = call i64 @radius_client_register(i32 %268, i32 %269, i32 %270, %struct.hostapd_data* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  store i32 -1, i32* %2, align 4
  br label %311

275:                                              ; preds = %265
  %276 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %277 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %276, i32 0, i32 1
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %310

282:                                              ; preds = %275
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %296, %282
  %284 = load i32, i32* %4, align 4
  %285 = icmp slt i32 %284, 4
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %288 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %287, i32 0, i32 1
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %293 = load i32, i32* @WPA_ALG_NONE, align 4
  %294 = load i32, i32* %4, align 4
  %295 = call i32 @hostapd_drv_set_key(i32 %291, %struct.hostapd_data* %292, i32 %293, i32* null, i32 %294, i32 0, i32* null, i32 0, i32* null, i32 0)
  br label %296

296:                                              ; preds = %286
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %4, align 4
  br label %283

299:                                              ; preds = %283
  %300 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %301 = call i32 @ieee802_1x_rekey(%struct.hostapd_data* %300, i32* null)
  %302 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %303 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %302, i32 0, i32 0
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = icmp eq i32* %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %299
  store i32 -1, i32* %2, align 4
  br label %311

309:                                              ; preds = %299
  br label %310

310:                                              ; preds = %309, %275
  store i32 0, i32* %2, align 4
  br label %311

311:                                              ; preds = %310, %308, %274, %264, %240
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32 @os_memset(%struct.eapol_auth_config*, i32, i32) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local %struct.TYPE_4__* @eapol_auth_init(%struct.eapol_auth_config*, %struct.eapol_auth_config*) #1

declare dso_local i64 @hostapd_set_drv_ieee8021x(%struct.hostapd_data*, i32, i32) #1

declare dso_local i64 @radius_client_register(i32, i32, i32, %struct.hostapd_data*) #1

declare dso_local i32 @hostapd_drv_set_key(i32, %struct.hostapd_data*, i32, i32*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ieee802_1x_rekey(%struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
