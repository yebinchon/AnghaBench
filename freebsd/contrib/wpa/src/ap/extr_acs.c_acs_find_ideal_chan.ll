; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_find_ideal_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_find_ideal_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { x86_fp80, x86_fp80, x86_fp80 }
%struct.hostapd_iface = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, %struct.hostapd_channel_data* }
%struct.TYPE_4__ = type { i32, i32, %struct.acs_bias*, i64, i64, i64 }
%struct.acs_bias = type { i64, x86_fp80 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ACS: HT40- is not supported yet. Please try HT40+\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ACS: Survey analysis for selected bandwidth %d MHz\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ACS: Channel %d: BW %u is not supported\00", align 1
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"ACS: Channel %d: not allowed as primary channel for HT40\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"ACS: Channel %d: not allowed as primary channel for VHT80\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"ACS: Channel %d: not allowed as primary channel for VHT160\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"ACS: PRI Channel %d: secondary channel %d BW %u is not supported\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"ACS: Channel %d: not enough bandwidth\00", align 1
@ACS_ADJ_WEIGHT = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@ACS_NEXT_ADJ_WEIGHT = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@ACS_24GHZ_PREFER_1_6_11 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@.str.8 = private unnamed_addr constant [55 x i8] c"ACS:  * channel %d: total interference = %Lg (%f bias)\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"ACS:  * channel %d: total interference = %Lg\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"ACS: Ideal channel is %d (%d MHz) with total interference factor of %Lg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_channel_data* (%struct.hostapd_iface*)* @acs_find_ideal_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_channel_data* @acs_find_ideal_chan(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_channel_data*, align 8
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.hostapd_channel_data*, align 8
  %5 = alloca %struct.hostapd_channel_data*, align 8
  %6 = alloca %struct.hostapd_channel_data*, align 8
  %7 = alloca %struct.hostapd_channel_data*, align 8
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca x86_fp80, align 16
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.acs_bias*, align 8
  %17 = alloca %struct.acs_bias, align 16
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %6, align 8
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %7, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %9, align 16
  store i32 1, i32* %12, align 4
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %19 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %2, align 8
  br label %539

34:                                               ; preds = %24, %1
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %43 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 2, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %41, %34
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %51 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %58 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56, %49
  %64 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %65 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__* %66)
  switch i32 %67, label %70 [
    i32 128, label %68
    i32 129, label %69
  ]

68:                                               ; preds = %63
  store i32 4, i32* %12, align 4
  br label %70

69:                                               ; preds = %63
  store i32 8, i32* %12, align 4
  br label %70

70:                                               ; preds = %63, %69, %68
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i32, i32* %12, align 4
  %73 = call x86_fp80 @num_chan_to_bw(i32 %72)
  store x86_fp80 %73, x86_fp80* %13, align 16
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load x86_fp80, x86_fp80* %13, align 16
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %520, %71
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %80 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %523

85:                                               ; preds = %77
  %86 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %87 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %90, i64 %92
  store %struct.hostapd_channel_data* %93, %struct.hostapd_channel_data** %4, align 8
  %94 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %95 = call i32 @chan_pri_allowed(%struct.hostapd_channel_data* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %85
  br label %520

98:                                               ; preds = %85
  %99 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %100 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %101 = call i32 @is_in_chanlist(%struct.hostapd_iface* %99, %struct.hostapd_channel_data* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %520

104:                                              ; preds = %98
  %105 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %106 = load x86_fp80, x86_fp80* %13, align 16
  %107 = call i32 @chan_bw_allowed(%struct.hostapd_channel_data* %105, x86_fp80 %106, i32 1, i32 1)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %112 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %111, i32 0, i32 0
  %113 = load x86_fp80, x86_fp80* %112, align 16
  %114 = load x86_fp80, x86_fp80* %13, align 16
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), x86_fp80 %113, x86_fp80 %114)
  br label %520

116:                                              ; preds = %104
  %117 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %118 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %116
  %125 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %126 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %124
  %132 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %133 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %140 = call i32 @acs_usable_ht40_chan(%struct.hostapd_channel_data* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %145 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %144, i32 0, i32 0
  %146 = load x86_fp80, x86_fp80* %145, align 16
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), x86_fp80 %146)
  br label %520

148:                                              ; preds = %138, %131, %124, %116
  %149 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %150 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %203

156:                                              ; preds = %148
  %157 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %158 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %165 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %203

170:                                              ; preds = %163, %156
  %171 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %172 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = call i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__* %173)
  %175 = icmp eq i32 %174, 128
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %178 = call i32 @acs_usable_vht80_chan(%struct.hostapd_channel_data* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* @MSG_DEBUG, align 4
  %182 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %183 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %182, i32 0, i32 0
  %184 = load x86_fp80, x86_fp80* %183, align 16
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), x86_fp80 %184)
  br label %520

186:                                              ; preds = %176, %170
  %187 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %188 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = call i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__* %189)
  %191 = icmp eq i32 %190, 129
  br i1 %191, label %192, label %202

192:                                              ; preds = %186
  %193 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %194 = call i32 @acs_usable_vht160_chan(%struct.hostapd_channel_data* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* @MSG_DEBUG, align 4
  %198 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %199 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %198, i32 0, i32 0
  %200 = load x86_fp80, x86_fp80* %199, align 16
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %197, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), x86_fp80 %200)
  br label %520

202:                                              ; preds = %192, %186
  br label %203

203:                                              ; preds = %202, %163, %148
  store x86_fp80 0xK00000000000000000000, x86_fp80* %8, align 16
  %204 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %205 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %209 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %208, i32 0, i32 1
  %210 = load x86_fp80, x86_fp80* %209, align 16
  store x86_fp80 %210, x86_fp80* %8, align 16
  br label %211

211:                                              ; preds = %207, %203
  store double 1.000000e+00, double* %15, align 8
  store i32 1, i32* %11, align 4
  br label %212

212:                                              ; preds = %257, %211
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %260

216:                                              ; preds = %212
  %217 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %218 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %219 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %218, i32 0, i32 2
  %220 = load x86_fp80, x86_fp80* %219, align 16
  %221 = load i32, i32* %11, align 4
  %222 = mul nsw i32 %221, 20
  %223 = sitofp i32 %222 to x86_fp80
  %224 = fadd x86_fp80 %220, %223
  %225 = call %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface* %217, x86_fp80 %224)
  store %struct.hostapd_channel_data* %225, %struct.hostapd_channel_data** %5, align 8
  %226 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %227 = icmp ne %struct.hostapd_channel_data* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %216
  br label %260

229:                                              ; preds = %216
  %230 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %231 = load x86_fp80, x86_fp80* %13, align 16
  %232 = call i32 @chan_bw_allowed(%struct.hostapd_channel_data* %230, x86_fp80 %231, i32 1, i32 0)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* @MSG_DEBUG, align 4
  %236 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %237 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %236, i32 0, i32 0
  %238 = load x86_fp80, x86_fp80* %237, align 16
  %239 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %240 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %239, i32 0, i32 0
  %241 = load x86_fp80, x86_fp80* %240, align 16
  %242 = load x86_fp80, x86_fp80* %13, align 16
  %243 = call i32 (i32, i8*, ...) @wpa_printf(i32 %235, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), x86_fp80 %238, x86_fp80 %241, x86_fp80 %242)
  br label %260

244:                                              ; preds = %229
  %245 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %246 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %250 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %249, i32 0, i32 1
  %251 = load x86_fp80, x86_fp80* %250, align 16
  %252 = load x86_fp80, x86_fp80* %8, align 16
  %253 = fadd x86_fp80 %252, %251
  store x86_fp80 %253, x86_fp80* %8, align 16
  %254 = load double, double* %15, align 8
  %255 = fadd double %254, 1.000000e+00
  store double %255, double* %15, align 8
  br label %256

256:                                              ; preds = %248, %244
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %212

260:                                              ; preds = %234, %228, %212
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load i32, i32* @MSG_DEBUG, align 4
  %266 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %267 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %266, i32 0, i32 0
  %268 = load x86_fp80, x86_fp80* %267, align 16
  %269 = call i32 (i32, i8*, ...) @wpa_printf(i32 %265, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), x86_fp80 %268)
  br label %520

270:                                              ; preds = %260
  %271 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %272 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %271, i32 0, i32 0
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @is_24ghz_mode(i64 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %408

278:                                              ; preds = %270
  store i32 0, i32* %11, align 4
  br label %279

279:                                              ; preds = %404, %278
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %407

283:                                              ; preds = %279
  %284 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %285 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %286 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %285, i32 0, i32 2
  %287 = load x86_fp80, x86_fp80* %286, align 16
  %288 = load i32, i32* %11, align 4
  %289 = mul nsw i32 %288, 20
  %290 = sitofp i32 %289 to x86_fp80
  %291 = fadd x86_fp80 %287, %290
  %292 = fsub x86_fp80 %291, 0xK4001A000000000000000
  %293 = call %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface* %284, x86_fp80 %292)
  store %struct.hostapd_channel_data* %293, %struct.hostapd_channel_data** %5, align 8
  %294 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %295 = icmp ne %struct.hostapd_channel_data* %294, null
  br i1 %295, label %296, label %313

296:                                              ; preds = %283
  %297 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %298 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = load x86_fp80, x86_fp80* @ACS_ADJ_WEIGHT, align 16
  %302 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %303 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %302, i32 0, i32 1
  %304 = load x86_fp80, x86_fp80* %303, align 16
  %305 = fmul x86_fp80 %301, %304
  %306 = load x86_fp80, x86_fp80* %8, align 16
  %307 = fadd x86_fp80 %306, %305
  store x86_fp80 %307, x86_fp80* %8, align 16
  %308 = load x86_fp80, x86_fp80* @ACS_ADJ_WEIGHT, align 16
  %309 = load double, double* %15, align 8
  %310 = fpext double %309 to x86_fp80
  %311 = fadd x86_fp80 %310, %308
  %312 = fptrunc x86_fp80 %311 to double
  store double %312, double* %15, align 8
  br label %313

313:                                              ; preds = %300, %296, %283
  %314 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %315 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %316 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %315, i32 0, i32 2
  %317 = load x86_fp80, x86_fp80* %316, align 16
  %318 = load i32, i32* %11, align 4
  %319 = mul nsw i32 %318, 20
  %320 = sitofp i32 %319 to x86_fp80
  %321 = fadd x86_fp80 %317, %320
  %322 = fsub x86_fp80 %321, 0xK4002A000000000000000
  %323 = call %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface* %314, x86_fp80 %322)
  store %struct.hostapd_channel_data* %323, %struct.hostapd_channel_data** %5, align 8
  %324 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %325 = icmp ne %struct.hostapd_channel_data* %324, null
  br i1 %325, label %326, label %343

326:                                              ; preds = %313
  %327 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %328 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %326
  %331 = load x86_fp80, x86_fp80* @ACS_NEXT_ADJ_WEIGHT, align 16
  %332 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %333 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %332, i32 0, i32 1
  %334 = load x86_fp80, x86_fp80* %333, align 16
  %335 = fmul x86_fp80 %331, %334
  %336 = load x86_fp80, x86_fp80* %8, align 16
  %337 = fadd x86_fp80 %336, %335
  store x86_fp80 %337, x86_fp80* %8, align 16
  %338 = load x86_fp80, x86_fp80* @ACS_NEXT_ADJ_WEIGHT, align 16
  %339 = load double, double* %15, align 8
  %340 = fpext double %339 to x86_fp80
  %341 = fadd x86_fp80 %340, %338
  %342 = fptrunc x86_fp80 %341 to double
  store double %342, double* %15, align 8
  br label %343

343:                                              ; preds = %330, %326, %313
  %344 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %345 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %346 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %345, i32 0, i32 2
  %347 = load x86_fp80, x86_fp80* %346, align 16
  %348 = load i32, i32* %11, align 4
  %349 = mul nsw i32 %348, 20
  %350 = sitofp i32 %349 to x86_fp80
  %351 = fadd x86_fp80 %347, %350
  %352 = fadd x86_fp80 %351, 0xK4001A000000000000000
  %353 = call %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface* %344, x86_fp80 %352)
  store %struct.hostapd_channel_data* %353, %struct.hostapd_channel_data** %5, align 8
  %354 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %355 = icmp ne %struct.hostapd_channel_data* %354, null
  br i1 %355, label %356, label %373

356:                                              ; preds = %343
  %357 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %358 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %356
  %361 = load x86_fp80, x86_fp80* @ACS_ADJ_WEIGHT, align 16
  %362 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %363 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %362, i32 0, i32 1
  %364 = load x86_fp80, x86_fp80* %363, align 16
  %365 = fmul x86_fp80 %361, %364
  %366 = load x86_fp80, x86_fp80* %8, align 16
  %367 = fadd x86_fp80 %366, %365
  store x86_fp80 %367, x86_fp80* %8, align 16
  %368 = load x86_fp80, x86_fp80* @ACS_ADJ_WEIGHT, align 16
  %369 = load double, double* %15, align 8
  %370 = fpext double %369 to x86_fp80
  %371 = fadd x86_fp80 %370, %368
  %372 = fptrunc x86_fp80 %371 to double
  store double %372, double* %15, align 8
  br label %373

373:                                              ; preds = %360, %356, %343
  %374 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %375 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %376 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %375, i32 0, i32 2
  %377 = load x86_fp80, x86_fp80* %376, align 16
  %378 = load i32, i32* %11, align 4
  %379 = mul nsw i32 %378, 20
  %380 = sitofp i32 %379 to x86_fp80
  %381 = fadd x86_fp80 %377, %380
  %382 = fadd x86_fp80 %381, 0xK4002A000000000000000
  %383 = call %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface* %374, x86_fp80 %382)
  store %struct.hostapd_channel_data* %383, %struct.hostapd_channel_data** %5, align 8
  %384 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %385 = icmp ne %struct.hostapd_channel_data* %384, null
  br i1 %385, label %386, label %403

386:                                              ; preds = %373
  %387 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %388 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %386
  %391 = load x86_fp80, x86_fp80* @ACS_NEXT_ADJ_WEIGHT, align 16
  %392 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %393 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %392, i32 0, i32 1
  %394 = load x86_fp80, x86_fp80* %393, align 16
  %395 = fmul x86_fp80 %391, %394
  %396 = load x86_fp80, x86_fp80* %8, align 16
  %397 = fadd x86_fp80 %396, %395
  store x86_fp80 %397, x86_fp80* %8, align 16
  %398 = load x86_fp80, x86_fp80* @ACS_NEXT_ADJ_WEIGHT, align 16
  %399 = load double, double* %15, align 8
  %400 = fpext double %399 to x86_fp80
  %401 = fadd x86_fp80 %400, %398
  %402 = fptrunc x86_fp80 %401 to double
  store double %402, double* %15, align 8
  br label %403

403:                                              ; preds = %390, %386, %373
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %11, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %11, align 4
  br label %279

407:                                              ; preds = %279
  br label %408

408:                                              ; preds = %407, %270
  %409 = load double, double* %15, align 8
  %410 = fpext double %409 to x86_fp80
  %411 = load x86_fp80, x86_fp80* %8, align 16
  %412 = fdiv x86_fp80 %411, %410
  store x86_fp80 %412, x86_fp80* %8, align 16
  store %struct.acs_bias* null, %struct.acs_bias** %16, align 8
  %413 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %414 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %413, i32 0, i32 1
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 2
  %417 = load %struct.acs_bias*, %struct.acs_bias** %416, align 8
  %418 = icmp ne %struct.acs_bias* %417, null
  br i1 %418, label %419, label %451

419:                                              ; preds = %408
  store i32 0, i32* %14, align 4
  br label %420

420:                                              ; preds = %447, %419
  %421 = load i32, i32* %14, align 4
  %422 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %423 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %422, i32 0, i32 1
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = icmp ult i32 %421, %426
  br i1 %427, label %428, label %450

428:                                              ; preds = %420
  %429 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %430 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %429, i32 0, i32 1
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 2
  %433 = load %struct.acs_bias*, %struct.acs_bias** %432, align 8
  %434 = load i32, i32* %14, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.acs_bias, %struct.acs_bias* %433, i64 %435
  store %struct.acs_bias* %436, %struct.acs_bias** %16, align 8
  %437 = load %struct.acs_bias*, %struct.acs_bias** %16, align 8
  %438 = getelementptr inbounds %struct.acs_bias, %struct.acs_bias* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 16
  %440 = sitofp i64 %439 to x86_fp80
  %441 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %442 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %441, i32 0, i32 0
  %443 = load x86_fp80, x86_fp80* %442, align 16
  %444 = fcmp oeq x86_fp80 %440, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %428
  br label %450

446:                                              ; preds = %428
  store %struct.acs_bias* null, %struct.acs_bias** %16, align 8
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %14, align 4
  %449 = add i32 %448, 1
  store i32 %449, i32* %14, align 4
  br label %420

450:                                              ; preds = %445, %420
  br label %475

451:                                              ; preds = %408
  %452 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %453 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %452, i32 0, i32 0
  %454 = load %struct.TYPE_3__*, %struct.TYPE_3__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = call i64 @is_24ghz_mode(i64 %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %474

459:                                              ; preds = %451
  %460 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %461 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %460, i32 0, i32 0
  %462 = load x86_fp80, x86_fp80* %461, align 16
  %463 = fptosi x86_fp80 %462 to i64
  %464 = call i64 @is_common_24ghz_chan(i64 %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %459
  %467 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %468 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %467, i32 0, i32 0
  %469 = load x86_fp80, x86_fp80* %468, align 16
  %470 = fptosi x86_fp80 %469 to i64
  %471 = getelementptr inbounds %struct.acs_bias, %struct.acs_bias* %17, i32 0, i32 0
  store i64 %470, i64* %471, align 16
  %472 = load x86_fp80, x86_fp80* @ACS_24GHZ_PREFER_1_6_11, align 16
  %473 = getelementptr inbounds %struct.acs_bias, %struct.acs_bias* %17, i32 0, i32 1
  store x86_fp80 %472, x86_fp80* %473, align 16
  store %struct.acs_bias* %17, %struct.acs_bias** %16, align 8
  br label %474

474:                                              ; preds = %466, %459, %451
  br label %475

475:                                              ; preds = %474, %450
  %476 = load %struct.acs_bias*, %struct.acs_bias** %16, align 8
  %477 = icmp ne %struct.acs_bias* %476, null
  br i1 %477, label %478, label %493

478:                                              ; preds = %475
  %479 = load %struct.acs_bias*, %struct.acs_bias** %16, align 8
  %480 = getelementptr inbounds %struct.acs_bias, %struct.acs_bias* %479, i32 0, i32 1
  %481 = load x86_fp80, x86_fp80* %480, align 16
  %482 = load x86_fp80, x86_fp80* %8, align 16
  %483 = fmul x86_fp80 %482, %481
  store x86_fp80 %483, x86_fp80* %8, align 16
  %484 = load i32, i32* @MSG_DEBUG, align 4
  %485 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %486 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %485, i32 0, i32 0
  %487 = load x86_fp80, x86_fp80* %486, align 16
  %488 = load x86_fp80, x86_fp80* %8, align 16
  %489 = load %struct.acs_bias*, %struct.acs_bias** %16, align 8
  %490 = getelementptr inbounds %struct.acs_bias, %struct.acs_bias* %489, i32 0, i32 1
  %491 = load x86_fp80, x86_fp80* %490, align 16
  %492 = call i32 (i32, i8*, ...) @wpa_printf(i32 %484, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), x86_fp80 %487, x86_fp80 %488, x86_fp80 %491)
  br label %500

493:                                              ; preds = %475
  %494 = load i32, i32* @MSG_DEBUG, align 4
  %495 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %496 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %495, i32 0, i32 0
  %497 = load x86_fp80, x86_fp80* %496, align 16
  %498 = load x86_fp80, x86_fp80* %8, align 16
  %499 = call i32 (i32, i8*, ...) @wpa_printf(i32 %494, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), x86_fp80 %497, x86_fp80 %498)
  br label %500

500:                                              ; preds = %493, %478
  %501 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %502 = call i64 @acs_usable_chan(%struct.hostapd_channel_data* %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %514

504:                                              ; preds = %500
  %505 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %506 = icmp ne %struct.hostapd_channel_data* %505, null
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = load x86_fp80, x86_fp80* %8, align 16
  %509 = load x86_fp80, x86_fp80* %9, align 16
  %510 = fcmp olt x86_fp80 %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %507, %504
  %512 = load x86_fp80, x86_fp80* %8, align 16
  store x86_fp80 %512, x86_fp80* %9, align 16
  %513 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  store %struct.hostapd_channel_data* %513, %struct.hostapd_channel_data** %6, align 8
  br label %514

514:                                              ; preds = %511, %507, %500
  %515 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %516 = icmp ne %struct.hostapd_channel_data* %515, null
  br i1 %516, label %519, label %517

517:                                              ; preds = %514
  %518 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  store %struct.hostapd_channel_data* %518, %struct.hostapd_channel_data** %7, align 8
  br label %519

519:                                              ; preds = %517, %514
  br label %520

520:                                              ; preds = %519, %264, %196, %180, %142, %109, %103, %97
  %521 = load i32, i32* %10, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %10, align 4
  br label %77

523:                                              ; preds = %77
  %524 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %525 = icmp ne %struct.hostapd_channel_data* %524, null
  br i1 %525, label %526, label %537

526:                                              ; preds = %523
  %527 = load i32, i32* @MSG_DEBUG, align 4
  %528 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %529 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %528, i32 0, i32 0
  %530 = load x86_fp80, x86_fp80* %529, align 16
  %531 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %532 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %531, i32 0, i32 2
  %533 = load x86_fp80, x86_fp80* %532, align 16
  %534 = load x86_fp80, x86_fp80* %9, align 16
  %535 = call i32 (i32, i8*, ...) @wpa_printf(i32 %527, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), x86_fp80 %530, x86_fp80 %533, x86_fp80 %534)
  %536 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  store %struct.hostapd_channel_data* %536, %struct.hostapd_channel_data** %2, align 8
  br label %539

537:                                              ; preds = %523
  %538 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  store %struct.hostapd_channel_data* %538, %struct.hostapd_channel_data** %2, align 8
  br label %539

539:                                              ; preds = %537, %526, %31
  %540 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %2, align 8
  ret %struct.hostapd_channel_data* %540
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__*) #1

declare dso_local x86_fp80 @num_chan_to_bw(i32) #1

declare dso_local i32 @chan_pri_allowed(%struct.hostapd_channel_data*) #1

declare dso_local i32 @is_in_chanlist(%struct.hostapd_iface*, %struct.hostapd_channel_data*) #1

declare dso_local i32 @chan_bw_allowed(%struct.hostapd_channel_data*, x86_fp80, i32, i32) #1

declare dso_local i32 @acs_usable_ht40_chan(%struct.hostapd_channel_data*) #1

declare dso_local i32 @acs_usable_vht80_chan(%struct.hostapd_channel_data*) #1

declare dso_local i32 @acs_usable_vht160_chan(%struct.hostapd_channel_data*) #1

declare dso_local i64 @acs_usable_chan(%struct.hostapd_channel_data*) #1

declare dso_local %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface*, x86_fp80) #1

declare dso_local i64 @is_24ghz_mode(i64) #1

declare dso_local i64 @is_common_24ghz_chan(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
