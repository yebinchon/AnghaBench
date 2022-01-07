; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_camdebug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_camdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@CAM_BUS_WILDCARD = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_INFO = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_DEBUG_INFO = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_PERIPH = common dso_local global i32 0, align 4
@CAM_DEBUG_PERIPH = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_SUBTRACE = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_TRACE = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_XPT = common dso_local global i32 0, align 4
@CAM_DEBUG_XPT = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_CDB = common dso_local global i32 0, align 4
@CAM_DEBUG_CDB = common dso_local global i64 0, align 8
@CAM_ARG_DEBUG_PROBE = common dso_local global i32 0, align 4
@CAM_DEBUG_PROBE = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"you must specify \22off\22, \22all\22 or a bus,\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"bus:target, bus:target:lun or periph\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@CAM_DEBUG_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"you must specify \22all\22, \22off\22, or a bus,\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"bus:target, bus:target:lun or periph to debug\00", align 1
@XPT_DEVICE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"error opening transport layer device %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@XPT_DEBUG = common dso_local global i32 0, align 4
@CAMIOCOMMAND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"CAMIOCOMMAND ioctl failed\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"CAM debugging not available\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"you need to put options CAMDEBUG in your kernel config file!\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"XPT_DEBUG CCB failed with status %#x\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Debugging turned off\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Debugging enabled for %d:%d:%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @camdebug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camdebug(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.ccb, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @CAM_BUS_WILDCARD, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  store i64 %19, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %20 = call i32 @bzero(%union.ccb* %14, i32 32)
  br label %21

21:                                               ; preds = %93, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @getopt(i32 %22, i8** %23, i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %94

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %92 [
    i32 73, label %29
    i32 80, label %38
    i32 83, label %47
    i32 84, label %56
    i32 88, label %65
    i32 99, label %74
    i32 112, label %83
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @CAM_ARG_DEBUG_INFO, align 4
  %31 = load i32, i32* @arglist, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @arglist, align 4
  %33 = load i64, i64* @CAM_DEBUG_INFO, align 8
  %34 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %93

38:                                               ; preds = %27
  %39 = load i32, i32* @CAM_ARG_DEBUG_PERIPH, align 4
  %40 = load i32, i32* @arglist, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @arglist, align 4
  %42 = load i64, i64* @CAM_DEBUG_PERIPH, align 8
  %43 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %93

47:                                               ; preds = %27
  %48 = load i32, i32* @CAM_ARG_DEBUG_SUBTRACE, align 4
  %49 = load i32, i32* @arglist, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @arglist, align 4
  %51 = load i64, i64* @CAM_DEBUG_SUBTRACE, align 8
  %52 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %93

56:                                               ; preds = %27
  %57 = load i32, i32* @CAM_ARG_DEBUG_TRACE, align 4
  %58 = load i32, i32* @arglist, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @arglist, align 4
  %60 = load i64, i64* @CAM_DEBUG_TRACE, align 8
  %61 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %93

65:                                               ; preds = %27
  %66 = load i32, i32* @CAM_ARG_DEBUG_XPT, align 4
  %67 = load i32, i32* @arglist, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @arglist, align 4
  %69 = load i64, i64* @CAM_DEBUG_XPT, align 8
  %70 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %93

74:                                               ; preds = %27
  %75 = load i32, i32* @CAM_ARG_DEBUG_CDB, align 4
  %76 = load i32, i32* @arglist, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* @arglist, align 4
  %78 = load i64, i64* @CAM_DEBUG_CDB, align 8
  %79 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %81, %78
  store i64 %82, i64* %80, align 8
  br label %93

83:                                               ; preds = %27
  %84 = load i32, i32* @CAM_ARG_DEBUG_PROBE, align 4
  %85 = load i32, i32* @arglist, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* @arglist, align 4
  %87 = load i64, i64* @CAM_DEBUG_PROBE, align 8
  %88 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %93

92:                                               ; preds = %27
  br label %93

93:                                               ; preds = %92, %83, %74, %65, %56, %47, %38, %29
  br label %21

94:                                               ; preds = %21
  %95 = load i64, i64* @optind, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load i64, i64* @optind, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 %100
  store i8** %102, i8*** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %233

108:                                              ; preds = %94
  %109 = load i8**, i8*** %6, align 8
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %13, align 8
  br label %111

111:                                              ; preds = %123, %108
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @isspace(i8 signext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i1 [ false, %111 ], [ %120, %116 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %13, align 8
  br label %111

126:                                              ; preds = %121
  %127 = load i8*, i8** %13, align 8
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load i64, i64* @CAM_DEBUG_NONE, align 8
  %132 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* @CAM_ARG_DEBUG_INFO, align 4
  %135 = load i32, i32* @CAM_ARG_DEBUG_PERIPH, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CAM_ARG_DEBUG_TRACE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @CAM_ARG_DEBUG_SUBTRACE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CAM_ARG_DEBUG_XPT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @CAM_ARG_DEBUG_PROBE, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load i32, i32* @arglist, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* @arglist, align 4
  br label %157

148:                                              ; preds = %126
  %149 = load i8*, i8** %13, align 8
  %150 = call i32 @parse_btl(i8* %149, i32* %10, i32* %11, i64* %12, i32* @arglist)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %155 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %233

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %130
  %158 = load i32, i32* @XPT_DEVICE, align 4
  %159 = load i32, i32* @O_RDWR, align 4
  %160 = call i32 @open(i32 %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* @XPT_DEVICE, align 4
  %164 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @XPT_DEVICE, align 4
  %166 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  store i32 1, i32* %4, align 4
  br label %233

167:                                              ; preds = %157
  %168 = load i32, i32* @XPT_DEBUG, align 4
  %169 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %10, align 4
  %172 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %11, align 4
  %175 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i64, i64* %12, align 8
  %178 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @CAMIOCOMMAND, align 4
  %182 = call i32 @ioctl(i32 %180, i32 %181, %union.ccb* %14)
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %186

184:                                              ; preds = %167
  %185 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %229

186:                                              ; preds = %167
  %187 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CAM_STATUS_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @CAM_FUNC_NOTAVAIL, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %196 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %228

197:                                              ; preds = %186
  %198 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CAM_STATUS_MASK, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @CAM_REQ_CMP, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %197
  %206 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %208)
  store i32 1, i32* %15, align 4
  br label %227

210:                                              ; preds = %197
  %211 = bitcast %union.ccb* %14 to %struct.TYPE_4__*
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @CAM_DEBUG_NONE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* @stderr, align 4
  %218 = call i32 (i32, i8*, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %226

219:                                              ; preds = %210
  %220 = load i32, i32* @stderr, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i64, i64* %12, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %221, i32 %222, i32 %224)
  br label %226

226:                                              ; preds = %219, %216
  br label %227

227:                                              ; preds = %226, %205
  br label %228

228:                                              ; preds = %227, %194
  br label %229

229:                                              ; preds = %228, %184
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @close(i32 %230)
  %232 = load i32, i32* %15, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %229, %162, %153, %105
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_btl(i8*, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, %union.ccb*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
