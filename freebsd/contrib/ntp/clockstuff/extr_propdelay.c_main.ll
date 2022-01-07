; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"dh:CWG\00", align 1
@EOF = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@ntp_optarg = common dso_local global i8* null, align 8
@height = common dso_local global double 0.000000e+00, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"height %s unlikely\0A\00", align 1
@Cflag = common dso_local global i64 0, align 8
@Wflag = common dso_local global i64 0, align 8
@Gflag = common dso_local global i64 0, align 8
@ntp_optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"usage: %s [-d] [-h height] lat1 long1 lat2 long2\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" - or -\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"usage: %s -CWG [-d] lat long\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SUMMERHEIGHT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"summer propagation, \00", align 1
@WINTERHEIGHT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"winter propagation, \00", align 1
@wwvlat = common dso_local global i8* null, align 8
@wwvlong = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"WWV  \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"WWV  summer propagation, \00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"WWV  winter propagation, \00", align 1
@wwvhlat = common dso_local global i8* null, align 8
@wwvhlong = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"WWVH \00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"WWVH summer propagation, \00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"WWVH winter propagation, \00", align 1
@chulat = common dso_local global i8* null, align 8
@chulong = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"CHU \00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"CHU summer propagation, \00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"CHU winter propagation, \00", align 1
@goes_up_lat = common dso_local global i8* null, align 8
@goes_up_long = common dso_local global i8* null, align 8
@goes_sat_lat = common dso_local global i8* null, align 8
@goes_west_long = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"GOES Delay via WEST\00", align 1
@goes_stby_long = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"GOES Delay via STBY\00", align 1
@goes_east_long = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"GOES Delay via EAST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = call i32 (...) @init_lib()
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** @progname, align 8
  br label %18

18:                                               ; preds = %55, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @ntp_getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %52 [
    i32 100, label %26
    i32 104, label %29
    i32 67, label %43
    i32 87, label %46
    i32 71, label %49
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @debug, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @debug, align 4
  br label %55

29:                                               ; preds = %24
  %30 = load i64, i64* @hflag, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* @hflag, align 8
  %32 = load i8*, i8** @ntp_optarg, align 8
  %33 = call double @atof(i8* %32)
  store double %33, double* @height, align 8
  %34 = load double, double* @height, align 8
  %35 = fcmp ole double %34, 0.000000e+00
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** @ntp_optarg, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %29
  br label %55

43:                                               ; preds = %24
  %44 = load i64, i64* @Cflag, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @Cflag, align 8
  br label %55

46:                                               ; preds = %24
  %47 = load i64, i64* @Wflag, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* @Wflag, align 8
  br label %55

49:                                               ; preds = %24
  %50 = load i64, i64* @Gflag, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @Gflag, align 8
  br label %55

52:                                               ; preds = %24
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %49, %46, %43, %42, %26
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @Cflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @Wflag, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @Gflag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @ntp_optind, align 4
  %70 = add nsw i32 %69, 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %87, label %73

73:                                               ; preds = %68, %65, %62, %59
  %74 = load i64, i64* @Cflag, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* @Wflag, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @Gflag, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79, %76, %73
  %83 = load i32, i32* @ntp_optind, align 4
  %84 = add nsw i32 %83, 2
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %82, %68, %56
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** @progname, align 8
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** @progname, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  %96 = call i32 @exit(i32 2) #3
  unreachable

97:                                               ; preds = %82, %79
  %98 = load i64, i64* @Cflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %159, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @Wflag, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %159, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* @Gflag, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %159, label %106

106:                                              ; preds = %103
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* @ntp_optind, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call double @latlong(i8* %111, i32 1)
  store double %112, double* %8, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* @ntp_optind, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call double @latlong(i8* %118, i32 0)
  store double %119, double* %9, align 8
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* @ntp_optind, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call double @latlong(i8* %125, i32 1)
  store double %126, double* %10, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* @ntp_optind, align 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call double @latlong(i8* %132, i32 0)
  store double %133, double* %11, align 8
  %134 = load i64, i64* @hflag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %106
  %137 = load double, double* %8, align 8
  %138 = load double, double* %9, align 8
  %139 = load double, double* %10, align 8
  %140 = load double, double* %11, align 8
  %141 = load double, double* @height, align 8
  %142 = call i32 @doit(double %137, double %138, double %139, double %140, double %141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %158

143:                                              ; preds = %106
  %144 = load double, double* %8, align 8
  %145 = load double, double* %9, align 8
  %146 = load double, double* %10, align 8
  %147 = load double, double* %11, align 8
  %148 = load i64, i64* @SUMMERHEIGHT, align 8
  %149 = sitofp i64 %148 to double
  %150 = call i32 @doit(double %144, double %145, double %146, double %147, double %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %151 = load double, double* %8, align 8
  %152 = load double, double* %9, align 8
  %153 = load double, double* %10, align 8
  %154 = load double, double* %11, align 8
  %155 = load i64, i64* @WINTERHEIGHT, align 8
  %156 = sitofp i64 %155 to double
  %157 = call i32 @doit(double %151, double %152, double %153, double %154, double %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %143, %136
  br label %333

159:                                              ; preds = %103, %100, %97
  %160 = load i64, i64* @Wflag, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %234

162:                                              ; preds = %159
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* @ntp_optind, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call double @latlong(i8* %167, i32 1)
  store double %168, double* %8, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* @ntp_optind, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call double @latlong(i8* %174, i32 0)
  store double %175, double* %9, align 8
  %176 = load i8*, i8** @wwvlat, align 8
  %177 = call double @latlong(i8* %176, i32 1)
  store double %177, double* %10, align 8
  %178 = load i8*, i8** @wwvlong, align 8
  %179 = call double @latlong(i8* %178, i32 0)
  store double %179, double* %11, align 8
  %180 = load i64, i64* @hflag, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %162
  %183 = load double, double* %8, align 8
  %184 = load double, double* %9, align 8
  %185 = load double, double* %10, align 8
  %186 = load double, double* %11, align 8
  %187 = load double, double* @height, align 8
  %188 = call i32 @doit(double %183, double %184, double %185, double %186, double %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %204

189:                                              ; preds = %162
  %190 = load double, double* %8, align 8
  %191 = load double, double* %9, align 8
  %192 = load double, double* %10, align 8
  %193 = load double, double* %11, align 8
  %194 = load i64, i64* @SUMMERHEIGHT, align 8
  %195 = sitofp i64 %194 to double
  %196 = call i32 @doit(double %190, double %191, double %192, double %193, double %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %197 = load double, double* %8, align 8
  %198 = load double, double* %9, align 8
  %199 = load double, double* %10, align 8
  %200 = load double, double* %11, align 8
  %201 = load i64, i64* @WINTERHEIGHT, align 8
  %202 = sitofp i64 %201 to double
  %203 = call i32 @doit(double %197, double %198, double %199, double %200, double %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %204

204:                                              ; preds = %189, %182
  %205 = load i8*, i8** @wwvhlat, align 8
  %206 = call double @latlong(i8* %205, i32 1)
  store double %206, double* %10, align 8
  %207 = load i8*, i8** @wwvhlong, align 8
  %208 = call double @latlong(i8* %207, i32 0)
  store double %208, double* %11, align 8
  %209 = load i64, i64* @hflag, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %204
  %212 = load double, double* %8, align 8
  %213 = load double, double* %9, align 8
  %214 = load double, double* %10, align 8
  %215 = load double, double* %11, align 8
  %216 = load double, double* @height, align 8
  %217 = call i32 @doit(double %212, double %213, double %214, double %215, double %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %233

218:                                              ; preds = %204
  %219 = load double, double* %8, align 8
  %220 = load double, double* %9, align 8
  %221 = load double, double* %10, align 8
  %222 = load double, double* %11, align 8
  %223 = load i64, i64* @SUMMERHEIGHT, align 8
  %224 = sitofp i64 %223 to double
  %225 = call i32 @doit(double %219, double %220, double %221, double %222, double %224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %226 = load double, double* %8, align 8
  %227 = load double, double* %9, align 8
  %228 = load double, double* %10, align 8
  %229 = load double, double* %11, align 8
  %230 = load i64, i64* @WINTERHEIGHT, align 8
  %231 = sitofp i64 %230 to double
  %232 = call i32 @doit(double %226, double %227, double %228, double %229, double %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %233

233:                                              ; preds = %218, %211
  br label %332

234:                                              ; preds = %159
  %235 = load i64, i64* @Cflag, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %280

237:                                              ; preds = %234
  %238 = load i8**, i8*** %5, align 8
  %239 = load i32, i32* @ntp_optind, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call double @latlong(i8* %242, i32 1)
  store double %243, double* %8, align 8
  %244 = load i8**, i8*** %5, align 8
  %245 = load i32, i32* @ntp_optind, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %244, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call double @latlong(i8* %249, i32 0)
  store double %250, double* %9, align 8
  %251 = load i8*, i8** @chulat, align 8
  %252 = call double @latlong(i8* %251, i32 1)
  store double %252, double* %10, align 8
  %253 = load i8*, i8** @chulong, align 8
  %254 = call double @latlong(i8* %253, i32 0)
  store double %254, double* %11, align 8
  %255 = load i64, i64* @hflag, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %237
  %258 = load double, double* %8, align 8
  %259 = load double, double* %9, align 8
  %260 = load double, double* %10, align 8
  %261 = load double, double* %11, align 8
  %262 = load double, double* @height, align 8
  %263 = call i32 @doit(double %258, double %259, double %260, double %261, double %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %279

264:                                              ; preds = %237
  %265 = load double, double* %8, align 8
  %266 = load double, double* %9, align 8
  %267 = load double, double* %10, align 8
  %268 = load double, double* %11, align 8
  %269 = load i64, i64* @SUMMERHEIGHT, align 8
  %270 = sitofp i64 %269 to double
  %271 = call i32 @doit(double %265, double %266, double %267, double %268, double %270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %272 = load double, double* %8, align 8
  %273 = load double, double* %9, align 8
  %274 = load double, double* %10, align 8
  %275 = load double, double* %11, align 8
  %276 = load i64, i64* @WINTERHEIGHT, align 8
  %277 = sitofp i64 %276 to double
  %278 = call i32 @doit(double %272, double %273, double %274, double %275, double %277, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %279

279:                                              ; preds = %264, %257
  br label %331

280:                                              ; preds = %234
  %281 = load i64, i64* @Gflag, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %330

283:                                              ; preds = %280
  %284 = load i8*, i8** @goes_up_lat, align 8
  %285 = call double @latlong(i8* %284, i32 1)
  store double %285, double* %8, align 8
  %286 = load i8*, i8** @goes_up_long, align 8
  %287 = call double @latlong(i8* %286, i32 0)
  store double %287, double* %9, align 8
  %288 = load i8**, i8*** %5, align 8
  %289 = load i32, i32* @ntp_optind, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = call double @latlong(i8* %292, i32 1)
  store double %293, double* %12, align 8
  %294 = load i8**, i8*** %5, align 8
  %295 = load i32, i32* @ntp_optind, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %294, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = call double @latlong(i8* %299, i32 0)
  store double %300, double* %13, align 8
  %301 = load i8*, i8** @goes_sat_lat, align 8
  %302 = call double @latlong(i8* %301, i32 1)
  store double %302, double* %10, align 8
  %303 = load i8*, i8** @goes_west_long, align 8
  %304 = call double @latlong(i8* %303, i32 0)
  store double %304, double* %11, align 8
  %305 = load double, double* %8, align 8
  %306 = load double, double* %9, align 8
  %307 = load double, double* %10, align 8
  %308 = load double, double* %11, align 8
  %309 = load double, double* %12, align 8
  %310 = load double, double* %13, align 8
  %311 = call i32 @satdoit(double %305, double %306, double %307, double %308, double %309, double %310, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %312 = load i8*, i8** @goes_stby_long, align 8
  %313 = call double @latlong(i8* %312, i32 0)
  store double %313, double* %11, align 8
  %314 = load double, double* %8, align 8
  %315 = load double, double* %9, align 8
  %316 = load double, double* %10, align 8
  %317 = load double, double* %11, align 8
  %318 = load double, double* %12, align 8
  %319 = load double, double* %13, align 8
  %320 = call i32 @satdoit(double %314, double %315, double %316, double %317, double %318, double %319, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %321 = load i8*, i8** @goes_east_long, align 8
  %322 = call double @latlong(i8* %321, i32 0)
  store double %322, double* %11, align 8
  %323 = load double, double* %8, align 8
  %324 = load double, double* %9, align 8
  %325 = load double, double* %10, align 8
  %326 = load double, double* %11, align 8
  %327 = load double, double* %12, align 8
  %328 = load double, double* %13, align 8
  %329 = call i32 @satdoit(double %323, double %324, double %325, double %326, double %327, double %328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %330

330:                                              ; preds = %283, %280
  br label %331

331:                                              ; preds = %330, %279
  br label %332

332:                                              ; preds = %331, %233
  br label %333

333:                                              ; preds = %332, %158
  %334 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @init_lib(...) #1

declare dso_local i32 @ntp_getopt(i32, i8**, i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local double @latlong(i8*, i32) #1

declare dso_local i32 @doit(double, double, double, double, double, i8*) #1

declare dso_local i32 @satdoit(double, double, double, double, double, double, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
