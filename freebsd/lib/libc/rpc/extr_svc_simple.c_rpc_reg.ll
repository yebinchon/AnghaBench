; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_simple.c_rpc_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_simple.c_rpc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proglst = type { i8*, i8*, i64, i8* (i8*)*, %struct.proglst*, i64, %struct.TYPE_5__*, i8*, i8*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.netconfig = type { i8* }
%struct.__rpc_sockinfo = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@NULLPROC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s can't reassign procedure number %u\00", align 1
@rpc_reg_msg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"netpath\00", align 1
@rpc_reg_err = common dso_local global i8* null, align 8
@__reg_err1 = common dso_local global i8* null, align 8
@proglst_lock = common dso_local global i32 0, align 4
@proglst = common dso_local global %struct.proglst* null, align 8
@RPC_ANYFD = common dso_local global i32 0, align 4
@__reg_err2 = common dso_local global i8* null, align 8
@__reg_err3 = common dso_local global i8* null, align 8
@__no_mem_str = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@universal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s couldn't register prog %u vers %u for %s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s can't find suitable transport for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_reg(i64 %0, i64 %1, i64 %2, i8* (i8*)* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8* (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.netconfig*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.proglst*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.__rpc_sockinfo, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* (i8*)* %3, i8* (i8*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @NULLPROC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* @rpc_reg_msg, align 4
  %32 = load i64, i64* @NULLPROC, align 8
  %33 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  store i32 -1, i32* %8, align 4
  br label %281

34:                                               ; preds = %7
  %35 = load i8*, i8** %15, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i8*, i8** %15, align 8
  %40 = call i8* @__rpc_setconf(i8* %39)
  store i8* %40, i8** %18, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** @rpc_reg_err, align 8
  %44 = load i32, i32* @rpc_reg_msg, align 4
  %45 = load i8*, i8** @__reg_err1, align 8
  %46 = call i32 (i8*, i32, ...) @warnx(i8* %43, i32 %44, i8* %45)
  store i32 -1, i32* %8, align 4
  br label %281

47:                                               ; preds = %38
  %48 = call i32 @mutex_lock(i32* @proglst_lock)
  br label %49

49:                                               ; preds = %233, %212, %117, %102, %95, %47
  %50 = load i8*, i8** %18, align 8
  %51 = call %struct.netconfig* @__rpc_getconf(i8* %50)
  store %struct.netconfig* %51, %struct.netconfig** %16, align 8
  %52 = icmp ne %struct.netconfig* %51, null
  br i1 %52, label %53, label %269

53:                                               ; preds = %49
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %21, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %20, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %23, align 8
  %55 = load %struct.proglst*, %struct.proglst** @proglst, align 8
  store %struct.proglst* %55, %struct.proglst** %19, align 8
  br label %56

56:                                               ; preds = %82, %53
  %57 = load %struct.proglst*, %struct.proglst** %19, align 8
  %58 = icmp ne %struct.proglst* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load %struct.proglst*, %struct.proglst** %19, align 8
  %61 = getelementptr inbounds %struct.proglst, %struct.proglst* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %64 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* %62, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = load %struct.proglst*, %struct.proglst** %19, align 8
  %70 = getelementptr inbounds %struct.proglst, %struct.proglst* %69, i32 0, i32 6
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %20, align 8
  %72 = load %struct.proglst*, %struct.proglst** %19, align 8
  %73 = getelementptr inbounds %struct.proglst, %struct.proglst* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %23, align 8
  %75 = load %struct.proglst*, %struct.proglst** %19, align 8
  %76 = getelementptr inbounds %struct.proglst, %struct.proglst* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %22, align 8
  %78 = load %struct.proglst*, %struct.proglst** %19, align 8
  %79 = getelementptr inbounds %struct.proglst, %struct.proglst* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %24, align 8
  br label %86

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.proglst*, %struct.proglst** %19, align 8
  %84 = getelementptr inbounds %struct.proglst, %struct.proglst* %83, i32 0, i32 4
  %85 = load %struct.proglst*, %struct.proglst** %84, align 8
  store %struct.proglst* %85, %struct.proglst** %19, align 8
  br label %56

86:                                               ; preds = %68, %56
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %88 = icmp eq %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %148

89:                                               ; preds = %86
  %90 = load i32, i32* @RPC_ANYFD, align 4
  %91 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %92 = call %struct.TYPE_5__* @svc_tli_create(i32 %90, %struct.netconfig* %91, i32* null, i32 0, i32 0)
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %20, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %94 = icmp eq %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %49

96:                                               ; preds = %89
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @__rpc_fd2sockinfo(i32 %99, %struct.__rpc_sockinfo* %25)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** @rpc_reg_err, align 8
  %104 = load i32, i32* @rpc_reg_msg, align 4
  %105 = load i8*, i8** @__reg_err2, align 8
  %106 = call i32 (i8*, i32, ...) @warnx(i8* %103, i32 %104, i8* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %108 = call i32 @SVC_DESTROY(%struct.TYPE_5__* %107)
  br label %49

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %25, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %25, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @__rpc_get_t_size(i32 %111, i32 %113, i32 0)
  store i64 %114, i64* %22, align 8
  %115 = load i64, i64* %22, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load i8*, i8** @rpc_reg_err, align 8
  %119 = load i32, i32* @rpc_reg_msg, align 4
  %120 = load i8*, i8** @__reg_err3, align 8
  %121 = call i32 (i8*, i32, ...) @warnx(i8* %118, i32 %119, i8* %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %123 = call i32 @SVC_DESTROY(%struct.TYPE_5__* %122)
  br label %49

124:                                              ; preds = %109
  %125 = load i64, i64* %22, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i8* @malloc(i32 %126)
  store i8* %127, i8** %23, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %131 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @strdup(i8* %132)
  store i8* %133, i8** %24, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %129, %124
  %136 = load i8*, i8** @rpc_reg_err, align 8
  %137 = load i32, i32* @rpc_reg_msg, align 4
  %138 = load i8*, i8** @__no_mem_str, align 8
  %139 = call i32 (i8*, i32, ...) @warnx(i8* %136, i32 %137, i8* %138)
  %140 = load i8*, i8** %23, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i8*, i8** %24, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %145 = call i32 @SVC_DESTROY(%struct.TYPE_5__* %144)
  br label %269

146:                                              ; preds = %129
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %21, align 4
  br label %148

148:                                              ; preds = %146, %86
  %149 = load %struct.proglst*, %struct.proglst** @proglst, align 8
  store %struct.proglst* %149, %struct.proglst** %19, align 8
  br label %150

150:                                              ; preds = %174, %148
  %151 = load %struct.proglst*, %struct.proglst** %19, align 8
  %152 = icmp ne %struct.proglst* %151, null
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load %struct.proglst*, %struct.proglst** %19, align 8
  %155 = getelementptr inbounds %struct.proglst, %struct.proglst* %154, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load %struct.proglst*, %struct.proglst** %19, align 8
  %161 = getelementptr inbounds %struct.proglst, %struct.proglst* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load %struct.proglst*, %struct.proglst** %19, align 8
  %167 = getelementptr inbounds %struct.proglst, %struct.proglst* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** %24, align 8
  %170 = call i64 @strcmp(i8* %168, i8* %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %178

173:                                              ; preds = %165, %159, %153
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.proglst*, %struct.proglst** %19, align 8
  %176 = getelementptr inbounds %struct.proglst, %struct.proglst* %175, i32 0, i32 4
  %177 = load %struct.proglst*, %struct.proglst** %176, align 8
  store %struct.proglst* %177, %struct.proglst** %19, align 8
  br label %150

178:                                              ; preds = %172, %150
  %179 = load %struct.proglst*, %struct.proglst** %19, align 8
  %180 = icmp eq %struct.proglst* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i64, i64* %9, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %185 = call i32 @rpcb_unset(i64 %182, i64 %183, %struct.netconfig* %184)
  br label %187

186:                                              ; preds = %178
  store %struct.netconfig* null, %struct.netconfig** %16, align 8
  br label %187

187:                                              ; preds = %186, %181
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load i32, i32* @universal, align 4
  %192 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %193 = call i32 @svc_reg(%struct.TYPE_5__* %188, i64 %189, i64 %190, i32 %191, %struct.netconfig* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %187
  %196 = load i32, i32* @rpc_reg_msg, align 4
  %197 = load i64, i64* %9, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i64, i64* %10, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i8*, i8** %24, align 8
  %202 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %198, i32 %200, i8* %201)
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %195
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %207 = call i32 @SVC_DESTROY(%struct.TYPE_5__* %206)
  %208 = load i8*, i8** %23, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load i8*, i8** %24, align 8
  %211 = call i32 @free(i8* %210)
  br label %212

212:                                              ; preds = %205, %195
  br label %49

213:                                              ; preds = %187
  %214 = call i8* @malloc(i32 88)
  %215 = bitcast i8* %214 to %struct.proglst*
  store %struct.proglst* %215, %struct.proglst** %19, align 8
  %216 = load %struct.proglst*, %struct.proglst** %19, align 8
  %217 = icmp eq %struct.proglst* %216, null
  br i1 %217, label %218, label %233

218:                                              ; preds = %213
  %219 = load i8*, i8** @rpc_reg_err, align 8
  %220 = load i32, i32* @rpc_reg_msg, align 4
  %221 = load i8*, i8** @__no_mem_str, align 8
  %222 = call i32 (i8*, i32, ...) @warnx(i8* %219, i32 %220, i8* %221)
  %223 = load i32, i32* %21, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %218
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %227 = call i32 @SVC_DESTROY(%struct.TYPE_5__* %226)
  %228 = load i8*, i8** %23, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i8*, i8** %24, align 8
  %231 = call i32 @free(i8* %230)
  br label %232

232:                                              ; preds = %225, %218
  br label %269

233:                                              ; preds = %213
  %234 = load i8* (i8*)*, i8* (i8*)** %12, align 8
  %235 = load %struct.proglst*, %struct.proglst** %19, align 8
  %236 = getelementptr inbounds %struct.proglst, %struct.proglst* %235, i32 0, i32 3
  store i8* (i8*)* %234, i8* (i8*)** %236, align 8
  %237 = load i64, i64* %9, align 8
  %238 = load %struct.proglst*, %struct.proglst** %19, align 8
  %239 = getelementptr inbounds %struct.proglst, %struct.proglst* %238, i32 0, i32 10
  store i64 %237, i64* %239, align 8
  %240 = load i64, i64* %10, align 8
  %241 = load %struct.proglst*, %struct.proglst** %19, align 8
  %242 = getelementptr inbounds %struct.proglst, %struct.proglst* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* %11, align 8
  %244 = load %struct.proglst*, %struct.proglst** %19, align 8
  %245 = getelementptr inbounds %struct.proglst, %struct.proglst* %244, i32 0, i32 9
  store i64 %243, i64* %245, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = load %struct.proglst*, %struct.proglst** %19, align 8
  %248 = getelementptr inbounds %struct.proglst, %struct.proglst* %247, i32 0, i32 8
  store i8* %246, i8** %248, align 8
  %249 = load i8*, i8** %14, align 8
  %250 = load %struct.proglst*, %struct.proglst** %19, align 8
  %251 = getelementptr inbounds %struct.proglst, %struct.proglst* %250, i32 0, i32 7
  store i8* %249, i8** %251, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %253 = load %struct.proglst*, %struct.proglst** %19, align 8
  %254 = getelementptr inbounds %struct.proglst, %struct.proglst* %253, i32 0, i32 6
  store %struct.TYPE_5__* %252, %struct.TYPE_5__** %254, align 8
  %255 = load i8*, i8** %23, align 8
  %256 = load %struct.proglst*, %struct.proglst** %19, align 8
  %257 = getelementptr inbounds %struct.proglst, %struct.proglst* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load i64, i64* %22, align 8
  %259 = load %struct.proglst*, %struct.proglst** %19, align 8
  %260 = getelementptr inbounds %struct.proglst, %struct.proglst* %259, i32 0, i32 5
  store i64 %258, i64* %260, align 8
  %261 = load i8*, i8** %24, align 8
  %262 = load %struct.proglst*, %struct.proglst** %19, align 8
  %263 = getelementptr inbounds %struct.proglst, %struct.proglst* %262, i32 0, i32 0
  store i8* %261, i8** %263, align 8
  %264 = load %struct.proglst*, %struct.proglst** @proglst, align 8
  %265 = load %struct.proglst*, %struct.proglst** %19, align 8
  %266 = getelementptr inbounds %struct.proglst, %struct.proglst* %265, i32 0, i32 4
  store %struct.proglst* %264, %struct.proglst** %266, align 8
  %267 = load %struct.proglst*, %struct.proglst** %19, align 8
  store %struct.proglst* %267, %struct.proglst** @proglst, align 8
  %268 = load i32, i32* @TRUE, align 4
  store i32 %268, i32* %17, align 4
  br label %49

269:                                              ; preds = %232, %135, %49
  %270 = load i8*, i8** %18, align 8
  %271 = call i32 @__rpc_endconf(i8* %270)
  %272 = call i32 @mutex_unlock(i32* @proglst_lock)
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* @FALSE, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %269
  %277 = load i32, i32* @rpc_reg_msg, align 4
  %278 = load i8*, i8** %15, align 8
  %279 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %277, i8* %278)
  store i32 -1, i32* %8, align 4
  br label %281

280:                                              ; preds = %269
  store i32 0, i32* %8, align 4
  br label %281

281:                                              ; preds = %280, %276, %42, %30
  %282 = load i32, i32* %8, align 4
  ret i32 %282
}

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i8* @__rpc_setconf(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.netconfig* @__rpc_getconf(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @svc_tli_create(i32, %struct.netconfig*, i32*, i32, i32) #1

declare dso_local i32 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @SVC_DESTROY(%struct.TYPE_5__*) #1

declare dso_local i64 @__rpc_get_t_size(i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rpcb_unset(i64, i64, %struct.netconfig*) #1

declare dso_local i32 @svc_reg(%struct.TYPE_5__*, i64, i64, i32, %struct.netconfig*) #1

declare dso_local i32 @__rpc_endconf(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
