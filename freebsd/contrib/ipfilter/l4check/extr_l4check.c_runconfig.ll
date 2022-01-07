; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/l4check/extr_l4check.c_runconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/l4check/extr_l4check.c_runconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_9__*, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@l4list = common dso_local global %struct.TYPE_9__* null, align 8
@frequency = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@opts = common dso_local global i32 0, align 4
@OPT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Connecting to %s,%d (fd %d)...\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"waiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@rtimeout = common dso_local global i64 0, align 8
@ctimeout = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"%d: Read timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Wait for read on fd %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%d: connect timeout\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Wait for write on fd %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Select: max fd %d wait %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Ready to read on fd %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Ready to write on fd %d\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @runconfig() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %3, align 4
  %13 = call i64 @time(i32* null)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @l4list, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %12, align 8
  br label %15

15:                                               ; preds = %115, %0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %119

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @frequency, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %114

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @AF_INET, align 4
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = call i32 @socket(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %115

41:                                               ; preds = %31
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_REUSEADDR, align 4
  %45 = call i32 @setsockopt(i32 %42, i32 %43, i32 %44, i32* %3, i32 4)
  %46 = load i32, i32* @opts, align 4
  %47 = load i32, i32* @OPT_VERBOSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @inet_ntoa(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ntohs(i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %50, %41
  %65 = load i32, i32* %2, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = bitcast %struct.TYPE_8__* %67 to %struct.sockaddr*
  %69 = call i32 @connect(i32 %65, %struct.sockaddr* %68, i32 8)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %99

71:                                               ; preds = %64
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EINPROGRESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* @opts, align 4
  %77 = load i32, i32* @OPT_VERBOSE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @close(i32 %85)
  store i32 -1, i32* %2, align 4
  br label %98

87:                                               ; preds = %71
  %88 = load i32, i32* @opts, align 4
  %89 = load i32, i32* @OPT_VERBOSE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i32 -2, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %83
  br label %110

99:                                               ; preds = %64
  %100 = load i32, i32* @opts, align 4
  %101 = load i32, i32* @OPT_VERBOSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %99
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %109 = call i32 @connectl4(%struct.TYPE_9__* %108)
  br label %110

110:                                              ; preds = %107, %98
  %111 = load i32, i32* %2, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %26, %18
  br label %115

115:                                              ; preds = %114, %40
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %12, align 8
  br label %15

119:                                              ; preds = %15
  %120 = call i32 @FD_ZERO(i32* %10)
  %121 = call i32 @FD_ZERO(i32* %11)
  %122 = load i64, i64* @rtimeout, align 8
  %123 = load i64, i64* @ctimeout, align 8
  %124 = call i32 @MIN(i64 %122, i64 %123)
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @l4list, align 8
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %12, align 8
  br label %128

128:                                              ; preds = %254, %119
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = icmp ne %struct.TYPE_9__* %129, null
  br i1 %130, label %131, label %258

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %184

136:                                              ; preds = %131
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load i64, i64* @rtimeout, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %136
  %145 = load i32, i32* @opts, align 4
  %146 = load i32, i32* @OPT_VERBOSE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @stderr, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %144
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %157 = call i32 (%struct.TYPE_9__*, ...) @closel4(%struct.TYPE_9__* %156, i32 1)
  br label %254

158:                                              ; preds = %136
  %159 = load i32, i32* @opts, align 4
  %160 = load i32, i32* @OPT_VERBOSE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load i32, i32* @stderr, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @FD_SET(i32 %172, i32* %10)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %179, %169
  br label %253

184:                                              ; preds = %131
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189, %184
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, -2
  br i1 %198, label %199, label %252

199:                                              ; preds = %194, %189
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, -2
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load i64, i64* %8, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %205, %208
  %210 = load i64, i64* @ctimeout, align 8
  %211 = icmp sgt i64 %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %204
  %213 = load i32, i32* @opts, align 4
  %214 = load i32, i32* @OPT_VERBOSE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load i32, i32* @stderr, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %217, %212
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %225 = call i32 (%struct.TYPE_9__*, ...) @closel4(%struct.TYPE_9__* %224)
  br label %254

226:                                              ; preds = %204, %199
  %227 = load i32, i32* @opts, align 4
  %228 = load i32, i32* @OPT_VERBOSE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32, i32* @stderr, align 4
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (i32, i8*, ...) @fprintf(i32 %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %231, %226
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @FD_SET(i32 %240, i32* %11)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %237
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %247, %237
  br label %252

252:                                              ; preds = %251, %194
  br label %253

253:                                              ; preds = %252, %183
  br label %254

254:                                              ; preds = %253, %223, %155
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  store %struct.TYPE_9__* %257, %struct.TYPE_9__** %12, align 8
  br label %128

258:                                              ; preds = %128
  %259 = load i32, i32* @opts, align 4
  %260 = load i32, i32* @OPT_VERBOSE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load i32, i32* @stderr, align 4
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  %267 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %264, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %266, i32 %268)
  br label %270

270:                                              ; preds = %263, %258
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  %273 = call i32 @select(i32 %272, i32* %10, i32* %11, i32* null, %struct.timeval* %7)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %350

278:                                              ; preds = %270
  %279 = call i64 @time(i32* null)
  store i64 %279, i64* %9, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** @l4list, align 8
  store %struct.TYPE_9__* %280, %struct.TYPE_9__** %12, align 8
  br label %281

281:                                              ; preds = %345, %278
  %282 = load i32, i32* %6, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %286 = icmp ne %struct.TYPE_9__* %285, null
  br label %287

287:                                              ; preds = %284, %281
  %288 = phi i1 [ false, %281 ], [ %286, %284 ]
  br i1 %288, label %289, label %349

289:                                              ; preds = %287
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %345

295:                                              ; preds = %289
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = call i64 @FD_ISSET(i32 %298, i32* %10)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %295
  %302 = load i32, i32* @opts, align 4
  %303 = load i32, i32* @OPT_VERBOSE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load i32, i32* @stderr, align 4
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (i32, i8*, ...) @fprintf(i32 %307, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %306, %301
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %314 = call i32 @readfd(%struct.TYPE_9__* %313)
  %315 = load i32, i32* %6, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %6, align 4
  br label %317

317:                                              ; preds = %312, %295
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = icmp sge i32 %320, 0
  br i1 %321, label %322, label %344

322:                                              ; preds = %317
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i64 @FD_ISSET(i32 %325, i32* %11)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %344

328:                                              ; preds = %322
  %329 = load i32, i32* @opts, align 4
  %330 = load i32, i32* @OPT_VERBOSE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = load i32, i32* @stderr, align 4
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = call i32 (i32, i8*, ...) @fprintf(i32 %334, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %337)
  br label %339

339:                                              ; preds = %333, %328
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %341 = call i32 @writefd(%struct.TYPE_9__* %340)
  %342 = load i32, i32* %6, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %6, align 4
  br label %344

344:                                              ; preds = %339, %322, %317
  br label %345

345:                                              ; preds = %344, %294
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 3
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  store %struct.TYPE_9__* %348, %struct.TYPE_9__** %12, align 8
  br label %281

349:                                              ; preds = %287
  store i32 0, i32* %1, align 4
  br label %350

350:                                              ; preds = %349, %276
  %351 = load i32, i32* %1, align 4
  ret i32 %351
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connectl4(%struct.TYPE_9__*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @closel4(%struct.TYPE_9__*, ...) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @readfd(%struct.TYPE_9__*) #1

declare dso_local i32 @writefd(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
