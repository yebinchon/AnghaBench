; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsicmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsicmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.get_hook = type { i8**, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CAM_DIR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"scsicmd: error allocating ccb\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@iget = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_CMD_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"command must either be read or write, not both\00", align 1
@CAM_ARG_CMD_IN = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid number of input bytes %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"can't malloc memory for data_ptr\00", align 1
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid number of output bytes %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"error reading data from stdin\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@CAM_ARG_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@__const.scsicmd.warnstr = private unnamed_addr constant [22 x i8] c"error sending command\00", align 16
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@arg_put = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"error writing data to stdout\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"only wrote %u bytes out of %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i8**, i8*, i32, i32, i32)* @scsicmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsicmd(%struct.cam_device* %0, i32 %1, i8** %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.ccb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca [20 x i32], align 16
  %20 = alloca [12 x i32], align 16
  %21 = alloca %struct.get_hook, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca [22 x i8], align 16
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %44 = load i32, i32* @CAM_DIR_NONE, align 4
  store i32 %44, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i8* null, i8** %30, align 8
  store i8* null, i8** %32, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %45 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %46 = call %union.ccb* @cam_getccb(%struct.cam_device* %45)
  store %union.ccb* %46, %union.ccb** %16, align 8
  %47 = load %union.ccb*, %union.ccb** %16, align 8
  %48 = icmp eq %union.ccb* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %7
  %50 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %638

51:                                               ; preds = %7
  %52 = load %union.ccb*, %union.ccb** %16, align 8
  %53 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%union.ccb* %52)
  br label %54

54:                                               ; preds = %276, %51
  %55 = load i32, i32* %10, align 4
  %56 = load i8**, i8*** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @getopt(i32 %55, i8** %56, i8* %57)
  store i32 %58, i32* %22, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %277

60:                                               ; preds = %54
  %61 = load i32, i32* %22, align 4
  switch i32 %61, label %275 [
    i32 97, label %62
    i32 99, label %98
    i32 100, label %134
    i32 102, label %135
    i32 105, label %136
    i32 111, label %187
    i32 114, label %249
  ]

62:                                               ; preds = %60
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** %31, align 8
  br label %64

64:                                               ; preds = %76, %62
  %65 = load i8*, i8** %31, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @isspace(i8 signext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %31, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ false, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %31, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %31, align 8
  br label %64

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @optind, align 4
  %82 = sub nsw i32 %80, %81
  %83 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load i8**, i8*** %11, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 0
  store i8** %87, i8*** %88, align 8
  %89 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  store i32 0, i32* %89, align 8
  %90 = getelementptr inbounds [12 x i32], [12 x i32]* %20, i64 0, i64 0
  %91 = load i8*, i8** %31, align 8
  %92 = load i32, i32* @iget, align 4
  %93 = call i32 @buff_encode_visit(i32* %90, i32 48, i8* %91, i32 %92, %struct.get_hook* %21)
  store i32 %93, i32* %26, align 4
  %94 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @optind, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @optind, align 4
  br label %276

98:                                               ; preds = %60
  %99 = load i8*, i8** @optarg, align 8
  store i8* %99, i8** %31, align 8
  br label %100

100:                                              ; preds = %112, %98
  %101 = load i8*, i8** %31, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i32 @isspace(i8 signext %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %31, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i8*, i8** %31, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %31, align 8
  br label %100

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @optind, align 4
  %118 = sub nsw i32 %116, %117
  %119 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = load i8**, i8*** %11, align 8
  %121 = load i32, i32* @optind, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 0
  store i8** %123, i8*** %124, align 8
  %125 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds [20 x i32], [20 x i32]* %19, i64 0, i64 0
  %127 = load i8*, i8** %31, align 8
  %128 = load i32, i32* @iget, align 4
  %129 = call i32 @buff_encode_visit(i32* %126, i32 80, i8* %127, i32 %128, %struct.get_hook* %21)
  store i32 %129, i32* %25, align 4
  %130 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @optind, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* @optind, align 4
  br label %276

134:                                              ; preds = %60
  store i32 1, i32* %27, align 4
  br label %276

135:                                              ; preds = %60
  store i32 1, i32* %28, align 4
  br label %276

136:                                              ; preds = %60
  %137 = load i32, i32* @arglist, align 4
  %138 = load i32, i32* @CAM_ARG_CMD_OUT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %33, align 4
  br label %625

143:                                              ; preds = %136
  %144 = load i32, i32* @CAM_ARG_CMD_IN, align 4
  %145 = load i32, i32* @arglist, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* @arglist, align 4
  %147 = load i32, i32* @CAM_DIR_IN, align 4
  store i32 %147, i32* %17, align 4
  %148 = load i8*, i8** @optarg, align 8
  %149 = call i32 @strtol(i8* %148, i32* null, i32 0)
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %23, align 4
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %23, align 4
  %154 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  store i32 1, i32* %33, align 4
  br label %625

155:                                              ; preds = %143
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @optind, align 4
  %158 = sub nsw i32 %156, %157
  %159 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 2
  store i32 %158, i32* %159, align 4
  %160 = load i8**, i8*** %11, align 8
  %161 = load i32, i32* @optind, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 0
  store i8** %163, i8*** %164, align 8
  %165 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @optind, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @optind, align 4
  %168 = call i8* @cget(%struct.get_hook* %21, i32* null)
  store i8* %168, i8** %30, align 8
  %169 = load i8*, i8** %30, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %155
  %172 = load i8*, i8** %30, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 45
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 1, i32* %34, align 4
  br label %178

178:                                              ; preds = %177, %171, %155
  %179 = load i32, i32* %23, align 4
  %180 = call i64 @malloc(i32 %179)
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %18, align 8
  %182 = load i32*, i32** %18, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %33, align 4
  br label %625

186:                                              ; preds = %178
  br label %276

187:                                              ; preds = %60
  %188 = load i32, i32* @arglist, align 4
  %189 = load i32, i32* @CAM_ARG_CMD_IN, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %33, align 4
  br label %625

194:                                              ; preds = %187
  %195 = load i32, i32* @CAM_ARG_CMD_OUT, align 4
  %196 = load i32, i32* @arglist, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* @arglist, align 4
  %198 = load i32, i32* @CAM_DIR_OUT, align 4
  store i32 %198, i32* %17, align 4
  %199 = load i8*, i8** @optarg, align 8
  %200 = call i32 @strtol(i8* %199, i32* null, i32 0)
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %23, align 4
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %194
  %204 = load i32, i32* %23, align 4
  %205 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  store i32 1, i32* %33, align 4
  br label %625

206:                                              ; preds = %194
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @optind, align 4
  %209 = sub nsw i32 %207, %208
  %210 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 2
  store i32 %209, i32* %210, align 4
  %211 = load i8**, i8*** %11, align 8
  %212 = load i32, i32* @optind, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 0
  store i8** %214, i8*** %215, align 8
  %216 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  store i32 0, i32* %216, align 8
  %217 = call i8* @cget(%struct.get_hook* %21, i32* null)
  store i8* %217, i8** %30, align 8
  %218 = load i32, i32* %23, align 4
  %219 = call i64 @malloc(i32 %218)
  %220 = inttoptr i64 %219 to i32*
  store i32* %220, i32** %18, align 8
  %221 = load i32*, i32** %18, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %206
  %224 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %33, align 4
  br label %625

225:                                              ; preds = %206
  %226 = load i32*, i32** %18, align 8
  %227 = load i32, i32* %23, align 4
  %228 = call i32 @bzero(i32* %226, i32 %227)
  %229 = load i8*, i8** %30, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load i8*, i8** %30, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 0
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 45
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  store i32 1, i32* %34, align 4
  br label %244

238:                                              ; preds = %231, %225
  %239 = load i32*, i32** %18, align 8
  %240 = load i32, i32* %23, align 4
  %241 = load i8*, i8** %30, align 8
  %242 = load i32, i32* @iget, align 4
  %243 = call i32 @buff_encode_visit(i32* %239, i32 %240, i8* %241, i32 %242, %struct.get_hook* %21)
  br label %244

244:                                              ; preds = %238, %237
  %245 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @optind, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* @optind, align 4
  br label %276

249:                                              ; preds = %60
  store i32 1, i32* %29, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @optind, align 4
  %252 = sub nsw i32 %250, %251
  %253 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 2
  store i32 %252, i32* %253, align 4
  %254 = load i8**, i8*** %11, align 8
  %255 = load i32, i32* @optind, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %254, i64 %256
  %258 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 0
  store i8** %257, i8*** %258, align 8
  %259 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  store i32 0, i32* %259, align 8
  %260 = call i8* @cget(%struct.get_hook* %21, i32* null)
  store i8* %260, i8** %32, align 8
  %261 = load i8*, i8** %32, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %270

263:                                              ; preds = %249
  %264 = load i8*, i8** %32, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 45
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  store i32 1, i32* %35, align 4
  br label %270

270:                                              ; preds = %269, %263, %249
  %271 = getelementptr inbounds %struct.get_hook, %struct.get_hook* %21, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @optind, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* @optind, align 4
  br label %276

275:                                              ; preds = %60
  br label %276

276:                                              ; preds = %275, %270, %244, %186, %135, %134, %115, %79
  br label %54

277:                                              ; preds = %54
  %278 = load i32, i32* %34, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %310

280:                                              ; preds = %277
  %281 = load i32, i32* @arglist, align 4
  %282 = load i32, i32* @CAM_ARG_CMD_OUT, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %310

285:                                              ; preds = %280
  %286 = load i32, i32* %23, align 4
  store i32 %286, i32* %38, align 4
  %287 = load i32*, i32** %18, align 8
  store i32* %287, i32** %39, align 8
  store i32 0, i32* %37, align 4
  br label %288

288:                                              ; preds = %304, %285
  %289 = load i32, i32* %38, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %288
  %292 = load i32, i32* %37, align 4
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %33, align 4
  br label %625

296:                                              ; preds = %291
  %297 = load i32, i32* %37, align 4
  %298 = load i32, i32* %38, align 4
  %299 = sub nsw i32 %298, %297
  store i32 %299, i32* %38, align 4
  %300 = load i32, i32* %37, align 4
  %301 = load i32*, i32** %39, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %39, align 8
  br label %304

304:                                              ; preds = %296
  %305 = load i32, i32* @STDIN_FILENO, align 4
  %306 = load i32*, i32** %39, align 8
  %307 = load i32, i32* %38, align 4
  %308 = call i32 @read(i32 %305, i32* %306, i32 %307)
  store i32 %308, i32* %37, align 4
  br label %288

309:                                              ; preds = %288
  br label %310

310:                                              ; preds = %309, %280, %277
  %311 = load i32, i32* @arglist, align 4
  %312 = load i32, i32* @CAM_ARG_ERR_RECOVER, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %317 = load i32, i32* %17, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %17, align 4
  br label %319

319:                                              ; preds = %315, %310
  %320 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %321 = load i32, i32* %17, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %17, align 4
  %323 = load i32, i32* %25, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %360

325:                                              ; preds = %319
  %326 = getelementptr inbounds [20 x i32], [20 x i32]* %19, i64 0, i64 0
  %327 = load i32, i32* %326, align 16
  %328 = ashr i32 %327, 5
  %329 = and i32 %328, 7
  switch i32 %329, label %335 [
    i32 0, label %330
    i32 1, label %331
    i32 2, label %331
    i32 3, label %332
    i32 6, label %332
    i32 7, label %332
    i32 4, label %333
    i32 5, label %334
  ]

330:                                              ; preds = %325
  store i32 6, i32* %25, align 4
  br label %335

331:                                              ; preds = %325, %325
  store i32 10, i32* %25, align 4
  br label %335

332:                                              ; preds = %325, %325, %325
  br label %335

333:                                              ; preds = %325
  store i32 16, i32* %25, align 4
  br label %335

334:                                              ; preds = %325
  store i32 12, i32* %25, align 4
  br label %335

335:                                              ; preds = %325, %334, %333, %332, %331, %330
  %336 = getelementptr inbounds [20 x i32], [20 x i32]* %19, i64 0, i64 0
  %337 = load %union.ccb*, %union.ccb** %16, align 8
  %338 = bitcast %union.ccb* %337 to %struct.TYPE_11__*
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 0
  %341 = load i32, i32* %25, align 4
  %342 = call i32 @bcopy(i32* %336, i32* %340, i32 %341)
  %343 = load %union.ccb*, %union.ccb** %16, align 8
  %344 = bitcast %union.ccb* %343 to %struct.TYPE_11__*
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %13, align 4
  %348 = load i32*, i32** %18, align 8
  %349 = load i32, i32* %23, align 4
  %350 = load i32, i32* @SSD_FULL_SIZE, align 4
  %351 = load i32, i32* %25, align 4
  %352 = load i32, i32* %15, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %335
  %355 = load i32, i32* %15, align 4
  br label %357

356:                                              ; preds = %335
  br label %357

357:                                              ; preds = %356, %354
  %358 = phi i32 [ %355, %354 ], [ 5000, %356 ]
  %359 = call i32 @cam_fill_csio(%struct.TYPE_11__* %344, i32 %345, i32* null, i32 %346, i32 %347, i32* %348, i32 %349, i32 %350, i32 %351, i32 %358)
  br label %415

360:                                              ; preds = %319
  store i32 12, i32* %26, align 4
  %361 = getelementptr inbounds [12 x i32], [12 x i32]* %20, i64 0, i64 0
  %362 = load %union.ccb*, %union.ccb** %16, align 8
  %363 = bitcast %union.ccb* %362 to %struct.TYPE_12__*
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 1
  %366 = load i32, i32* %26, align 4
  %367 = call i32 @bcopy(i32* %361, i32* %365, i32 %366)
  %368 = load i32, i32* %29, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %360
  %371 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %372 = load %union.ccb*, %union.ccb** %16, align 8
  %373 = bitcast %union.ccb* %372 to %struct.TYPE_12__*
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = or i32 %376, %371
  store i32 %377, i32* %375, align 4
  br label %378

378:                                              ; preds = %370, %360
  %379 = load i32, i32* %27, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %378
  %382 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %383 = load %union.ccb*, %union.ccb** %16, align 8
  %384 = bitcast %union.ccb* %383 to %struct.TYPE_12__*
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %382
  store i32 %388, i32* %386, align 4
  br label %389

389:                                              ; preds = %381, %378
  %390 = load i32, i32* %28, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %389
  %393 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %394 = load %union.ccb*, %union.ccb** %16, align 8
  %395 = bitcast %union.ccb* %394 to %struct.TYPE_12__*
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = or i32 %398, %393
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %392, %389
  %401 = load %union.ccb*, %union.ccb** %16, align 8
  %402 = bitcast %union.ccb* %401 to %struct.TYPE_12__*
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* %17, align 4
  %405 = load i32*, i32** %18, align 8
  %406 = load i32, i32* %23, align 4
  %407 = load i32, i32* %15, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %400
  %410 = load i32, i32* %15, align 4
  br label %412

411:                                              ; preds = %400
  br label %412

412:                                              ; preds = %411, %409
  %413 = phi i32 [ %410, %409 ], [ 5000, %411 ]
  %414 = call i32 @cam_fill_ataio(%struct.TYPE_12__* %402, i32 %403, i32* null, i32 %404, i32 0, i32* %405, i32 %406, i32 %413)
  br label %415

415:                                              ; preds = %412, %357
  %416 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %417 = load %union.ccb*, %union.ccb** %16, align 8
  %418 = call i32 @cam_send_ccb(%struct.cam_device* %416, %union.ccb* %417)
  store i32 %418, i32* %36, align 4
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %429, label %420

420:                                              ; preds = %415
  %421 = load %union.ccb*, %union.ccb** %16, align 8
  %422 = bitcast %union.ccb* %421 to %struct.TYPE_10__*
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @CAM_STATUS_MASK, align 4
  %426 = and i32 %424, %425
  %427 = load i32, i32* @CAM_REQ_CMP, align 4
  %428 = icmp ne i32 %426, %427
  br i1 %428, label %429, label %452

429:                                              ; preds = %420, %415
  %430 = bitcast [22 x i8]* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %430, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.scsicmd.warnstr, i32 0, i32 0), i64 22, i1 false)
  %431 = load i32, i32* %36, align 4
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = getelementptr inbounds [22 x i8], [22 x i8]* %40, i64 0, i64 0
  %435 = call i32 @warn(i8* %434)
  br label %439

436:                                              ; preds = %429
  %437 = getelementptr inbounds [22 x i8], [22 x i8]* %40, i64 0, i64 0
  %438 = call i32 (i8*, ...) @warnx(i8* %437)
  br label %439

439:                                              ; preds = %436, %433
  %440 = load i32, i32* @arglist, align 4
  %441 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %451

444:                                              ; preds = %439
  %445 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %446 = load %union.ccb*, %union.ccb** %16, align 8
  %447 = load i32, i32* @CAM_ESF_ALL, align 4
  %448 = load i32, i32* @CAM_EPF_ALL, align 4
  %449 = load i32, i32* @stderr, align 4
  %450 = call i32 @cam_error_print(%struct.cam_device* %445, %union.ccb* %446, i32 %447, i32 %448, i32 %449)
  br label %451

451:                                              ; preds = %444, %439
  store i32 1, i32* %33, align 4
  br label %625

452:                                              ; preds = %420
  %453 = load i32, i32* %26, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %532

455:                                              ; preds = %452
  %456 = load i32, i32* %29, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %532

458:                                              ; preds = %455
  %459 = load i32, i32* %35, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %471

461:                                              ; preds = %458
  %462 = load %union.ccb*, %union.ccb** %16, align 8
  %463 = bitcast %union.ccb* %462 to %struct.TYPE_12__*
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 0
  %466 = load i8*, i8** %32, align 8
  %467 = load i32, i32* @arg_put, align 4
  %468 = call i32 @buff_decode_visit(i32* %465, i32 11, i8* %466, i32 %467, i32* null)
  %469 = load i32, i32* @stdout, align 4
  %470 = call i32 (i32, i8*, ...) @fprintf(i32 %469, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %531

471:                                              ; preds = %458
  %472 = load i32, i32* @stdout, align 4
  %473 = load %union.ccb*, %union.ccb** %16, align 8
  %474 = bitcast %union.ccb* %473 to %struct.TYPE_12__*
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = load %union.ccb*, %union.ccb** %16, align 8
  %479 = bitcast %union.ccb* %478 to %struct.TYPE_12__*
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load %union.ccb*, %union.ccb** %16, align 8
  %484 = bitcast %union.ccb* %483 to %struct.TYPE_12__*
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 2
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = load %union.ccb*, %union.ccb** %16, align 8
  %489 = bitcast %union.ccb* %488 to %struct.TYPE_12__*
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 4
  %493 = load %union.ccb*, %union.ccb** %16, align 8
  %494 = bitcast %union.ccb* %493 to %struct.TYPE_12__*
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 4
  %498 = load %union.ccb*, %union.ccb** %16, align 8
  %499 = bitcast %union.ccb* %498 to %struct.TYPE_12__*
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 4
  %503 = load %union.ccb*, %union.ccb** %16, align 8
  %504 = bitcast %union.ccb* %503 to %struct.TYPE_12__*
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 6
  %507 = load i32, i32* %506, align 4
  %508 = load %union.ccb*, %union.ccb** %16, align 8
  %509 = bitcast %union.ccb* %508 to %struct.TYPE_12__*
  %510 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i32 0, i32 7
  %512 = load i32, i32* %511, align 4
  %513 = load %union.ccb*, %union.ccb** %16, align 8
  %514 = bitcast %union.ccb* %513 to %struct.TYPE_12__*
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 8
  %517 = load i32, i32* %516, align 4
  %518 = load %union.ccb*, %union.ccb** %16, align 8
  %519 = bitcast %union.ccb* %518 to %struct.TYPE_12__*
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 9
  %522 = load i32, i32* %521, align 4
  %523 = load %union.ccb*, %union.ccb** %16, align 8
  %524 = bitcast %union.ccb* %523 to %struct.TYPE_12__*
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 10
  %527 = load i32, i32* %526, align 4
  %528 = call i32 (i32, i8*, ...) @fprintf(i32 %472, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %477, i32 %482, i32 %487, i32 %492, i32 %497, i32 %502, i32 %507, i32 %512, i32 %517, i32 %522, i32 %527)
  %529 = load i32, i32* @stdout, align 4
  %530 = call i32 @fflush(i32 %529)
  br label %531

531:                                              ; preds = %471, %461
  br label %532

532:                                              ; preds = %531, %455, %452
  %533 = load i32, i32* %25, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %545

535:                                              ; preds = %532
  %536 = load %union.ccb*, %union.ccb** %16, align 8
  %537 = bitcast %union.ccb* %536 to %struct.TYPE_11__*
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = load %union.ccb*, %union.ccb** %16, align 8
  %541 = bitcast %union.ccb* %540 to %struct.TYPE_11__*
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sub nsw i32 %539, %543
  store i32 %544, i32* %24, align 4
  br label %555

545:                                              ; preds = %532
  %546 = load %union.ccb*, %union.ccb** %16, align 8
  %547 = bitcast %union.ccb* %546 to %struct.TYPE_12__*
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load %union.ccb*, %union.ccb** %16, align 8
  %551 = bitcast %union.ccb* %550 to %struct.TYPE_12__*
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = sub nsw i32 %549, %553
  store i32 %554, i32* %24, align 4
  br label %555

555:                                              ; preds = %545, %535
  %556 = load %union.ccb*, %union.ccb** %16, align 8
  %557 = bitcast %union.ccb* %556 to %struct.TYPE_10__*
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @CAM_STATUS_MASK, align 4
  %561 = and i32 %559, %560
  %562 = load i32, i32* @CAM_REQ_CMP, align 4
  %563 = icmp eq i32 %561, %562
  br i1 %563, label %564, label %624

564:                                              ; preds = %555
  %565 = load i32, i32* @arglist, align 4
  %566 = load i32, i32* @CAM_ARG_CMD_IN, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %624

569:                                              ; preds = %564
  %570 = load i32, i32* %24, align 4
  %571 = icmp sgt i32 %570, 0
  br i1 %571, label %572, label %624

572:                                              ; preds = %569
  %573 = load i32, i32* %34, align 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %583

575:                                              ; preds = %572
  %576 = load i32*, i32** %18, align 8
  %577 = load i32, i32* %24, align 4
  %578 = load i8*, i8** %30, align 8
  %579 = load i32, i32* @arg_put, align 4
  %580 = call i32 @buff_decode_visit(i32* %576, i32 %577, i8* %578, i32 %579, i32* null)
  %581 = load i32, i32* @stdout, align 4
  %582 = call i32 (i32, i8*, ...) @fprintf(i32 %581, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %623

583:                                              ; preds = %572
  %584 = load i32, i32* %24, align 4
  store i32 %584, i32* %42, align 4
  %585 = load i32*, i32** %18, align 8
  store i32* %585, i32** %43, align 8
  store i32 0, i32* %41, align 4
  br label %586

586:                                              ; preds = %596, %583
  %587 = load i32, i32* %42, align 4
  %588 = icmp sgt i32 %587, 0
  br i1 %588, label %589, label %594

589:                                              ; preds = %586
  %590 = load i32*, i32** %43, align 8
  %591 = load i32, i32* %42, align 4
  %592 = call i32 @write(i32 1, i32* %590, i32 %591)
  store i32 %592, i32* %41, align 4
  %593 = icmp sgt i32 %592, 0
  br label %594

594:                                              ; preds = %589, %586
  %595 = phi i1 [ false, %586 ], [ %593, %589 ]
  br i1 %595, label %596, label %604

596:                                              ; preds = %594
  %597 = load i32, i32* %41, align 4
  %598 = load i32, i32* %42, align 4
  %599 = sub nsw i32 %598, %597
  store i32 %599, i32* %42, align 4
  %600 = load i32, i32* %41, align 4
  %601 = load i32*, i32** %43, align 8
  %602 = sext i32 %600 to i64
  %603 = getelementptr inbounds i32, i32* %601, i64 %602
  store i32* %603, i32** %43, align 8
  br label %586

604:                                              ; preds = %594
  %605 = load i32, i32* %41, align 4
  %606 = icmp eq i32 %605, -1
  br i1 %606, label %607, label %609

607:                                              ; preds = %604
  %608 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %33, align 4
  br label %625

609:                                              ; preds = %604
  %610 = load i32, i32* %41, align 4
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %621

612:                                              ; preds = %609
  %613 = load i32, i32* %42, align 4
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %621

615:                                              ; preds = %612
  %616 = load i32, i32* %24, align 4
  %617 = load i32, i32* %42, align 4
  %618 = sub nsw i32 %616, %617
  %619 = load i32, i32* %24, align 4
  %620 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %618, i32 %619)
  br label %621

621:                                              ; preds = %615, %612, %609
  br label %622

622:                                              ; preds = %621
  br label %623

623:                                              ; preds = %622, %575
  br label %624

624:                                              ; preds = %623, %569, %564, %555
  br label %625

625:                                              ; preds = %624, %607, %451, %294, %223, %203, %192, %184, %152, %141
  %626 = load i32, i32* %23, align 4
  %627 = icmp sgt i32 %626, 0
  br i1 %627, label %628, label %634

628:                                              ; preds = %625
  %629 = load i32*, i32** %18, align 8
  %630 = icmp ne i32* %629, null
  br i1 %630, label %631, label %634

631:                                              ; preds = %628
  %632 = load i32*, i32** %18, align 8
  %633 = call i32 @free(i32* %632)
  br label %634

634:                                              ; preds = %631, %628, %625
  %635 = load %union.ccb*, %union.ccb** %16, align 8
  %636 = call i32 @cam_freeccb(%union.ccb* %635)
  %637 = load i32, i32* %33, align 4
  store i32 %637, i32* %8, align 4
  br label %638

638:                                              ; preds = %634, %49
  %639 = load i32, i32* %8, align 4
  ret i32 %639
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%union.ccb*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @buff_encode_visit(i32*, i32, i8*, i32, %struct.get_hook*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @cget(%struct.get_hook*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.TYPE_11__*, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cam_fill_ataio(%struct.TYPE_12__*, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @buff_decode_visit(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
