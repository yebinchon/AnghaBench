; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_rule = type { i64, i8*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i64*, i64*, i64, i8* }

@PF_OPT_VERBOSE2 = common dso_local global i32 0, align 4
@PF_OPT_DEBUG = common dso_local global i32 0, align 4
@PF_OPT_NUMERIC = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i8* null, align 8
@DIOCGETRULES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"DIOCGETRULES\00", align 1
@PF_SCRUB = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"FILTER RULES:\00", align 1
@labels = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"LABEL COUNTERS:\00", align 1
@PF_OPT_CLRRULECTRS = common dso_local global i32 0, align 4
@PF_GET_CLR_CNTR = common dso_local global i32 0, align 4
@DIOCGETRULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"DIOCGETRULE\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s %llu %llu %llu %llu %llu %llu %llu %ju\0A\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@PF_OPT_RECURSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_rules(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pfioc_rule, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %17, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PF_OPT_VERBOSE2, align 4
  %25 = load i32, i32* @PF_OPT_DEBUG, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PF_OPT_NUMERIC, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %19, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %6
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %20, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i64, i64* @MAXPATHLEN, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @snprintf(i8* %41, i64 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %59

48:                                               ; preds = %6
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i64, i64* @MAXPATHLEN, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @snprintf(i8* %52, i64 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %48, %37
  %60 = call i32 @memset(%struct.pfioc_rule* %14, i32 0, i32 80)
  %61 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @memcpy(i32 %62, i8* %63, i32 4)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %59
  %70 = load i8*, i8** @PF_PASS, align 8
  %71 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @DIOCGETRULES, align 4
  %75 = call i64 @ioctl(i32 %73, i32 %74, %struct.pfioc_rule* %14)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %411

79:                                               ; preds = %69
  %80 = load i64, i64* %17, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %17, align 8
  br label %82

82:                                               ; preds = %79, %59
  %83 = load i8*, i8** @PF_SCRUB, align 8
  %84 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @DIOCGETRULES, align 4
  %88 = call i64 @ioctl(i32 %86, i32 %87, %struct.pfioc_rule* %14)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %411

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %17, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %100
  %108 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %118

109:                                              ; preds = %104, %97
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 130
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @labels, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112, %109
  br label %118

118:                                              ; preds = %117, %107
  br label %119

119:                                              ; preds = %118, %92
  %120 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %16, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @PF_OPT_CLRRULECTRS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @PF_GET_CLR_CNTR, align 4
  %128 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 4
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %119
  store i64 0, i64* %15, align 8
  br label %130

130:                                              ; preds = %188, %129
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %16, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %191

134:                                              ; preds = %130
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 0
  store i64 %135, i64* %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @DIOCGETRULE, align 4
  %139 = call i64 @ioctl(i32 %137, i32 %138, %struct.pfioc_rule* %14)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %411

143:                                              ; preds = %134
  %144 = load i32, i32* %8, align 4
  %145 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** @PF_SCRUB, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = call i64 @pfctl_get_pool(i32 %144, i32* %146, i64 %147, i32 %149, i8* %150, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %411

155:                                              ; preds = %143
  %156 = load i32, i32* %11, align 4
  switch i32 %156, label %184 [
    i32 130, label %157
    i32 128, label %158
    i32 129, label %183
  ]

157:                                              ; preds = %155
  br label %184

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 1, i32* @labels, align 4
  br label %172

172:                                              ; preds = %171, %166, %158
  %173 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %174 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %19, align 4
  %178 = call i32 @print_rule(%struct.TYPE_3__* %173, i8* %175, i32 %176, i32 %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %180 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @pfctl_print_rule_counters(%struct.TYPE_3__* %180, i32 %181)
  br label %184

183:                                              ; preds = %155
  br label %184

184:                                              ; preds = %155, %183, %172, %157
  %185 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = call i32 @pfctl_clear_pool(i32* %186)
  br label %188

188:                                              ; preds = %184
  %189 = load i64, i64* %15, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %15, align 8
  br label %130

191:                                              ; preds = %130
  %192 = load i8*, i8** @PF_PASS, align 8
  %193 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @DIOCGETRULES, align 4
  %197 = call i64 @ioctl(i32 %195, i32 %196, %struct.pfioc_rule* %14)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %411

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %204

204:                                              ; preds = %403, %201
  %205 = load i64, i64* %15, align 8
  %206 = load i64, i64* %16, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %406

208:                                              ; preds = %204
  %209 = load i64, i64* %15, align 8
  %210 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 0
  store i64 %209, i64* %210, align 8
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @DIOCGETRULE, align 4
  %213 = call i64 @ioctl(i32 %211, i32 %212, %struct.pfioc_rule* %14)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %411

217:                                              ; preds = %208
  %218 = load i32, i32* %8, align 4
  %219 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i64, i64* %15, align 8
  %222 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i8*, i8** @PF_PASS, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @pfctl_get_pool(i32 %218, i32* %220, i64 %221, i32 %223, i8* %224, i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %217
  br label %411

229:                                              ; preds = %217
  %230 = load i32, i32* %11, align 4
  switch i32 %230, label %399 [
    i32 130, label %231
    i32 128, label %292
    i32 129, label %398
  ]

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  br i1 %237, label %238, label %291

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 4
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 4
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 3
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 1
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %260, %265
  %267 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 4
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 3
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 4
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 1
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 3
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 1
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %241, i64 %244, i64 %255, i64 %266, i64 %271, i64 %276, i64 %281, i64 %286, i32 %289)
  br label %291

291:                                              ; preds = %238, %231
  br label %399

292:                                              ; preds = %229
  store i32 0, i32* %21, align 4
  %293 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 0
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %292
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  store i32 1, i32* @labels, align 4
  br label %306

306:                                              ; preds = %305, %300, %292
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 @INDENT(i32 %307, i32 %313)
  %315 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 0
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %357

321:                                              ; preds = %306
  %322 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i8* @strrchr(i8* %323, i8 signext 95)
  store i8* %324, i8** %22, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %337

326:                                              ; preds = %321
  %327 = load i8*, i8** %22, align 8
  %328 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %329 = load i8*, i8** %328, align 8
  %330 = icmp eq i8* %327, %329
  br i1 %330, label %342, label %331

331:                                              ; preds = %326
  %332 = load i8*, i8** %22, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 -1
  store i8* %333, i8** %22, align 8
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 47
  br i1 %336, label %342, label %337

337:                                              ; preds = %331, %321
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* @PF_OPT_RECURSE, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %357

342:                                              ; preds = %337, %331, %326
  %343 = load i32, i32* %21, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %21, align 4
  %345 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = call i8* @strrchr(i8* %346, i8 signext 47)
  store i8* %347, i8** %22, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load i8*, i8** %22, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %22, align 8
  br label %356

352:                                              ; preds = %342
  %353 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %354 = load i8*, i8** %353, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 0
  store i8* %355, i8** %22, align 8
  br label %356

356:                                              ; preds = %352, %349
  br label %361

357:                                              ; preds = %337, %306
  %358 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 1
  %359 = load i8*, i8** %358, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 0
  store i8* %360, i8** %22, align 8
  br label %361

361:                                              ; preds = %357, %356
  %362 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %363 = load i8*, i8** %22, align 8
  %364 = load i32, i32* %18, align 4
  %365 = load i32, i32* %19, align 4
  %366 = call i32 @print_rule(%struct.TYPE_3__* %362, i8* %363, i32 %364, i32 %365)
  %367 = load i32, i32* %21, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %361
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %373

371:                                              ; preds = %361
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %373

373:                                              ; preds = %371, %369
  %374 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %375 = load i32, i32* %10, align 4
  %376 = call i32 @pfctl_print_rule_counters(%struct.TYPE_3__* %374, i32 %375)
  %377 = load i32, i32* %21, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %397

379:                                              ; preds = %373
  %380 = load i32, i32* %8, align 4
  %381 = load i8*, i8** %9, align 8
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* %11, align 4
  %384 = load i8*, i8** %22, align 8
  %385 = load i32, i32* %13, align 4
  %386 = add nsw i32 %385, 1
  %387 = call i32 @pfctl_show_rules(i32 %380, i8* %381, i32 %382, i32 %383, i8* %384, i32 %386)
  %388 = load i32, i32* %13, align 4
  %389 = load i32, i32* %10, align 4
  %390 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = call i32 @INDENT(i32 %388, i32 %394)
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %397

397:                                              ; preds = %379, %373
  br label %399

398:                                              ; preds = %229
  br label %399

399:                                              ; preds = %229, %398, %397, %291
  %400 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %14, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 1
  %402 = call i32 @pfctl_clear_pool(i32* %401)
  br label %403

403:                                              ; preds = %399
  %404 = load i64, i64* %15, align 8
  %405 = add nsw i64 %404, 1
  store i64 %405, i64* %15, align 8
  br label %204

406:                                              ; preds = %204
  %407 = load i8*, i8** %9, align 8
  %408 = load i32, i32* %20, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  store i8 0, i8* %410, align 1
  store i32 0, i32* %7, align 4
  br label %416

411:                                              ; preds = %228, %215, %199, %154, %141, %90, %77
  %412 = load i8*, i8** %9, align 8
  %413 = load i32, i32* %20, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  store i8 0, i8* %415, align 1
  store i32 -1, i32* %7, align 4
  br label %416

416:                                              ; preds = %411, %406
  %417 = load i32, i32* %7, align 4
  ret i32 %417
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @memset(%struct.pfioc_rule*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_rule*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i64 @pfctl_get_pool(i32, i32*, i64, i32, i8*, i8*) #1

declare dso_local i32 @print_rule(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pfctl_print_rule_counters(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pfctl_clear_pool(i32*) #1

declare dso_local i32 @INDENT(i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
