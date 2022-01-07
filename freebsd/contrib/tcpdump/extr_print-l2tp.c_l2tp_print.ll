; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@L2TP_VERSION_MASK = common dso_local global i32 0, align 4
@L2TP_VERSION_L2TP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" l2tp:\00", align 1
@L2TP_VERSION_L2F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" l2f:\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c" Unknown Version, neither L2F(1) nor L2TP(2)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@L2TP_FLAG_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@L2TP_FLAG_LENGTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@L2TP_FLAG_SEQUENCE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@L2TP_FLAG_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@L2TP_FLAG_PRIORITY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"(%u/\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Ns=%u,\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Nr=%u\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c" Length %u larger than packet\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c" Length %u smaller than header length\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c" No length\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" ZLB\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2tp_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %13, align 4
  store i32 %16, i32* %12, align 4
  store i32 %16, i32* %11, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK2(i32 %18, i32 2)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @EXTRACT_16BITS(i32* %20)
  %22 = load i32, i32* @L2TP_VERSION_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @L2TP_VERSION_L2TP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %42

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @EXTRACT_16BITS(i32* %30)
  %32 = load i32, i32* @L2TP_VERSION_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @L2TP_VERSION_L2F, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.1 to i32*))
  br label %255

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ND_PRINT(i32* bitcast ([45 x i8]* @.str.2 to i32*))
  br label %255

42:                                               ; preds = %26
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @EXTRACT_16BITS(i32* %45)
  %47 = load i32, i32* @L2TP_FLAG_TYPE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.4 to i32*))
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @EXTRACT_16BITS(i32* %55)
  %57 = load i32, i32* @L2TP_FLAG_LENGTH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @EXTRACT_16BITS(i32* %65)
  %67 = load i32, i32* @L2TP_FLAG_SEQUENCE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @EXTRACT_16BITS(i32* %75)
  %77 = load i32, i32* @L2TP_FLAG_OFFSET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.7 to i32*))
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @EXTRACT_16BITS(i32* %85)
  %87 = load i32, i32* @L2TP_FLAG_PRIORITY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.8 to i32*))
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.9 to i32*))
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32* %97, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %93
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ND_TCHECK2(i32 %104, i32 2)
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @EXTRACT_16BITS(i32* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32* %109, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %8, align 4
  br label %113

112:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ND_TCHECK2(i32 %115, i32 2)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @EXTRACT_16BITS(i32* %118)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i32*
  %122 = call i32 @ND_PRINT(i32* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32* %124, i32** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ND_TCHECK2(i32 %128, i32 2)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @EXTRACT_16BITS(i32* %131)
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i32*
  %135 = call i32 @ND_PRINT(i32* %134)
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  store i32* %137, i32** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %169

142:                                              ; preds = %113
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ND_TCHECK2(i32 %144, i32 2)
  %146 = load i32*, i32** %4, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @EXTRACT_16BITS(i32* %147)
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i32*
  %151 = call i32 @ND_PRINT(i32* %150)
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32* %153, i32** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %8, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ND_TCHECK2(i32 %157, i32 2)
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @EXTRACT_16BITS(i32* %160)
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i32*
  %164 = call i32 @ND_PRINT(i32* %163)
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32* %166, i32** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %142, %113
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %169
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ND_TCHECK2(i32 %174, i32 2)
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @EXTRACT_16BITS(i32* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 2, %178
  %180 = load i32*, i32** %7, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 2, %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %172, %169
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i32*
  %199 = call i32 @ND_PRINT(i32* %198)
  br label %255

200:                                              ; preds = %190
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %200, %187
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i32*
  %211 = call i32 @ND_PRINT(i32* %210)
  br label %255

212:                                              ; preds = %202
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %212
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.16 to i32*))
  br label %255

221:                                              ; preds = %215
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %222, %223
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.17 to i32*))
  br label %236

229:                                              ; preds = %221
  %230 = load i32*, i32** %4, align 8
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %8, align 4
  %234 = sub nsw i32 %232, %233
  %235 = call i32 @l2tp_avp_print(i32* %230, i32* %231, i32 %234)
  br label %236

236:                                              ; preds = %229, %226
  br label %248

237:                                              ; preds = %212
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.18 to i32*))
  %240 = load i32*, i32** %4, align 8
  %241 = load i32*, i32** %7, align 8
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %8, align 4
  %244 = sub nsw i32 %242, %243
  %245 = call i32 @ppp_print(i32* %240, i32* %241, i32 %244)
  %246 = load i32*, i32** %4, align 8
  %247 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.19 to i32*))
  br label %248

248:                                              ; preds = %237, %236
  br label %255

249:                                              ; No predecessors!
  %250 = load i32*, i32** %4, align 8
  %251 = load i32, i32* @tstr, align 4
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i32*
  %254 = call i32 @ND_PRINT(i32* %253)
  br label %255

255:                                              ; preds = %249, %248, %218, %206, %194, %39, %36
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @l2tp_avp_print(i32*, i32*, i32) #1

declare dso_local i32 @ppp_print(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
