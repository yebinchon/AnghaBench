; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_parserput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_parserput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i8 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_28__, %struct.TYPE_25__, %struct.TYPE_31__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_30__ = type { i32, i32 }

@DD_RPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"parse: parserput - forward type 0x%x\0A\00", align 1
@QPCTL = common dso_local global i8 0, align 1
@PARSE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"parse: parserput - parser disabled - forward type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"parse: parserput - M_%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"BREAK\00", align 1
@BPRI_MED = common dso_local global i32 0, align 4
@cd_invert = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"parse: parserput - M_%sHANGUP\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@SYNC_ONE = common dso_local global i32 0, align 4
@SYNC_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_33__*)* @parserput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parserput(%struct.TYPE_31__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_29__, align 4
  %11 = alloca %struct.TYPE_30__, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_29__, align 4
  %14 = alloca %struct.TYPE_30__, align 4
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %4, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %6, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %5, align 1
  %23 = zext i8 %22 to i32
  switch i32 %23, label %24 [
    i32 131, label %51
    i32 130, label %51
    i32 129, label %219
    i32 128, label %219
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @DD_RPUT, align 4
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (i32, i8*, ...) @pprintf(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %30 = call i32 @canputnext(%struct.TYPE_31__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @QPCTL, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32, %24
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %45 = call i32 @putnext(%struct.TYPE_31__* %43, %struct.TYPE_33__* %44)
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %49 = call i32 @putq(%struct.TYPE_31__* %47, %struct.TYPE_33__* %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %348

51:                                               ; preds = %2, %2
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %55, %struct.TYPE_32__** %7, align 8
  %56 = call i32 @gethrestime(%struct.TYPE_30__* %11)
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 1000
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PARSE_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %51
  %73 = load i32, i32* @DD_RPUT, align 4
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 (i32, i8*, ...) @pprintf(i32 %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %78 = call i32 @canputnext(%struct.TYPE_31__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %72
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @QPCTL, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %80, %72
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %93 = call i32 @putnext(%struct.TYPE_31__* %91, %struct.TYPE_33__* %92)
  br label %98

94:                                               ; preds = %80
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %97 = call i32 @putq(%struct.TYPE_31__* %95, %struct.TYPE_33__* %96)
  br label %98

98:                                               ; preds = %94, %90
  br label %218

99:                                               ; preds = %51
  %100 = load i32, i32* @DD_RPUT, align 4
  %101 = load i8, i8* %5, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 130
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %106 = call i32 (i32, i8*, ...) @pprintf(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load i8, i8* %5, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 130
  br i1 %109, label %110, label %168

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %166, %110
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %113 = icmp ne %struct.TYPE_33__* %112, null
  br i1 %113, label %114, label %167

114:                                              ; preds = %111
  %115 = call i64 @rdchar(%struct.TYPE_33__** %6)
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, -1
  br i1 %117, label %118, label %166

118:                                              ; preds = %114
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 2
  %121 = load i64, i64* %9, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @parse_ioread(%struct.TYPE_25__* %120, i32 %122, %struct.TYPE_29__* %10)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %166

125:                                              ; preds = %118
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %8, align 8
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %127, align 8
  %129 = call i32 @canputnext(%struct.TYPE_31__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load i32, i32* @BPRI_MED, align 4
  %133 = call %struct.TYPE_33__* @allocb(i32 4, i32 %132)
  store %struct.TYPE_33__* %133, %struct.TYPE_33__** %8, align 8
  %134 = icmp ne %struct.TYPE_33__* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = ptrtoint i32* %138 to i32
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @bcopy(i32 %139, i32 %142, i32 4)
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, 4
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 8
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %151, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %154 = call i32 @putnext(%struct.TYPE_31__* %152, %struct.TYPE_33__* %153)
  br label %162

155:                                              ; preds = %131, %125
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %157 = icmp ne %struct.TYPE_33__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %160 = call i32 @freemsg(%struct.TYPE_33__* %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %135
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 2
  %165 = call i32 @parse_iodone(%struct.TYPE_25__* %164)
  br label %166

166:                                              ; preds = %162, %118, %114
  br label %111

167:                                              ; preds = %111
  br label %217

168:                                              ; preds = %99
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 2
  %171 = call i32 @parse_ioread(%struct.TYPE_25__* %170, i32 0, %struct.TYPE_29__* %10)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %214

173:                                              ; preds = %168
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %8, align 8
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %175, align 8
  %177 = call i32 @canputnext(%struct.TYPE_31__* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %203

179:                                              ; preds = %173
  %180 = load i32, i32* @BPRI_MED, align 4
  %181 = call %struct.TYPE_33__* @allocb(i32 4, i32 %180)
  store %struct.TYPE_33__* %181, %struct.TYPE_33__** %8, align 8
  %182 = icmp ne %struct.TYPE_33__* %181, null
  br i1 %182, label %183, label %203

183:                                              ; preds = %179
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = ptrtoint i32* %186 to i32
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @bcopy(i32 %187, i32 %190, i32 4)
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = add i64 %195, 4
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %193, align 8
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %199, align 8
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %202 = call i32 @putnext(%struct.TYPE_31__* %200, %struct.TYPE_33__* %201)
  br label %210

203:                                              ; preds = %179, %173
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %205 = icmp ne %struct.TYPE_33__* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %208 = call i32 @freemsg(%struct.TYPE_33__* %207)
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %183
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = call i32 @parse_iodone(%struct.TYPE_25__* %212)
  br label %214

214:                                              ; preds = %210, %168
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %216 = call i32 @freemsg(%struct.TYPE_33__* %215)
  br label %217

217:                                              ; preds = %214, %167
  br label %348

218:                                              ; preds = %98
  br label %219

219:                                              ; preds = %2, %2, %218
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %223, %struct.TYPE_32__** %12, align 8
  %224 = load i32, i32* @cd_invert, align 4
  %225 = load i8, i8* %5, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 128
  %228 = zext i1 %227 to i32
  %229 = xor i32 %224, %228
  store i32 %229, i32* %16, align 4
  %230 = call i32 @gethrestime(%struct.TYPE_30__* %14)
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sdiv i32 %236, 1000
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* @DD_RPUT, align 4
  %241 = load i8, i8* %5, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 129
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %246 = call i32 (i32, i8*, ...) @pprintf(i32 %240, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %245)
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @PARSE_ENABLE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %309

253:                                              ; preds = %219
  %254 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %254, i32 0, i32 2
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i32, i32* @SYNC_ONE, align 4
  br label %262

260:                                              ; preds = %253
  %261 = load i32, i32* @SYNC_ZERO, align 4
  br label %262

262:                                              ; preds = %260, %258
  %263 = phi i32 [ %259, %258 ], [ %261, %260 ]
  %264 = call i32 @parse_iopps(%struct.TYPE_25__* %255, i32 %263, %struct.TYPE_29__* %13)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %309

266:                                              ; preds = %262
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %15, align 8
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %268, align 8
  %270 = call i32 @canputnext(%struct.TYPE_31__* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %296

272:                                              ; preds = %266
  %273 = load i32, i32* @BPRI_MED, align 4
  %274 = call %struct.TYPE_33__* @allocb(i32 4, i32 %273)
  store %struct.TYPE_33__* %274, %struct.TYPE_33__** %15, align 8
  %275 = icmp ne %struct.TYPE_33__* %274, null
  br i1 %275, label %276, label %296

276:                                              ; preds = %272
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 0
  %280 = ptrtoint i32* %279 to i32
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @bcopy(i32 %280, i32 %283, i32 4)
  %285 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = add i64 %288, 4
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %286, align 8
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %292, align 8
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %295 = call i32 @putnext(%struct.TYPE_31__* %293, %struct.TYPE_33__* %294)
  br label %303

296:                                              ; preds = %272, %266
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %298 = icmp ne %struct.TYPE_33__* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %301 = call i32 @freemsg(%struct.TYPE_33__* %300)
  br label %302

302:                                              ; preds = %299, %296
  br label %303

303:                                              ; preds = %302, %276
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %304, i32 0, i32 2
  %306 = call i32 @parse_iodone(%struct.TYPE_25__* %305)
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %308 = call i32 @freemsg(%struct.TYPE_33__* %307)
  br label %332

309:                                              ; preds = %262, %219
  %310 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %311 = call i32 @canputnext(%struct.TYPE_31__* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %323, label %313

313:                                              ; preds = %309
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 0
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = load i8, i8* @QPCTL, align 1
  %321 = zext i8 %320 to i32
  %322 = icmp sgt i32 %319, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %313, %309
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %325 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %326 = call i32 @putnext(%struct.TYPE_31__* %324, %struct.TYPE_33__* %325)
  br label %331

327:                                              ; preds = %313
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %330 = call i32 @putq(%struct.TYPE_31__* %328, %struct.TYPE_33__* %329)
  br label %331

331:                                              ; preds = %327, %323
  br label %332

332:                                              ; preds = %331, %303
  %333 = load i32, i32* %16, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %332
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %340 = bitcast %struct.TYPE_27__* %338 to i8*
  %341 = bitcast %struct.TYPE_27__* %339 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %340, i8* align 4 %341, i64 8, i1 false)
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %335, %332
  br label %348

348:                                              ; preds = %347, %217, %50
  ret i32 0
}

declare dso_local i32 @pprintf(i32, i8*, ...) #1

declare dso_local i32 @canputnext(%struct.TYPE_31__*) #1

declare dso_local i32 @putnext(%struct.TYPE_31__*, %struct.TYPE_33__*) #1

declare dso_local i32 @putq(%struct.TYPE_31__*, %struct.TYPE_33__*) #1

declare dso_local i32 @gethrestime(%struct.TYPE_30__*) #1

declare dso_local i64 @rdchar(%struct.TYPE_33__**) #1

declare dso_local i32 @parse_ioread(%struct.TYPE_25__*, i32, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_33__* @allocb(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @freemsg(%struct.TYPE_33__*) #1

declare dso_local i32 @parse_iodone(%struct.TYPE_25__*) #1

declare dso_local i32 @parse_iopps(%struct.TYPE_25__*, i32, %struct.TYPE_29__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
