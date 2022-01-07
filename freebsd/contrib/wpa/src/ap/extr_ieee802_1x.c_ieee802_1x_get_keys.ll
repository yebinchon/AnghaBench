; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_get_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_get_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.radius_ms_mppe_keys*, i32, %struct.radius_ms_mppe_keys* }
%struct.radius_ms_mppe_keys = type { i64, i64, %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys* }
%struct.radius_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MS-MPPE-Send-Key\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MS-MPPE-Recv-Key\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"MS-MPPE: 1x_get_keys, could not get keys: %p  send: %p  recv: %p\00", align 1
@RADIUS_ATTR_EAP_KEY_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"EAP-Key Name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, %struct.radius_msg*, %struct.radius_msg*, i32*, i64)* @ieee802_1x_get_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_get_keys(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.radius_msg* %2, %struct.radius_msg* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca %struct.radius_msg*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.radius_ms_mppe_keys*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store %struct.radius_msg* %2, %struct.radius_msg** %9, align 8
  store %struct.radius_msg* %3, %struct.radius_msg** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  store %struct.eapol_state_machine* %19, %struct.eapol_state_machine** %16, align 8
  %20 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %21 = icmp eq %struct.eapol_state_machine* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %208

23:                                               ; preds = %6
  %24 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %25 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call %struct.radius_ms_mppe_keys* @radius_msg_get_ms_keys(%struct.radius_msg* %24, %struct.radius_msg* %25, i32* %26, i64 %27)
  store %struct.radius_ms_mppe_keys* %28, %struct.radius_ms_mppe_keys** %13, align 8
  %29 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %30 = icmp ne %struct.radius_ms_mppe_keys* %29, null
  br i1 %30, label %31, label %123

31:                                               ; preds = %23
  %32 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %33 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %32, i32 0, i32 3
  %34 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %33, align 8
  %35 = icmp ne %struct.radius_ms_mppe_keys* %34, null
  br i1 %35, label %36, label %123

36:                                               ; preds = %31
  %37 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %38 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %37, i32 0, i32 2
  %39 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %38, align 8
  %40 = icmp ne %struct.radius_ms_mppe_keys* %39, null
  br i1 %40, label %41, label %123

41:                                               ; preds = %36
  %42 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %43 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %46 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  store i64 %48, i64* %15, align 8
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %51 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %50, i32 0, i32 3
  %52 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %51, align 8
  %53 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %54 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @wpa_hexdump_key(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.radius_ms_mppe_keys* %52, i64 %55)
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %59 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %58, i32 0, i32 2
  %60 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %59, align 8
  %61 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %62 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @wpa_hexdump_key(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.radius_ms_mppe_keys* %60, i64 %63)
  %65 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %66 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %68, align 8
  %70 = call i32 @os_free(%struct.radius_ms_mppe_keys* %69)
  %71 = load i64, i64* %15, align 8
  %72 = call %struct.radius_ms_mppe_keys* @os_malloc(i64 %71)
  %73 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %74 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  store %struct.radius_ms_mppe_keys* %72, %struct.radius_ms_mppe_keys** %76, align 8
  %77 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %78 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %80, align 8
  %82 = icmp ne %struct.radius_ms_mppe_keys* %81, null
  br i1 %82, label %83, label %122

83:                                               ; preds = %41
  %84 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %85 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %87, align 8
  %89 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %90 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %89, i32 0, i32 2
  %91 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %90, align 8
  %92 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %93 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @os_memcpy(%struct.radius_ms_mppe_keys* %88, %struct.radius_ms_mppe_keys* %91, i64 %94)
  %96 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %97 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %99, align 8
  %101 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %102 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %100, i64 %103
  %105 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %106 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %105, i32 0, i32 3
  %107 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %106, align 8
  %108 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %109 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @os_memcpy(%struct.radius_ms_mppe_keys* %104, %struct.radius_ms_mppe_keys* %107, i64 %110)
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %114 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  %117 = load i32, i32* @TRUE, align 4
  %118 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %119 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  store i32 %117, i32* %121, align 8
  br label %122

122:                                              ; preds = %83, %41
  br label %145

123:                                              ; preds = %36, %31, %23
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %126 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %127 = icmp ne %struct.radius_ms_mppe_keys* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %130 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %129, i32 0, i32 3
  %131 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %130, align 8
  br label %133

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi %struct.radius_ms_mppe_keys* [ %131, %128 ], [ null, %132 ]
  %135 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %136 = icmp ne %struct.radius_ms_mppe_keys* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %139 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %138, i32 0, i32 2
  %140 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %139, align 8
  br label %142

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi %struct.radius_ms_mppe_keys* [ %140, %137 ], [ null, %141 ]
  %144 = call i32 @wpa_printf(i32 %124, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), %struct.radius_ms_mppe_keys* %125, %struct.radius_ms_mppe_keys* %134, %struct.radius_ms_mppe_keys* %143)
  br label %145

145:                                              ; preds = %142, %122
  %146 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %147 = icmp ne %struct.radius_ms_mppe_keys* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %150 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %149, i32 0, i32 3
  %151 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %150, align 8
  %152 = call i32 @os_free(%struct.radius_ms_mppe_keys* %151)
  %153 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %154 = getelementptr inbounds %struct.radius_ms_mppe_keys, %struct.radius_ms_mppe_keys* %153, i32 0, i32 2
  %155 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %154, align 8
  %156 = call i32 @os_free(%struct.radius_ms_mppe_keys* %155)
  %157 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %13, align 8
  %158 = call i32 @os_free(%struct.radius_ms_mppe_keys* %157)
  br label %159

159:                                              ; preds = %148, %145
  %160 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %161 = load i32, i32* @RADIUS_ATTR_EAP_KEY_NAME, align 4
  %162 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %160, i32 %161, i32** %14, i64* %15, i32* null)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %203

164:                                              ; preds = %159
  %165 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %166 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %168, align 8
  %170 = call i32 @os_free(%struct.radius_ms_mppe_keys* %169)
  %171 = load i32*, i32** %14, align 8
  %172 = load i64, i64* %15, align 8
  %173 = call %struct.radius_ms_mppe_keys* @os_memdup(i32* %171, i64 %172)
  %174 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %175 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  store %struct.radius_ms_mppe_keys* %173, %struct.radius_ms_mppe_keys** %177, align 8
  %178 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %179 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 2
  %182 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %181, align 8
  %183 = icmp ne %struct.radius_ms_mppe_keys* %182, null
  br i1 %183, label %184, label %202

184:                                              ; preds = %164
  %185 = load i64, i64* %15, align 8
  %186 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %187 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  store i64 %185, i64* %189, align 8
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %192 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys** %194, align 8
  %196 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %197 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @wpa_hexdump(i32 %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.radius_ms_mppe_keys* %195, i64 %200)
  br label %202

202:                                              ; preds = %184, %164
  br label %208

203:                                              ; preds = %159
  %204 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %16, align 8
  %205 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %204, i32 0, i32 0
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  store i64 0, i64* %207, align 8
  br label %208

208:                                              ; preds = %22, %203, %202
  ret void
}

declare dso_local %struct.radius_ms_mppe_keys* @radius_msg_get_ms_keys(%struct.radius_msg*, %struct.radius_msg*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, %struct.radius_ms_mppe_keys*, i64) #1

declare dso_local i32 @os_free(%struct.radius_ms_mppe_keys*) #1

declare dso_local %struct.radius_ms_mppe_keys* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(%struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys*, %struct.radius_ms_mppe_keys*) #1

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i32, i32**, i64*, i32*) #1

declare dso_local %struct.radius_ms_mppe_keys* @os_memdup(i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.radius_ms_mppe_keys*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
