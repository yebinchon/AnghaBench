; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_check_pref_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_check_pref_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 (i32, i32, i32*, i32*)*, i64, i64 }
%struct.p2p_device = type { i32, i64 }
%struct.p2p_message = type { i64 }

@P2P_MAX_PREF_CHANNELS = common dso_local global i32 0, align 4
@P2P_DEV_FORCE_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Ignore local driver frequency preference %u MHz since it is not acceptable for P2P use (go=%d)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Local driver frequency preference (size=%u):%s\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Peer operating channel preference: %d MHz is not in our preferred channel list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_check_pref_chan(%struct.p2p_data* %0, i32 %1, %struct.p2p_device* %2, %struct.p2p_message* %3) #0 {
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p2p_device*, align 8
  %8 = alloca %struct.p2p_message*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.p2p_device* %2, %struct.p2p_device** %7, align 8
  store %struct.p2p_message* %3, %struct.p2p_message** %8, align 8
  %20 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64 (i32, i32, i32*, i32*)*, i64 (i32, i32, i32*, i32*)** %27, align 8
  %29 = icmp ne i64 (i32, i32, i32*, i32*)* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %4
  %31 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %32 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %39 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @P2P_DEV_FORCE_FREQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %46 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %37, %30, %4
  store i32 1, i32* %19, align 4
  br label %251

52:                                               ; preds = %44
  %53 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64 (i32, i32, i32*, i32*)*, i64 (i32, i32, i32*, i32*)** %57, align 8
  %59 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %60 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 %58(i32 %63, i32 %64, i32* %11, i32* %23)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 1, i32* %19, align 4
  br label %251

68:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %133, %130, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %23, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @p2p_freq_to_channel(i32 %77, i8** %13, i8** %14)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %73
  %81 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %82 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @p2p_channels_includes(i32* %84, i8* %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %133, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %94 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @p2p_channels_includes(i32* %96, i8* %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %92, %89, %73
  %102 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %23, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (%struct.p2p_data*, i8*, i32, ...) @p2p_dbg(%struct.p2p_data* %102, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub i32 %109, %110
  %112 = sub i32 %111, 1
  %113 = icmp ugt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %101
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %23, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %23, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sub i32 %122, %123
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @os_memmove(i32* %117, i32* %121, i32 %128)
  br label %130

130:                                              ; preds = %114, %101
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %11, align 4
  br label %69

133:                                              ; preds = %92, %80
  %134 = load i32, i32* %12, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %69

136:                                              ; preds = %69
  %137 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  store i8* %137, i8** %16, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 100
  store i8* %139, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %172, %136
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %140
  %145 = load i8*, i8** %16, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %23, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @os_snprintf(i8* %145, i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  store i32 %156, i32* %18, align 4
  %157 = load i8*, i8** %17, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %18, align 4
  %164 = call i64 @os_snprintf_error(i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %144
  br label %175

167:                                              ; preds = %144
  %168 = load i32, i32* %18, align 4
  %169 = load i8*, i8** %16, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %16, align 8
  br label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %140

175:                                              ; preds = %166, %140
  %176 = load i8*, i8** %16, align 8
  store i8 0, i8* %176, align 1
  %177 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %178 = load i32, i32* %11, align 4
  %179 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %180 = call i32 (%struct.p2p_data*, i8*, i32, ...) @p2p_dbg(%struct.p2p_data* %177, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %178, i8* %179)
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %197, %175
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %23, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %191 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = icmp eq i32 %189, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  br label %200

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %12, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %181

200:                                              ; preds = %195, %181
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %225

204:                                              ; preds = %200
  %205 = load i32, i32* %12, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %23, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @p2p_freq_to_channel(i32 %208, i8** %13, i8** %14)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %204
  %212 = load i8*, i8** %13, align 8
  %213 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %214 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %14, align 8
  %216 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %217 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  %218 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %219 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %218, i32 0, i32 1
  %220 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %221 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = call i32 @os_memcpy(i32* %219, i32* %223, i32 4)
  store i32 1, i32* %19, align 4
  br label %251

225:                                              ; preds = %204, %200
  %226 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %227 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %228 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 (%struct.p2p_data*, i8*, i32, ...) @p2p_dbg(%struct.p2p_data* %226, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  %232 = load %struct.p2p_message*, %struct.p2p_message** %8, align 8
  %233 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %225
  %237 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %240 = load %struct.p2p_message*, %struct.p2p_message** %8, align 8
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @p2p_check_pref_chan_no_recv(%struct.p2p_data* %237, i32 %238, %struct.p2p_device* %239, %struct.p2p_message* %240, i32* %23, i32 %241)
  br label %250

243:                                              ; preds = %225
  %244 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %247 = load %struct.p2p_message*, %struct.p2p_message** %8, align 8
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @p2p_check_pref_chan_recv(%struct.p2p_data* %244, i32 %245, %struct.p2p_device* %246, %struct.p2p_message* %247, i32* %23, i32 %248)
  br label %250

250:                                              ; preds = %243, %236
  store i32 0, i32* %19, align 4
  br label %251

251:                                              ; preds = %250, %211, %67, %51
  %252 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %19, align 4
  switch i32 %253, label %255 [
    i32 0, label %254
    i32 1, label %254
  ]

254:                                              ; preds = %251, %251
  ret void

255:                                              ; preds = %251
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @p2p_freq_to_channel(i32, i8**, i8**) #2

declare dso_local i32 @p2p_channels_includes(i32*, i8*, i8*) #2

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32, ...) #2

declare dso_local i32 @os_memmove(i32*, i32*, i32) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i32, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @p2p_check_pref_chan_no_recv(%struct.p2p_data*, i32, %struct.p2p_device*, %struct.p2p_message*, i32*, i32) #2

declare dso_local i32 @p2p_check_pref_chan_recv(%struct.p2p_data*, i32, %struct.p2p_device*, %struct.p2p_message*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
