; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_select_go_freq_no_pref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_select_go_freq_no_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_go_neg_results = type { i32 }
%struct.p2p_channels = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"P2P: No 2.4, 5, or 60 GHz channel allowed\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"P2P: Set GO freq %d MHz (no preference known)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, %struct.p2p_channels*)* @wpas_p2p_select_go_freq_no_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_select_go_freq_no_pref(%struct.wpa_supplicant* %0, %struct.p2p_go_neg_results* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.p2p_go_neg_results*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.p2p_go_neg_results* %1, %struct.p2p_go_neg_results** %5, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %47, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = mul i32 %13, 20
  %15 = add i32 5180, %14
  %16 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %17 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %22 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_2__* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %12
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %29 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %30 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @freq_included(%struct.wpa_supplicant* %27, %struct.p2p_channels* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %41 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @p2p_supported_freq(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %237

46:                                               ; preds = %34, %26, %12
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %9

50:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %89, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %92

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 %55, 20
  %57 = add i32 5745, %56
  %58 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %59 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %64 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_2__* %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %54
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %70 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %71 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %72 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @freq_included(%struct.wpa_supplicant* %69, %struct.p2p_channels* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %83 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @p2p_supported_freq(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %237

88:                                               ; preds = %76, %68, %54
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %51

92:                                               ; preds = %51
  %93 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %94 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %93, i32 0, i32 0
  store i32 60480, i32* %94, align 4
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %99 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_2__* %97, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %92
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %105 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %106 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %107 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @freq_included(%struct.wpa_supplicant* %104, %struct.p2p_channels* %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %113 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %118 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @p2p_supported_freq(i32 %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %237

123:                                              ; preds = %111, %103, %92
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %162, %123
  %125 = load i32, i32* %7, align 4
  %126 = icmp ult i32 %125, 4
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = mul i32 %128, 2160
  %130 = add i32 58320, %129
  %131 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %132 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %134 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %137 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_2__* %135, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %127
  %142 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %143 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %144 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %145 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @freq_included(%struct.wpa_supplicant* %142, %struct.p2p_channels* %143, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %141
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %156 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @p2p_supported_freq(i32 %154, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %237

161:                                              ; preds = %149, %141, %127
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %124

165:                                              ; preds = %124
  %166 = call i64 @os_get_random(i32* %8, i32 4)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %243

169:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %191, %169
  %171 = load i32, i32* %7, align 4
  %172 = icmp ult i32 %171, 3
  br i1 %172, label %173, label %194

173:                                              ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %7, align 4
  %176 = add i32 %174, %175
  %177 = urem i32 %176, 3
  %178 = mul i32 %177, 25
  %179 = add i32 2412, %178
  %180 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %181 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %183 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %184 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %185 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @wpas_p2p_supported_freq_go(%struct.wpa_supplicant* %182, %struct.p2p_channels* %183, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %237

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %7, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %170

194:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %229, %194
  %196 = load i32, i32* %7, align 4
  %197 = icmp ult i32 %196, 11
  br i1 %197, label %198, label %232

198:                                              ; preds = %195
  %199 = load i32, i32* %7, align 4
  %200 = mul i32 %199, 5
  %201 = add i32 2412, %200
  %202 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %203 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %205 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 2412
  br i1 %207, label %218, label %208

208:                                              ; preds = %198
  %209 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %210 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 2437
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %215 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 2462
  br i1 %217, label %218, label %219

218:                                              ; preds = %213, %208, %198
  br label %229

219:                                              ; preds = %213
  %220 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %221 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %222 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %223 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @wpas_p2p_supported_freq_go(%struct.wpa_supplicant* %220, %struct.p2p_channels* %221, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  br label %237

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %218
  %230 = load i32, i32* %7, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %195

232:                                              ; preds = %195
  %233 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %234 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %233, i32 0, i32 0
  store i32 0, i32* %234, align 4
  %235 = load i32, i32* @MSG_DEBUG, align 4
  %236 = call i32 (i32, i8*, ...) @wpa_printf(i32 %235, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %243

237:                                              ; preds = %227, %189, %160, %122, %87, %45
  %238 = load i32, i32* @MSG_DEBUG, align 4
  %239 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %240 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32, i8*, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %237, %232, %168
  ret void
}

declare dso_local i32 @wpas_p2p_disallowed_freq(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @freq_included(%struct.wpa_supplicant*, %struct.p2p_channels*, i32) #1

declare dso_local i64 @p2p_supported_freq(i32, i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i64 @wpas_p2p_supported_freq_go(%struct.wpa_supplicant*, %struct.p2p_channels*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
