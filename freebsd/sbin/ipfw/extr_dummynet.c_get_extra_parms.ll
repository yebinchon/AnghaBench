; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_get_extra_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_get_extra_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_extra_parms = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DN_CMD_GET = common dso_local global i32 0, align 4
@DN_API_VERSION = common dso_local global i32 0, align 4
@IP_DUMMYNET3 = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error getting extra parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"codel\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c" AQM CoDel target %s interval %s\00", align 1
@CODEL_ECN_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" ECN\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" NoECN\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pie\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c" AQM type PIE target %s tupdate %s alpha %g beta %g max_burst %s max_ecnth %.3g\00", align 1
@PIE_SCALE = common dso_local global i64 0, align 8
@PIE_ECN_ENABLED = common dso_local global i32 0, align 4
@PIE_CAPDROP_ENABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c" CapDrop\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" NoCapDrop\00", align 1
@PIE_ON_OFF_MODE_ENABLED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" OnOff\00", align 1
@PIE_DEPRATEEST_ENABLED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c" DRE\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" TS\00", align 1
@PIE_DERAND_ENABLED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c" Derand\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" NoDerand\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"FQ_CODEL\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c" FQ_CODEL target %s interval %s quantum %jd limit %jd flows %jd\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"FQ_PIE\00", align 1
@.str.18 = private unnamed_addr constant [107 x i8] c"  FQ_PIE target %s tupdate %s alpha %g beta %g max_burst %s max_ecnth %.3g quantum %jd limit %jd flows %jd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_extra_parms(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_extra_parms*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x i8], align 1
  %10 = alloca [15 x i8], align 1
  %11 = alloca [15 x i8], align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 24, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dn_extra_parms* @safe_calloc(i32 1, i32 %13)
  store %struct.dn_extra_parms* %14, %struct.dn_extra_parms** %7, align 8
  %15 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %16 = call i32 @memset(%struct.dn_extra_parms* %15, i32 0, i32 24)
  %17 = load i8*, i8** %5, align 8
  store i8 0, i8* %17, align 1
  %18 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %19 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %18, i32 0, i32 3
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @DN_CMD_GET, align 4
  %22 = load i32, i32* @DN_API_VERSION, align 4
  %23 = call i32 @oid_fill(%struct.TYPE_2__* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %26 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %30 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %34 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @IP_DUMMYNET3, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %38 = ptrtoint i32* %12 to i64
  %39 = call i32 @do_cmd(i32 %36, %struct.dn_extra_parms* %37, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %3
  %43 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %44 = call i32 @free(%struct.dn_extra_parms* %43)
  %45 = load i32, i32* @EX_DATAERR, align 4
  %46 = call i32 @errx(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %3
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %555 [
    i32 129, label %49
    i32 128, label %279
  ]

49:                                               ; preds = %47
  %50 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %51 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strcasecmp(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %49
  %56 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %57 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %62 = call i32 @us_to_time(i32 %60, i8* %61)
  %63 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %64 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %69 = call i32 @us_to_time(i32 %67, i8* %68)
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %72 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %75 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CODEL_ECN_ENABLED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %55
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %87, i32* %12, align 4
  br label %96

88:                                               ; preds = %55
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %88, %82
  br label %278

97:                                               ; preds = %49
  %98 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %99 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strcasecmp(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %277, label %103

103:                                              ; preds = %97
  %104 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %105 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %110 = call i32 @us_to_time(i32 %108, i8* %109)
  %111 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %112 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %117 = call i32 @us_to_time(i32 %115, i8* %116)
  %118 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %119 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %124 = call i32 @us_to_time(i32 %122, i8* %123)
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %127 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %128 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %129 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = sitofp i32 %132 to float
  %134 = load i64, i64* @PIE_SCALE, align 8
  %135 = sitofp i64 %134 to float
  %136 = fdiv float %133, %135
  %137 = fpext float %136 to double
  %138 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %139 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = sitofp i32 %142 to float
  %144 = load i64, i64* @PIE_SCALE, align 8
  %145 = sitofp i64 %144 to float
  %146 = fdiv float %143, %145
  %147 = fpext float %146 to double
  %148 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %149 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %150 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to float
  %155 = load i64, i64* @PIE_SCALE, align 8
  %156 = sitofp i64 %155 to float
  %157 = fdiv float %154, %156
  %158 = fpext float %157 to double
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i8* %126, i8* %127, double %137, double %147, i8* %148, double %158)
  store i32 %159, i32* %12, align 4
  %160 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %161 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @PIE_ECN_ENABLED, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %103
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %12, align 4
  br label %184

176:                                              ; preds = %103
  %177 = load i8*, i8** %5, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %176, %168
  %185 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %186 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 6
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @PIE_CAPDROP_ENABLED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = call i32 (i8*, i8*, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %12, align 4
  br label %209

201:                                              ; preds = %184
  %202 = load i8*, i8** %5, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %201, %193
  %210 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %211 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 6
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @PIE_ON_OFF_MODE_ENABLED, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %209
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = call i32 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %218, %209
  %227 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %228 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 6
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @PIE_DEPRATEEST_ENABLED, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %226
  %236 = load i8*, i8** %5, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = call i32 (i8*, i8*, ...) @sprintf(i8* %239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %12, align 4
  br label %251

243:                                              ; preds = %226
  %244 = load i8*, i8** %5, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = call i32 (i8*, i8*, ...) @sprintf(i8* %247, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %12, align 4
  br label %251

251:                                              ; preds = %243, %235
  %252 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %253 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 6
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @PIE_DERAND_ENABLED, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %251
  %261 = load i8*, i8** %5, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = call i32 (i8*, i8*, ...) @sprintf(i8* %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %12, align 4
  br label %276

268:                                              ; preds = %251
  %269 = load i8*, i8** %5, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = call i32 (i8*, i8*, ...) @sprintf(i8* %272, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %12, align 4
  br label %276

276:                                              ; preds = %268, %260
  br label %277

277:                                              ; preds = %276, %97
  br label %278

278:                                              ; preds = %277, %96
  br label %555

279:                                              ; preds = %47
  %280 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %281 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @strcasecmp(i32 %282, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %351, label %285

285:                                              ; preds = %279
  %286 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %287 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %292 = call i32 @us_to_time(i32 %290, i8* %291)
  %293 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %294 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %299 = call i32 @us_to_time(i32 %297, i8* %298)
  %300 = load i8*, i8** %5, align 8
  %301 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %302 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %303 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %304 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 3
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %309 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 4
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %314 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 5
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (i8*, i8*, ...) @sprintf(i8* %300, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0), i8* %301, i8* %302, i32 %307, i32 %312, i32 %317)
  store i32 %318, i32* %12, align 4
  %319 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %320 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @CODEL_ECN_ENABLED, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %285
  %328 = load i8*, i8** %5, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = call i32 (i8*, i8*, ...) @sprintf(i8* %331, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %12, align 4
  br label %343

335:                                              ; preds = %285
  %336 = load i8*, i8** %5, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %339, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %12, align 4
  br label %343

343:                                              ; preds = %335, %327
  %344 = load i8*, i8** %5, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* %347, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %349 = load i32, i32* %12, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %12, align 4
  br label %554

351:                                              ; preds = %279
  %352 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %353 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @strcasecmp(i32 %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %553, label %357

357:                                              ; preds = %351
  %358 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %359 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %364 = call i32 @us_to_time(i32 %362, i8* %363)
  %365 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %366 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 1
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %371 = call i32 @us_to_time(i32 %369, i8* %370)
  %372 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %373 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 2
  %376 = load i32, i32* %375, align 4
  %377 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %378 = call i32 @us_to_time(i32 %376, i8* %377)
  %379 = load i8*, i8** %5, align 8
  %380 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %381 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %382 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %383 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 4
  %386 = load i32, i32* %385, align 4
  %387 = sitofp i32 %386 to float
  %388 = load i64, i64* @PIE_SCALE, align 8
  %389 = sitofp i64 %388 to float
  %390 = fdiv float %387, %389
  %391 = fpext float %390 to double
  %392 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %393 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 5
  %396 = load i32, i32* %395, align 4
  %397 = sitofp i32 %396 to float
  %398 = load i64, i64* @PIE_SCALE, align 8
  %399 = sitofp i64 %398 to float
  %400 = fdiv float %397, %399
  %401 = fpext float %400 to double
  %402 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %403 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %404 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 3
  %407 = load i32, i32* %406, align 4
  %408 = sitofp i32 %407 to float
  %409 = load i64, i64* @PIE_SCALE, align 8
  %410 = sitofp i64 %409 to float
  %411 = fdiv float %408, %410
  %412 = fpext float %411 to double
  %413 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %414 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 7
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %419 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 8
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %424 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 9
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (i8*, i8*, ...) @sprintf(i8* %379, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.18, i64 0, i64 0), i8* %380, i8* %381, double %391, double %401, i8* %402, double %412, i32 %417, i32 %422, i32 %427)
  store i32 %428, i32* %12, align 4
  %429 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %430 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 6
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @PIE_ECN_ENABLED, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %357
  %438 = load i8*, i8** %5, align 8
  %439 = load i32, i32* %12, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  %442 = call i32 (i8*, i8*, ...) @sprintf(i8* %441, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %443 = load i32, i32* %12, align 4
  %444 = add nsw i32 %443, %442
  store i32 %444, i32* %12, align 4
  br label %453

445:                                              ; preds = %357
  %446 = load i8*, i8** %5, align 8
  %447 = load i32, i32* %12, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  %450 = call i32 (i8*, i8*, ...) @sprintf(i8* %449, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %451 = load i32, i32* %12, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* %12, align 4
  br label %453

453:                                              ; preds = %445, %437
  %454 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %455 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %454, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 6
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @PIE_CAPDROP_ENABLED, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %453
  %463 = load i8*, i8** %5, align 8
  %464 = load i32, i32* %12, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %463, i64 %465
  %467 = call i32 (i8*, i8*, ...) @sprintf(i8* %466, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %468 = load i32, i32* %12, align 4
  %469 = add nsw i32 %468, %467
  store i32 %469, i32* %12, align 4
  br label %478

470:                                              ; preds = %453
  %471 = load i8*, i8** %5, align 8
  %472 = load i32, i32* %12, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, i8* %471, i64 %473
  %475 = call i32 (i8*, i8*, ...) @sprintf(i8* %474, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %476 = load i32, i32* %12, align 4
  %477 = add nsw i32 %476, %475
  store i32 %477, i32* %12, align 4
  br label %478

478:                                              ; preds = %470, %462
  %479 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %480 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %479, i32 0, i32 0
  %481 = load i32*, i32** %480, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 6
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @PIE_ON_OFF_MODE_ENABLED, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %495

487:                                              ; preds = %478
  %488 = load i8*, i8** %5, align 8
  %489 = load i32, i32* %12, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, i8* %488, i64 %490
  %492 = call i32 (i8*, i8*, ...) @sprintf(i8* %491, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %493 = load i32, i32* %12, align 4
  %494 = add nsw i32 %493, %492
  store i32 %494, i32* %12, align 4
  br label %495

495:                                              ; preds = %487, %478
  %496 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %497 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %496, i32 0, i32 0
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 6
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @PIE_DEPRATEEST_ENABLED, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %512

504:                                              ; preds = %495
  %505 = load i8*, i8** %5, align 8
  %506 = load i32, i32* %12, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, i8* %505, i64 %507
  %509 = call i32 (i8*, i8*, ...) @sprintf(i8* %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %510 = load i32, i32* %12, align 4
  %511 = add nsw i32 %510, %509
  store i32 %511, i32* %12, align 4
  br label %520

512:                                              ; preds = %495
  %513 = load i8*, i8** %5, align 8
  %514 = load i32, i32* %12, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %513, i64 %515
  %517 = call i32 (i8*, i8*, ...) @sprintf(i8* %516, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %518 = load i32, i32* %12, align 4
  %519 = add nsw i32 %518, %517
  store i32 %519, i32* %12, align 4
  br label %520

520:                                              ; preds = %512, %504
  %521 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %522 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %521, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 6
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* @PIE_DERAND_ENABLED, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %520
  %530 = load i8*, i8** %5, align 8
  %531 = load i32, i32* %12, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8, i8* %530, i64 %532
  %534 = call i32 (i8*, i8*, ...) @sprintf(i8* %533, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %535 = load i32, i32* %12, align 4
  %536 = add nsw i32 %535, %534
  store i32 %536, i32* %12, align 4
  br label %545

537:                                              ; preds = %520
  %538 = load i8*, i8** %5, align 8
  %539 = load i32, i32* %12, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, i8* %538, i64 %540
  %542 = call i32 (i8*, i8*, ...) @sprintf(i8* %541, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %543 = load i32, i32* %12, align 4
  %544 = add nsw i32 %543, %542
  store i32 %544, i32* %12, align 4
  br label %545

545:                                              ; preds = %537, %529
  %546 = load i8*, i8** %5, align 8
  %547 = load i32, i32* %12, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, i8* %546, i64 %548
  %550 = call i32 (i8*, i8*, ...) @sprintf(i8* %549, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %551 = load i32, i32* %12, align 4
  %552 = add nsw i32 %551, %550
  store i32 %552, i32* %12, align 4
  br label %553

553:                                              ; preds = %545, %351
  br label %554

554:                                              ; preds = %553, %343
  br label %555

555:                                              ; preds = %47, %554, %278
  %556 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %7, align 8
  %557 = call i32 @free(%struct.dn_extra_parms* %556)
  ret void
}

declare dso_local %struct.dn_extra_parms* @safe_calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.dn_extra_parms*, i32, i32) #1

declare dso_local i32 @oid_fill(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @do_cmd(i32, %struct.dn_extra_parms*, i64) #1

declare dso_local i32 @free(%struct.dn_extra_parms*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @us_to_time(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
