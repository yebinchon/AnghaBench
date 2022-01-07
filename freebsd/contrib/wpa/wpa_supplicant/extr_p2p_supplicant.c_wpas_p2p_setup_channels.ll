; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_setup_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_setup_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oper_class_map = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.wpa_supplicant = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.p2p_channels = type { i32, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i64*, i64 }
%struct.hostapd_hw_modes = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"P2P: Driver did not support fetching of all supported channels; assume dualband support\00", align 1
@global_op_class = common dso_local global %struct.oper_class_map* null, align 8
@NO_P2P_SUPP = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"P2P: Add operating class %u\00", align 1
@NO_IR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"P2P: Add operating class %u (client only)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"P2P: Channels\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"P2P: Channels (client only)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.p2p_channels*, %struct.p2p_channels*)* @wpas_p2p_setup_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_setup_channels(%struct.wpa_supplicant* %0, %struct.p2p_channels* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca %struct.p2p_channels*, align 8
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.oper_class_map*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.p2p_reg_class*, align 8
  %15 = alloca %struct.p2p_reg_class*, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %6, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %7, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %26 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %27 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %28 = call i32 @wpas_p2p_default_channels(%struct.wpa_supplicant* %25, %struct.p2p_channels* %26, %struct.p2p_channels* %27)
  store i32 %28, i32* %4, align 4
  br label %221

29:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %211, %29
  %31 = load %struct.oper_class_map*, %struct.oper_class_map** @global_op_class, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %31, i64 %33
  %35 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %214

38:                                               ; preds = %30
  %39 = load %struct.oper_class_map*, %struct.oper_class_map** @global_op_class, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %39, i64 %41
  store %struct.oper_class_map* %42, %struct.oper_class_map** %12, align 8
  store %struct.p2p_reg_class* null, %struct.p2p_reg_class** %14, align 8
  store %struct.p2p_reg_class* null, %struct.p2p_reg_class** %15, align 8
  %43 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %44 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NO_P2P_SUPP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %211

49:                                               ; preds = %38
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %59 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.hostapd_hw_modes* @get_mode(i32* %53, i32 %57, i32 %60)
  store %struct.hostapd_hw_modes* %61, %struct.hostapd_hw_modes** %8, align 8
  %62 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %63 = icmp eq %struct.hostapd_hw_modes* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %211

65:                                               ; preds = %49
  %66 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %67 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %78 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %180, %76
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %83 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %81, %84
  br i1 %85, label %86, label %186

86:                                               ; preds = %80
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %88 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %91 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wpas_p2p_verify_channel(%struct.wpa_supplicant* %87, %struct.hostapd_hw_modes* %88, i64 %89, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @ALLOWED, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %132

97:                                               ; preds = %86
  %98 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %99 = icmp eq %struct.p2p_reg_class* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %103 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  %106 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %107 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %106, i32 0, i32 1
  %108 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %108, i64 %110
  store %struct.p2p_reg_class* %111, %struct.p2p_reg_class** %14, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %115 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %118 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %100, %97
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %122 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %125 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  store i64 %120, i64* %127, align 8
  %128 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %129 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %179

132:                                              ; preds = %86
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @NO_IR, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %178

136:                                              ; preds = %132
  %137 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %138 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %178

143:                                              ; preds = %136
  %144 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %145 = icmp eq %struct.p2p_reg_class* %144, null
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %149 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %150)
  %152 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %153 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %152, i32 0, i32 1
  %154 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %154, i64 %156
  store %struct.p2p_reg_class* %157, %struct.p2p_reg_class** %15, align 8
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  %160 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %161 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %164 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %146, %143
  %166 = load i64, i64* %13, align 8
  %167 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %168 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %171 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  store i64 %166, i64* %173, align 8
  %174 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %175 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %165, %136, %132
  br label %179

179:                                              ; preds = %178, %119
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.oper_class_map*, %struct.oper_class_map** %12, align 8
  %182 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %13, align 8
  br label %80

186:                                              ; preds = %80
  %187 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %188 = icmp ne %struct.p2p_reg_class* %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %192 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %195 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @wpa_hexdump(i32 %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64* %193, i64 %196)
  br label %198

198:                                              ; preds = %189, %186
  %199 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %200 = icmp ne %struct.p2p_reg_class* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %204 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %15, align 8
  %207 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @wpa_hexdump(i32 %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64* %205, i64 %208)
  br label %210

210:                                              ; preds = %201, %198
  br label %211

211:                                              ; preds = %210, %64, %48
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %30

214:                                              ; preds = %30
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %217 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.p2p_channels*, %struct.p2p_channels** %7, align 8
  %220 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %214, %22
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_p2p_default_channels(%struct.wpa_supplicant*, %struct.p2p_channels*, %struct.p2p_channels*) #1

declare dso_local %struct.hostapd_hw_modes* @get_mode(i32*, i32, i32) #1

declare dso_local i32 @wpas_p2p_verify_channel(%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i64, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
