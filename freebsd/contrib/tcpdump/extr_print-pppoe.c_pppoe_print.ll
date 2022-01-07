; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pppoe.c_pppoe_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pppoe.c_pppoe_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPPOE_HDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"truncated-pppoe %u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" [ver %d]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" [type %d]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PPPoE %s\00", align 1
@pppoecode2str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"PAD-%x\00", align 1
@PPPOE_PADI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" [len %u!]\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" [len %u > %u!]\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" [ses 0x%x]\00", align 1
@MAXTAGPRINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c" [%s \22%*.*s\22]\00", align 1
@pppoetag2str = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"TAG-0x%x\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" [%s 0x\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"[|pppoe]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pppoe_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PPPOE_HDRLEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %4, align 4
  br label %282

34:                                               ; preds = %3
  %35 = load i32, i32* @PPPOE_HDRLEN, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PPPOE_HDRLEN, align 4
  %42 = call i32 @ND_TCHECK2(i32 %40, i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 240
  %47 = ashr i32 %46, 4
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 15
  store i32 %51, i32* %9, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = call i32 @EXTRACT_16BITS(i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = call i32 @EXTRACT_16BITS(i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @PPPOE_HDRLEN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %14, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %34
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @ND_PRINT(i32* %71)
  br label %73

73:                                               ; preds = %67, %34
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @ND_PRINT(i32* %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @pppoecode2str, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @tok2str(i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 @ND_PRINT(i32* %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @PPPOE_PADI, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %82
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @PPPOE_HDRLEN, align 4
  %96 = sub nsw i32 1484, %95
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i32*
  %103 = call i32 @ND_PRINT(i32* %102)
  br label %104

104:                                              ; preds = %98, %93, %82
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i32*
  %114 = call i32 @ND_PRINT(i32* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %108, %104
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32*
  %124 = call i32 @ND_PRINT(i32* %123)
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %269

128:                                              ; preds = %125
  store i32 65535, i32* %15, align 4
  %129 = load i32*, i32** %14, align 8
  store i32* %129, i32** %17, align 8
  br label %130

130:                                              ; preds = %263, %128
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32*, i32** %17, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = icmp ult i32* %134, %138
  br label %140

140:                                              ; preds = %133, %130
  %141 = phi i1 [ false, %130 ], [ %139, %133 ]
  br i1 %141, label %142, label %268

142:                                              ; preds = %140
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ND_TCHECK2(i32 %144, i32 4)
  %146 = load i32*, i32** %17, align 8
  %147 = call i32 @EXTRACT_16BITS(i32* %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32*, i32** %17, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = call i32 @EXTRACT_16BITS(i32* %149)
  store i32 %150, i32* %16, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %17, align 8
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %255

155:                                              ; preds = %142
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %156 = load i32, i32* @MAXTAGPRINT, align 4
  %157 = zext i32 %156 to i64
  %158 = call i8* @llvm.stacksave()
  store i8* %158, i8** %21, align 8
  %159 = alloca i8, i64 %157, align 16
  store i64 %157, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %16, align 4
  %163 = call i32 @ND_TCHECK2(i32 %161, i32 %162)
  %164 = load i32*, i32** %17, align 8
  store i32* %164, i32** %20, align 8
  br label %165

165:                                              ; preds = %205, %155
  %166 = load i32*, i32** %20, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = icmp ult i32* %166, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* @MAXTAGPRINT, align 4
  %175 = sub nsw i32 %174, 1
  %176 = icmp ult i32 %173, %175
  br label %177

177:                                              ; preds = %172, %165
  %178 = phi i1 [ false, %165 ], [ %176, %172 ]
  br i1 %178, label %179, label %208

179:                                              ; preds = %177
  %180 = load i32*, i32** %20, align 8
  %181 = load i32, i32* %180, align 4
  %182 = icmp sge i32 %181, 32
  br i1 %182, label %183, label %197

183:                                              ; preds = %179
  %184 = load i32*, i32** %20, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 127
  br i1 %186, label %187, label %197

187:                                              ; preds = %183
  %188 = load i32*, i32** %20, align 8
  %189 = load i32, i32* %188, align 4
  %190 = trunc i32 %189 to i8
  %191 = load i32, i32* %23, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %23, align 4
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %159, i64 %193
  store i8 %190, i8* %194, align 1
  %195 = load i32, i32* %18, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %204

197:                                              ; preds = %183, %179
  %198 = load i32, i32* %23, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %23, align 4
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %159, i64 %200
  store i8 46, i8* %201, align 1
  %202 = load i32, i32* %19, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %19, align 4
  br label %204

204:                                              ; preds = %197, %187
  br label %205

205:                                              ; preds = %204
  %206 = load i32*, i32** %20, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %20, align 8
  br label %165

208:                                              ; preds = %177
  %209 = load i32, i32* %23, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %159, i64 %210
  store i8 0, i8* %211, align 1
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %19, align 4
  %214 = icmp ugt i32 %212, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* @pppoetag2str, align 4
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @tok2str(i32 %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %23, align 4
  %222 = bitcast i8* %159 to i32*
  %223 = call i32 @ND_PRINT(i32* %222)
  br label %253

224:                                              ; preds = %208
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* @pppoetag2str, align 4
  %227 = load i32, i32* %15, align 4
  %228 = call i32 @tok2str(i32 %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %227)
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i32*
  %231 = call i32 @ND_PRINT(i32* %230)
  %232 = load i32*, i32** %17, align 8
  store i32* %232, i32** %20, align 8
  br label %233

233:                                              ; preds = %247, %224
  %234 = load i32*, i32** %20, align 8
  %235 = load i32*, i32** %17, align 8
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = icmp ult i32* %234, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %233
  %241 = load i32*, i32** %5, align 8
  %242 = load i32*, i32** %20, align 8
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i32*
  %246 = call i32 @ND_PRINT(i32* %245)
  br label %247

247:                                              ; preds = %240
  %248 = load i32*, i32** %20, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %20, align 8
  br label %233

250:                                              ; preds = %233
  %251 = load i32*, i32** %5, align 8
  %252 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.12 to i32*))
  br label %253

253:                                              ; preds = %250, %215
  %254 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %254)
  br label %263

255:                                              ; preds = %142
  %256 = load i32*, i32** %5, align 8
  %257 = load i32, i32* @pppoetag2str, align 4
  %258 = load i32, i32* %15, align 4
  %259 = call i32 @tok2str(i32 %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %258)
  %260 = sext i32 %259 to i64
  %261 = inttoptr i64 %260 to i32*
  %262 = call i32 @ND_PRINT(i32* %261)
  br label %263

263:                                              ; preds = %255, %253
  %264 = load i32, i32* %16, align 4
  %265 = load i32*, i32** %17, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32* %267, i32** %17, align 8
  br label %130

268:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %282

269:                                              ; preds = %125
  %270 = load i32*, i32** %5, align 8
  %271 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.14 to i32*))
  %272 = load i32, i32* @PPPOE_HDRLEN, align 4
  %273 = load i32*, i32** %5, align 8
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @ppp_print(i32* %273, i32* %274, i32 %275)
  %277 = add nsw i32 %272, %276
  store i32 %277, i32* %4, align 4
  br label %282

278:                                              ; No predecessors!
  %279 = load i32*, i32** %5, align 8
  %280 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.15 to i32*))
  %281 = load i32, i32* @PPPOE_HDRLEN, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %278, %269, %268, %27
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ppp_print(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
