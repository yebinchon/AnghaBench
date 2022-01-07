; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_v3msg_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_v3msg_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.be = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i64 }

@BE_SEQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"[!message]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@BE_INT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"[msgID!=INT]\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"[msgMaxSize!=INT]\00", align 1
@BE_STR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"[msgFlags!=STR]\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"[msgFlags size %d]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"[msgFlags=0x%02X]\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"F=%s%s%s \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"[msgSecurityModel!=INT]\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"[%d extra after message SEQ]\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"{ USM \00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"[security model %d]\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"[msgSecurityParameters!=STR]\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"{ ScopedPDU \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32)* @v3msg_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3msg_print(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %11, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @asn1_parse(%struct.TYPE_10__* %15, i32* %16, i32 %17, %struct.be* %7)
  store i32 %18, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %321

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BE_SEQ, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([11 x i8]* @.str to %struct.TYPE_10__*))
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @asn1_print(%struct.TYPE_10__* %29, %struct.be* %7)
  br label %321

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %5, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([3 x i8]* @.str.1 to %struct.TYPE_10__*))
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @asn1_parse(%struct.TYPE_10__* %46, i32* %47, i32 %48, %struct.be* %7)
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %321

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BE_INT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([13 x i8]* @.str.2 to %struct.TYPE_10__*))
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @asn1_print(%struct.TYPE_10__* %60, %struct.be* %7)
  br label %321

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %5, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @asn1_parse(%struct.TYPE_10__* %70, i32* %71, i32 %72, %struct.be* %7)
  store i32 %73, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %321

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BE_INT, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([18 x i8]* @.str.3 to %struct.TYPE_10__*))
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i32 @asn1_print(%struct.TYPE_10__* %84, %struct.be* %7)
  br label %321

86:                                               ; preds = %76
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %5, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @asn1_parse(%struct.TYPE_10__* %94, i32* %95, i32 %96, %struct.be* %7)
  store i32 %97, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %321

100:                                              ; preds = %86
  %101 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BE_STR, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([16 x i8]* @.str.4 to %struct.TYPE_10__*))
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = call i32 @asn1_print(%struct.TYPE_10__* %108, %struct.be* %7)
  br label %321

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to %struct.TYPE_10__*
  %120 = call i32 @ND_PRINT(%struct.TYPE_10__* %119)
  br label %321

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 1
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 3
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 4
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 5
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 7
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to %struct.TYPE_10__*
  %149 = call i32 @ND_PRINT(%struct.TYPE_10__* %148)
  br label %321

150:                                              ; preds = %141, %138, %135, %132, %129, %121
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %5, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %164 = load i32, i32* %9, align 4
  %165 = and i32 %164, 2
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %174 = bitcast i8* %173 to %struct.TYPE_10__*
  %175 = call i32 @ND_PRINT(%struct.TYPE_10__* %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @asn1_parse(%struct.TYPE_10__* %176, i32* %177, i32 %178, %struct.be* %7)
  store i32 %179, i32* %8, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %150
  br label %321

182:                                              ; preds = %150
  %183 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @BE_INT, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %189 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([24 x i8]* @.str.12 to %struct.TYPE_10__*))
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = call i32 @asn1_print(%struct.TYPE_10__* %190, %struct.be* %7)
  br label %321

192:                                              ; preds = %182
  %193 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %6, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %5, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %192
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to %struct.TYPE_10__*
  %213 = call i32 @ND_PRINT(%struct.TYPE_10__* %212)
  br label %214

214:                                              ; preds = %206, %192
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([3 x i8]* @.str.14 to %struct.TYPE_10__*))
  br label %222

222:                                              ; preds = %219, %214
  %223 = load i32, i32* %10, align 4
  %224 = icmp eq i32 %223, 3
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %232 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([7 x i8]* @.str.15 to %struct.TYPE_10__*))
  br label %233

233:                                              ; preds = %230, %225
  br label %240

234:                                              ; preds = %222
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to %struct.TYPE_10__*
  %239 = call i32 @ND_PRINT(%struct.TYPE_10__* %238)
  br label %321

240:                                              ; preds = %233
  %241 = load i32*, i32** %11, align 8
  %242 = load i32*, i32** %5, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = ptrtoint i32* %242 to i64
  %245 = ptrtoint i32* %243 to i64
  %246 = sub i64 %244, %245
  %247 = sdiv exact i64 %246, 4
  %248 = getelementptr inbounds i32, i32* %241, i64 %247
  store i32* %248, i32** %5, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = load i32*, i32** %5, align 8
  %252 = load i32*, i32** %11, align 8
  %253 = ptrtoint i32* %251 to i64
  %254 = ptrtoint i32* %252 to i64
  %255 = sub i64 %253, %254
  %256 = sdiv exact i64 %255, 4
  %257 = sub nsw i64 %250, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %6, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %260 = load i32*, i32** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @asn1_parse(%struct.TYPE_10__* %259, i32* %260, i32 %261, %struct.be* %7)
  store i32 %262, i32* %8, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %240
  br label %321

265:                                              ; preds = %240
  %266 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @BE_STR, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([29 x i8]* @.str.17 to %struct.TYPE_10__*))
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %274 = call i32 @asn1_print(%struct.TYPE_10__* %273, %struct.be* %7)
  br label %321

275:                                              ; preds = %265
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %6, align 4
  %278 = sub nsw i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32*, i32** %5, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  store i32* %282, i32** %5, align 8
  %283 = load i32, i32* %10, align 4
  %284 = icmp eq i32 %283, 3
  br i1 %284, label %285, label %301

285:                                              ; preds = %275
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %287 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @usm_print(%struct.TYPE_10__* %286, i32* %289, i32 %291)
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %285
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %299 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([3 x i8]* @.str.14 to %struct.TYPE_10__*))
  br label %300

300:                                              ; preds = %297, %285
  br label %301

301:                                              ; preds = %300, %275
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %308 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([13 x i8]* @.str.18 to %struct.TYPE_10__*))
  br label %309

309:                                              ; preds = %306, %301
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %311 = load i32*, i32** %5, align 8
  %312 = load i32, i32* %6, align 4
  %313 = call i32 @scopedpdu_print(%struct.TYPE_10__* %310, i32* %311, i32 %312, i32 3)
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %309
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %320 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([3 x i8]* @.str.14 to %struct.TYPE_10__*))
  br label %321

321:                                              ; preds = %20, %26, %51, %57, %75, %81, %99, %105, %114, %144, %181, %187, %234, %264, %270, %318, %309
  ret void
}

declare dso_local i32 @asn1_parse(%struct.TYPE_10__*, i32*, i32, %struct.be*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_10__*) #1

declare dso_local i32 @asn1_print(%struct.TYPE_10__*, %struct.be*) #1

declare dso_local i32 @usm_print(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @scopedpdu_print(%struct.TYPE_10__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
