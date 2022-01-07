; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ar9300_disp_tpc_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ar9300_disp_tpc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ath_hal_9300 = type { i32**, i32**, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.ieee80211_channel* }

@.str = private unnamed_addr constant [30 x i8] c"\0A TPC Register method in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A===TARGET POWER TABLE===\0A\00", align 1
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c" Index[%2d] Rate[0x%02x] %6d kbps Power (%d Chain) [%2d.%1d dBm]\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\0A\0A===TARGET POWER TABLE with STBC===\0A\00", align 1
@AR9300_MCS0_RATE_CODE = common dso_local global i64 0, align 8
@AR9300_MCS23_RATE_CODE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_disp_tpc_tables(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %14)
  store %struct.ath_hal_9300* %15, %struct.ath_hal_9300** %3, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = call %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  store %struct.ieee80211_channel* %19, %struct.ieee80211_channel** %4, align 8
  %20 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = call i32 @ath_hal_get_curmode(%struct.ath_hal* %20, %struct.ieee80211_channel* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %30 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %234

31:                                               ; preds = %1
  %32 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.TYPE_8__* @ar9300_get_rate_table(%struct.ath_hal* %32, i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @HALASSERT(i32 %37)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %40 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %111, %31
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %44 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ar9300_get_ntxchains(i32 %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %114

48:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %107, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %49
  %56 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %9, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %10, align 8
  %60 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %61 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %59, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %59, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %97, 2
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %59, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, 2
  %104 = mul nsw i32 %103, 5
  %105 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %74, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %75, i64 %83, i32 %91, i32 %93, i32 %98, i32 %104)
  %106 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %55
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %49

110:                                              ; preds = %49
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %41

114:                                              ; preds = %41
  %115 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %116 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %118 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %228, %114
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %122 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ar9300_get_ntxchains(i32 %123)
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %231

126:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %224, %126
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %227

133:                                              ; preds = %127
  %134 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %11, align 8
  %137 = alloca i32, i64 %135, align 16
  store i64 %135, i64* %12, align 8
  %138 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %139 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %137, i64 %150
  store i32 %148, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AR9300_MCS0_RATE_CODE, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %186, label %162

162:                                              ; preds = %133
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AR9300_MCS23_RATE_CODE, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %186, label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @ar9300_invalid_stbc_cfg(i32 %174, i64 %182)
  %184 = load i64, i64* @AH_TRUE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %173, %162, %133
  store i32 13, i32* %13, align 4
  br label %220

187:                                              ; preds = %173
  %188 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %137, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sdiv i32 %211, 2
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %137, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = srem i32 %216, 2
  %218 = mul nsw i32 %217, 5
  %219 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %188, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %189, i64 %197, i32 %205, i32 %207, i32 %212, i32 %218)
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %187, %186
  %221 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %13, align 4
  switch i32 %222, label %235 [
    i32 0, label %223
    i32 13, label %224
  ]

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %223, %220
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %127

227:                                              ; preds = %127
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %119

231:                                              ; preds = %119
  %232 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %233 = call i32 (%struct.ath_hal*, i8*, ...) @ath_hal_printf(%struct.ath_hal* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %28
  ret void

235:                                              ; preds = %220
  unreachable
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_9__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_get_curmode(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_printf(%struct.ath_hal*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @ar9300_get_rate_table(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ar9300_get_ntxchains(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ar9300_invalid_stbc_cfg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
