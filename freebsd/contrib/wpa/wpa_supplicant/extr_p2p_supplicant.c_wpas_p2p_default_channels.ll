; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_default_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_default_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.p2p_channels = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"P2P: Enable operating classes for 2.4 GHz band\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"P2P: Enable operating classes for lower 5 GHz band\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"P2P: Enable operating classes for higher 5 GHz band\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.p2p_channels*, %struct.p2p_channels*)* @wpas_p2p_default_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_default_channels(%struct.wpa_supplicant* %0, %struct.p2p_channels* %1, %struct.p2p_channels* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.p2p_channels*, align 8
  %6 = alloca %struct.p2p_channels*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %5, align 8
  store %struct.p2p_channels* %2, %struct.p2p_channels** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.p2p_channels*, %struct.p2p_channels** %6, align 8
  %14 = call i32 @os_memset(%struct.p2p_channels* %13, i32 0, i32 16)
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %18 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 81, i32* %23, align 8
  %24 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %25 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %54, %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 11
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 5
  %40 = add nsw i32 2412, %39
  %41 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %34
  %44 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %45 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %49, i32 %51)
  br label %53

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %59 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %74 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 115, i32* %79, align 8
  %80 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %81 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %89, i32 5180)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %70
  %93 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %94 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %98, i32 36)
  br label %100

100:                                              ; preds = %92, %70
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %103, i32 5200)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  %107 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %108 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %112, i32 40)
  br label %114

114:                                              ; preds = %106, %100
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %116 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %117, i32 5220)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %114
  %121 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %122 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %126, i32 44)
  br label %128

128:                                              ; preds = %120, %114
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %130 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %131, i32 5240)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %128
  %135 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %136 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %140, i32 48)
  br label %142

142:                                              ; preds = %134, %128
  %143 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %144 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %152, %142
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = call i32 @wpa_printf(i32 %156, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %159 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i32 124, i32* %164, align 8
  %165 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %166 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 0
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %174, i32 5745)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %155
  %178 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %179 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %183, i32 149)
  br label %185

185:                                              ; preds = %177, %155
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %187 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %188, i32 5765)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %185
  %192 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %193 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %197, i32 153)
  br label %199

199:                                              ; preds = %191, %185
  %200 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %201 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %202, i32 5780)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %199
  %206 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %207 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %206, i32 0, i32 1
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %211, i32 157)
  br label %213

213:                                              ; preds = %205, %199
  %214 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %215 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %214, i32 0, i32 0
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = call i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__* %216, i32 5805)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %213
  %220 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %221 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = call i32 @wpas_p2p_add_chan(%struct.TYPE_4__* %225, i32 161)
  br label %227

227:                                              ; preds = %219, %213
  %228 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %229 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %227
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %237, %227
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.p2p_channels*, %struct.p2p_channels** %5, align 8
  %243 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  ret i32 0
}

declare dso_local i32 @os_memset(%struct.p2p_channels*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_p2p_disallowed_freq(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @wpas_p2p_add_chan(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
