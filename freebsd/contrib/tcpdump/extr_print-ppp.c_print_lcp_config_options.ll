; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_lcp_config_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_lcp_config_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@LCPOPT_MIN = common dso_local global i32 0, align 4
@LCPOPT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"\0A\09  %s Option (0x%02x), length %u (length bogus, should be >= 2)\00", align 1
@lcpconfopts = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"\0A\09unknown LCP option 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0A\09  %s Option (0x%02x), length %u\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" (length bogus, should be >= 6)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c": Vendor: %s (%u)\00", align 1
@oui_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" (length bogus, should be = 4)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c": %u\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c" (length bogus, should be = 6)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c": 0x%08x\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c" (length bogus, should be >= 4)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@ppptype2str = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Unknown Auth Proto (0x04x)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@authalg_values = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown Auth Alg %u\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@PPP_LQM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c": LQR\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c": unknown\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c": 0x%04x\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c" (length bogus, should be >= 3)\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c": Callback Operation %s (%u)\00", align 1
@ppp_callback_values = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c": Null\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c": Local\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c" (length bogus, should be = 7)\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c": IPv4 %s\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c" (length bogus, should be = 9)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c": MAC %s\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c": Magic-Num-Block\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c": PSNDN\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c": Unknown class %u\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"[|lcp]\00", align 1
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @print_lcp_config_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_lcp_config_options(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %392

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK2(i32 %15, i32 2)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %392

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @LCPOPT_MIN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @LCPOPT_MAX, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32*, i32** @lcpconfopts, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_7__*
  %49 = call i32 @ND_PRINT(%struct.TYPE_7__* %48)
  br label %56

50:                                               ; preds = %34, %30
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_7__*
  %55 = call i32 @ND_PRINT(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %50, %38
  store i32 0, i32* %4, align 4
  br label %392

57:                                               ; preds = %27
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @LCPOPT_MIN, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @LCPOPT_MAX, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32*, i32** @lcpconfopts, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_7__*
  %76 = call i32 @ND_PRINT(%struct.TYPE_7__* %75)
  br label %84

77:                                               ; preds = %61, %57
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_7__*
  %82 = call i32 @ND_PRINT(%struct.TYPE_7__* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %392

84:                                               ; preds = %65
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %362 [
    i32 139, label %86
    i32 148, label %109
    i32 169, label %127
    i32 167, label %145
    i32 142, label %189
    i32 150, label %211
    i32 145, label %228
    i32 168, label %229
    i32 155, label %230
    i32 166, label %247
    i32 152, label %272
    i32 154, label %289
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 6
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([32 x i8]* @.str.3 to %struct.TYPE_7__*))
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %392

93:                                               ; preds = %86
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = call i32 @ND_TCHECK_24BITS(i32* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = load i32, i32* @oui_values, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = call i32 @EXTRACT_24BITS(i32* %100)
  %102 = call i32 @tok2str(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = call i32 @EXTRACT_24BITS(i32* %104)
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to %struct.TYPE_7__*
  %108 = call i32 @ND_PRINT(%struct.TYPE_7__* %107)
  br label %375

109:                                              ; preds = %84
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 4
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.6 to %struct.TYPE_7__*))
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %392

116:                                              ; preds = %109
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = call i32 @ND_TCHECK_16BITS(i32* %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = call i32 @EXTRACT_16BITS(i32* %122)
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to %struct.TYPE_7__*
  %126 = call i32 @ND_PRINT(%struct.TYPE_7__* %125)
  br label %375

127:                                              ; preds = %84
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 6
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.8 to %struct.TYPE_7__*))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %392

134:                                              ; preds = %127
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = call i32 @ND_TCHECK_32BITS(i32* %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = call i32 @EXTRACT_32BITS(i32* %140)
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_7__*
  %144 = call i32 @ND_PRINT(%struct.TYPE_7__* %143)
  br label %375

145:                                              ; preds = %84
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([32 x i8]* @.str.10 to %struct.TYPE_7__*))
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %392

152:                                              ; preds = %145
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = call i32 @ND_TCHECK_16BITS(i32* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = load i32, i32* @ppptype2str, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = call i32 @EXTRACT_16BITS(i32* %159)
  %161 = call i32 @tok2str(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %160)
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to %struct.TYPE_7__*
  %164 = call i32 @ND_PRINT(%struct.TYPE_7__* %163)
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = call i32 @EXTRACT_16BITS(i32* %166)
  switch i32 %167, label %183 [
    i32 132, label %168
    i32 130, label %182
    i32 131, label %182
    i32 129, label %182
    i32 128, label %182
  ]

168:                                              ; preds = %152
  %169 = load i32*, i32** %6, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ND_TCHECK(i32 %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = load i32, i32* @authalg_values, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @tok2str(i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %177)
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to %struct.TYPE_7__*
  %181 = call i32 @ND_PRINT(%struct.TYPE_7__* %180)
  br label %188

182:                                              ; preds = %152, %152, %152, %152
  br label %188

183:                                              ; preds = %152
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @print_unknown_data(%struct.TYPE_7__* %184, i32* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %183, %182, %168
  br label %375

189:                                              ; preds = %84
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([32 x i8]* @.str.10 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

195:                                              ; preds = %189
  %196 = load i32*, i32** %6, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = call i32 @ND_TCHECK_16BITS(i32* %197)
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = call i32 @EXTRACT_16BITS(i32* %200)
  %202 = load i32, i32* @PPP_LQM, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([6 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %210

207:                                              ; preds = %195
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([10 x i8]* @.str.17 to %struct.TYPE_7__*))
  br label %210

210:                                              ; preds = %207, %204
  br label %375

211:                                              ; preds = %84
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 6
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.8 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

217:                                              ; preds = %211
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = call i32 @ND_TCHECK_32BITS(i32* %219)
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = call i32 @EXTRACT_32BITS(i32* %223)
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to %struct.TYPE_7__*
  %227 = call i32 @ND_PRINT(%struct.TYPE_7__* %226)
  br label %375

228:                                              ; preds = %84
  br label %375

229:                                              ; preds = %84
  br label %375

230:                                              ; preds = %84
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 4
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.6 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

236:                                              ; preds = %230
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = call i32 @ND_TCHECK_16BITS(i32* %238)
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = call i32 @EXTRACT_16BITS(i32* %242)
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to %struct.TYPE_7__*
  %246 = call i32 @ND_PRINT(%struct.TYPE_7__* %245)
  br label %375

247:                                              ; preds = %84
  %248 = load i32, i32* %8, align 4
  %249 = icmp slt i32 %248, 3
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([32 x i8]* @.str.19 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

253:                                              ; preds = %247
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %255 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([3 x i8]* @.str.20 to %struct.TYPE_7__*))
  %256 = load i32*, i32** %6, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ND_TCHECK(i32 %258)
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = load i32, i32* @ppp_callback_values, align 4
  %262 = load i32*, i32** %6, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @tok2str(i32 %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %264)
  %266 = load i32*, i32** %6, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to %struct.TYPE_7__*
  %271 = call i32 @ND_PRINT(%struct.TYPE_7__* %270)
  br label %375

272:                                              ; preds = %84
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 4
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %277 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.6 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

278:                                              ; preds = %272
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = call i32 @ND_TCHECK_16BITS(i32* %280)
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = load i32*, i32** %6, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 2
  %285 = call i32 @EXTRACT_16BITS(i32* %284)
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to %struct.TYPE_7__*
  %288 = call i32 @ND_PRINT(%struct.TYPE_7__* %287)
  br label %375

289:                                              ; preds = %84
  %290 = load i32, i32* %8, align 4
  %291 = icmp slt i32 %290, 3
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %294 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([32 x i8]* @.str.19 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

295:                                              ; preds = %289
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ND_TCHECK(i32 %298)
  %300 = load i32*, i32** %6, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  switch i32 %302, label %353 [
    i32 134, label %303
    i32 137, label %306
    i32 138, label %309
    i32 136, label %328
    i32 135, label %347
    i32 133, label %350
  ]

303:                                              ; preds = %295
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %305 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.22 to %struct.TYPE_7__*))
  br label %361

306:                                              ; preds = %295
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %308 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.23 to %struct.TYPE_7__*))
  br label %361

309:                                              ; preds = %295
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 7
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %314 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.24 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

315:                                              ; preds = %309
  %316 = load i32*, i32** %6, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 3
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @ND_TCHECK2(i32 %318, i32 4)
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %322 = load i32*, i32** %6, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  %324 = call i32 @ipaddr_string(%struct.TYPE_7__* %321, i32* %323)
  %325 = sext i32 %324 to i64
  %326 = inttoptr i64 %325 to %struct.TYPE_7__*
  %327 = call i32 @ND_PRINT(%struct.TYPE_7__* %326)
  br label %361

328:                                              ; preds = %295
  %329 = load i32, i32* %8, align 4
  %330 = icmp ne i32 %329, 9
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %333 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.26 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

334:                                              ; preds = %328
  %335 = load i32*, i32** %6, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 3
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @ND_TCHECK2(i32 %337, i32 6)
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %341 = load i32*, i32** %6, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 3
  %343 = call i32 @etheraddr_string(%struct.TYPE_7__* %340, i32* %342)
  %344 = sext i32 %343 to i64
  %345 = inttoptr i64 %344 to %struct.TYPE_7__*
  %346 = call i32 @ND_PRINT(%struct.TYPE_7__* %345)
  br label %361

347:                                              ; preds = %295
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %349 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([18 x i8]* @.str.28 to %struct.TYPE_7__*))
  br label %361

350:                                              ; preds = %295
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %352 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.29 to %struct.TYPE_7__*))
  br label %361

353:                                              ; preds = %295
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %355 = load i32*, i32** %6, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 2
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = inttoptr i64 %358 to %struct.TYPE_7__*
  %360 = call i32 @ND_PRINT(%struct.TYPE_7__* %359)
  br label %361

361:                                              ; preds = %353, %350, %347, %334, %315, %306, %303
  br label %375

362:                                              ; preds = %84
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %365, 2
  br i1 %366, label %367, label %374

367:                                              ; preds = %362
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %369 = load i32*, i32** %6, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  %371 = load i32, i32* %8, align 4
  %372 = sub nsw i32 %371, 2
  %373 = call i32 @print_unknown_data(%struct.TYPE_7__* %368, i32* %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %372)
  br label %374

374:                                              ; preds = %367, %362
  br label %375

375:                                              ; preds = %374, %361, %278, %253, %236, %229, %228, %217, %210, %188, %134, %116, %93
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp sgt i32 %378, 1
  br i1 %379, label %380, label %387

380:                                              ; preds = %375
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %382 = load i32*, i32** %6, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 2
  %384 = load i32, i32* %8, align 4
  %385 = sub nsw i32 %384, 2
  %386 = call i32 @print_unknown_data(%struct.TYPE_7__* %381, i32* %383, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %385)
  br label %387

387:                                              ; preds = %380, %375
  %388 = load i32, i32* %8, align 4
  store i32 %388, i32* %4, align 4
  br label %392

389:                                              ; No predecessors!
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %391 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.32 to %struct.TYPE_7__*))
  store i32 0, i32* %4, align 4
  br label %392

392:                                              ; preds = %389, %387, %331, %312, %292, %275, %250, %233, %214, %192, %148, %130, %112, %89, %77, %56, %26, %12
  %393 = load i32, i32* %4, align 4
  ret i32 %393
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @ND_TCHECK_24BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
