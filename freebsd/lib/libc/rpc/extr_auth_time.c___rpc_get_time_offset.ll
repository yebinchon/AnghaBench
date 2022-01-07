; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_time.c___rpc_get_time_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_time.c___rpc_get_time_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"both timehost and srv pointer used!\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to contruct server data.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"no acceptable transport endpoints.\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%d.%d.%d.%d.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%d.%d.%d.%d.0.111\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"unable to translate uaddr to sockaddr.\00", align 1
@RPCBPROG = common dso_local global i32 0, align 4
@RPCBVERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"unable to create client handle to rpcbind.\00", align 1
@RPCBPROC_GETTIME = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_u_long = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"%d.%d.%d.%d.0.37\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"cannot convert timeservice uaddr to sockaddr.\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"unable to open fd to network.\00", align 1
@__const.__rpc_get_time_offset.timeout = private unnamed_addr constant %struct.timeval { i32 20, i32 0, i64 0, i32 0 }, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"udp : sendto failed.\00", align 1
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"recvfrom failed on udp transport.\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@saw_alarm = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"failed to connect to tcp endpoint.\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"alarm caught it, must be unreachable.\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"timed out TCP call.\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"wrong size of results returned\00", align 1
@TOFFSET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"unable to get the server's time.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_get_time_offset(%struct.timeval* %0, %struct.TYPE_10__* %1, i8* %2, i8** %3, %struct.sockaddr_in* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [64 x i8], align 16
  %31 = alloca [64 x i8], align 16
  %32 = alloca [32 x %struct.TYPE_11__], align 16
  %33 = alloca %struct.TYPE_10__, align 8
  %34 = alloca void (i32)*, align 8
  %35 = alloca %struct.sockaddr_in, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.timeval, align 8
  %41 = alloca %struct.sockaddr_in, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.sockaddr_in* %4, %struct.sockaddr_in** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store void (i32)* null, void (i32)** %34, align 8
  %45 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %45, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %46 = load %struct.timeval*, %struct.timeval** %7, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.timeval*, %struct.timeval** %7, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i8**, i8*** %10, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %169

53:                                               ; preds = %5
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %439

61:                                               ; preds = %56, %53
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = icmp ne %struct.TYPE_10__* %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds [32 x %struct.TYPE_11__], [32 x %struct.TYPE_11__]* %32, i64 0, i64 0
  %68 = call %struct.TYPE_10__* @get_server(%struct.sockaddr_in* %65, i8* %66, %struct.TYPE_10__* %33, %struct.TYPE_11__* %67, i32 32)
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %8, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = icmp eq %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 @msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %439

73:                                               ; preds = %64
  store i32 1, i32* %21, align 4
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %13, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %120, %74
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* %24, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %25, align 4
  %92 = icmp eq i32 %91, -1
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i1 [ true, %87 ], [ %92, %90 ]
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i1 [ false, %83 ], [ %94, %93 ]
  br i1 %96, label %97, label %123

97:                                               ; preds = %95
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @strcasecmp(i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %24, align 4
  br label %108

108:                                              ; preds = %106, %97
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @strcasecmp(i32 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %25, align 4
  br label %119

119:                                              ; preds = %117, %108
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %83

123:                                              ; preds = %95
  %124 = load i32, i32* %25, align 4
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %14, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %132 = load i32, i32* %25, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %15, align 8
  %137 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %137, i32* %38, align 4
  br label %154

138:                                              ; preds = %123
  %139 = load i32, i32* %24, align 4
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %143 = load i32, i32* %24, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 %144
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %14, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %147 = load i32, i32* %24, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %15, align 8
  %152 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %152, i32* %38, align 4
  br label %153

153:                                              ; preds = %141, %138
  br label %154

154:                                              ; preds = %153, %126
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %156 = icmp eq %struct.TYPE_11__* %155, null
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = call i32 @msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = getelementptr inbounds [32 x %struct.TYPE_11__], [32 x %struct.TYPE_11__]* %32, i64 0, i64 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @free_eps(%struct.TYPE_11__* %162, i32 %165)
  br label %167

167:                                              ; preds = %161, %157
  store i32 0, i32* %6, align 4
  br label %439

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168, %5
  %170 = load i8**, i8*** %10, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i8**, i8*** %10, align 8
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %15, align 8
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i8*, i8** %15, align 8
  %178 = call i32 @sscanf(i8* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %26, i32* %27, i32* %28, i32* %29)
  %179 = getelementptr inbounds [64 x i8], [64 x i8]* %31, i64 0, i64 0
  %180 = load i32, i32* %26, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %28, align 4
  %183 = load i32, i32* %29, align 4
  %184 = call i32 @sprintf(i8* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %31, i64 0, i64 0
  store i8* %185, i8** %15, align 8
  %186 = bitcast %struct.sockaddr_in* %35 to i8*
  %187 = call i32 @bzero(i8* %186, i32 4)
  %188 = load i8*, i8** %15, align 8
  %189 = call i64 @uaddr_to_sockaddr(i8* %188, %struct.sockaddr_in* %35)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %176
  %192 = call i32 @msg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32, i32* %21, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = getelementptr inbounds [32 x %struct.TYPE_11__], [32 x %struct.TYPE_11__]* %32, i64 0, i64 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @free_eps(%struct.TYPE_11__* %196, i32 %199)
  br label %201

201:                                              ; preds = %195, %191
  store i32 0, i32* %6, align 4
  br label %439

202:                                              ; preds = %176
  %203 = load i32, i32* @RPCBPROG, align 4
  %204 = load i32, i32* @RPCBVERS, align 4
  %205 = call i32* @clnttcp_create(%struct.sockaddr_in* %35, i32 %203, i32 %204, i32* %37, i32 0, i32 0)
  store i32* %205, i32** %12, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %219

208:                                              ; preds = %202
  %209 = call i32 @msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %210 = load i32, i32* %21, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = getelementptr inbounds [32 x %struct.TYPE_11__], [32 x %struct.TYPE_11__]* %32, i64 0, i64 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @free_eps(%struct.TYPE_11__* %213, i32 %216)
  br label %218

218:                                              ; preds = %212, %208
  store i32 0, i32* %6, align 4
  br label %439

219:                                              ; preds = %202
  %220 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i32 5, i32* %220, align 8
  %221 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 2
  store i64 0, i64* %221, align 8
  store i32 0, i32* %23, align 4
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* @RPCBPROC_GETTIME, align 4
  %224 = load i64, i64* @xdr_void, align 8
  %225 = trunc i64 %224 to i32
  %226 = load i64, i64* @xdr_u_long, align 8
  %227 = trunc i64 %226 to i32
  %228 = call i32 @clnt_call(i32* %222, i32 %223, i32 %225, i32* null, i32 %227, i32* %19, %struct.timeval* byval(%struct.timeval) align 8 %22)
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* @RPC_SUCCESS, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  store i32 1, i32* %23, align 4
  br label %352

233:                                              ; preds = %219
  %234 = load i32*, i32** %12, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32*, i32** %12, align 8
  %238 = call i32 @clnt_destroy(i32* %237)
  store i32* null, i32** %12, align 8
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i8*, i8** %15, align 8
  %241 = call i32 @sscanf(i8* %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %26, i32* %27, i32* %28, i32* %29)
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %30, i64 0, i64 0
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* %27, align 4
  %245 = load i32, i32* %28, align 4
  %246 = load i32, i32* %29, align 4
  %247 = call i32 @sprintf(i8* %242, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = getelementptr inbounds [64 x i8], [64 x i8]* %30, i64 0, i64 0
  %249 = call i64 @uaddr_to_sockaddr(i8* %248, %struct.sockaddr_in* %35)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %239
  %252 = call i32 @msg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %354

253:                                              ; preds = %239
  %254 = load i32, i32* @AF_INET, align 4
  %255 = load i32, i32* %38, align 4
  %256 = call i32 @_socket(i32 %254, i32 %255, i32 0)
  store i32 %256, i32* %37, align 4
  %257 = load i32, i32* %37, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = call i32 @msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %354

261:                                              ; preds = %253
  %262 = load i32, i32* %38, align 4
  %263 = load i32, i32* @SOCK_DGRAM, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %303

265:                                              ; preds = %261
  %266 = bitcast %struct.timeval* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 8 bitcast (%struct.timeval* @__const.__rpc_get_time_offset.timeout to i8*), i64 24, i1 false)
  %267 = load i32, i32* %37, align 4
  %268 = bitcast %struct.sockaddr_in* %35 to %struct.sockaddr*
  %269 = call i32 @_sendto(i32 %267, i32* %19, i32 4, i32 0, %struct.sockaddr* %268, i32 4)
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call i32 @msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %354

273:                                              ; preds = %265
  br label %274

274:                                              ; preds = %287, %273
  %275 = call i32 @FD_ZERO(i32* %42)
  %276 = load i32, i32* %37, align 4
  %277 = call i32 @FD_SET(i32 %276, i32* %42)
  %278 = call i32 (...) @_rpc_dtablesize()
  %279 = call i32 @_select(i32 %278, i32* %42, i32* null, i32* null, %struct.timeval* %40)
  store i32 %279, i32* %43, align 4
  br label %280

280:                                              ; preds = %274
  %281 = load i32, i32* %43, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i32, i32* @errno, align 4
  %285 = load i32, i32* @EINTR, align 4
  %286 = icmp eq i32 %284, %285
  br label %287

287:                                              ; preds = %283, %280
  %288 = phi i1 [ false, %280 ], [ %286, %283 ]
  br i1 %288, label %274, label %289

289:                                              ; preds = %287
  %290 = load i32, i32* %43, align 4
  %291 = icmp sle i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %354

293:                                              ; preds = %289
  store i32 4, i32* %36, align 4
  %294 = load i32, i32* %37, align 4
  %295 = bitcast i32* %19 to i8*
  %296 = bitcast %struct.sockaddr_in* %41 to %struct.sockaddr*
  %297 = call i32 @_recvfrom(i32 %294, i8* %295, i32 4, i32 0, %struct.sockaddr* %296, i32* %36)
  store i32 %297, i32* %43, align 4
  %298 = load i32, i32* %43, align 4
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %302

300:                                              ; preds = %293
  %301 = call i32 @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  br label %354

302:                                              ; preds = %293
  store i32 1, i32* %23, align 4
  br label %336

303:                                              ; preds = %261
  %304 = load i32, i32* @SIGALRM, align 4
  %305 = call i64 @signal(i32 %304, void (i32)* @alarm_hndler)
  %306 = inttoptr i64 %305 to void (i32)*
  store void (i32)* %306, void (i32)** %34, align 8
  store i64 0, i64* @saw_alarm, align 8
  %307 = call i32 @alarm(i32 20)
  %308 = load i32, i32* %37, align 4
  %309 = bitcast %struct.sockaddr_in* %35 to %struct.sockaddr*
  %310 = call i32 @_connect(i32 %308, %struct.sockaddr* %309, i32 4)
  store i32 %310, i32* %44, align 4
  %311 = load i32, i32* %44, align 4
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %315

313:                                              ; preds = %303
  %314 = call i32 @msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %354

315:                                              ; preds = %303
  %316 = load i64, i64* @saw_alarm, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %315
  %319 = call i32 @msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  br label %354

320:                                              ; preds = %315
  %321 = load i32, i32* %37, align 4
  %322 = bitcast i32* %19 to i8*
  %323 = call i32 @_read(i32 %321, i8* %322, i32 4)
  store i32 %323, i32* %44, align 4
  %324 = load i32, i32* %44, align 4
  %325 = sext i32 %324 to i64
  %326 = icmp ne i64 %325, 4
  br i1 %326, label %327, label %335

327:                                              ; preds = %320
  %328 = load i64, i64* @saw_alarm, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = call i32 @msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %334

332:                                              ; preds = %327
  %333 = call i32 @msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %330
  br label %354

335:                                              ; preds = %320
  store i32 1, i32* %23, align 4
  br label %336

336:                                              ; preds = %335, %302
  %337 = load i32, i32* @errno, align 4
  store i32 %337, i32* %39, align 4
  %338 = load i32, i32* %37, align 4
  %339 = call i32 @_close(i32 %338)
  %340 = load i32, i32* %39, align 4
  store i32 %340, i32* @errno, align 4
  %341 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %341, i32* %37, align 4
  %342 = load i32, i32* %23, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %336
  %345 = load i32, i32* %19, align 4
  %346 = call i32 @ntohl(i32 %345)
  store i32 %346, i32* %19, align 4
  %347 = load i32, i32* %19, align 4
  %348 = load i32, i32* @TOFFSET, align 4
  %349 = sub nsw i32 %347, %348
  store i32 %349, i32* %19, align 4
  br label %351

350:                                              ; preds = %336
  store i32 0, i32* %19, align 4
  br label %351

351:                                              ; preds = %350, %344
  br label %352

352:                                              ; preds = %351, %232
  %353 = call i32 @gettimeofday(%struct.timeval* %22, i32 0)
  br label %354

354:                                              ; preds = %352, %334, %318, %313, %300, %292, %271, %259, %251
  %355 = load i32, i32* %37, align 4
  %356 = load i32, i32* @RPC_ANYSOCK, align 4
  %357 = icmp ne i32 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, i32* %37, align 4
  %360 = call i32 @_close(i32 %359)
  br label %361

361:                                              ; preds = %358, %354
  %362 = load i32*, i32** %12, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load i32*, i32** %12, align 8
  %366 = call i32 @clnt_destroy(i32* %365)
  br label %367

367:                                              ; preds = %364, %361
  %368 = call i32 @alarm(i32 0)
  %369 = load void (i32)*, void (i32)** %34, align 8
  %370 = icmp ne void (i32)* %369, null
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = load i32, i32* @SIGALRM, align 4
  %373 = load void (i32)*, void (i32)** %34, align 8
  %374 = call i64 @signal(i32 %372, void (i32)* %373)
  br label %375

375:                                              ; preds = %371, %367
  %376 = load i32, i32* %23, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %426

378:                                              ; preds = %375
  %379 = load i8**, i8*** %10, align 8
  %380 = load i8*, i8** %379, align 8
  %381 = icmp eq i8* %380, null
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = load i8*, i8** %15, align 8
  %384 = call i8* @strdup(i8* %383)
  %385 = load i8**, i8*** %10, align 8
  store i8* %384, i8** %385, align 8
  br label %386

386:                                              ; preds = %382, %378
  %387 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp sgt i32 %388, 500000
  %390 = zext i1 %389 to i64
  %391 = select i1 %389, i32 1, i32 0
  %392 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, %391
  store i32 %394, i32* %392, align 8
  %395 = load i32, i32* %19, align 4
  %396 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp sgt i32 %395, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %386
  %400 = load i32, i32* %19, align 4
  %401 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = sub nsw i32 %400, %402
  br label %409

404:                                              ; preds = %386
  %405 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %19, align 4
  %408 = sub nsw i32 %406, %407
  br label %409

409:                                              ; preds = %404, %399
  %410 = phi i32 [ %403, %399 ], [ %408, %404 ]
  store i32 %410, i32* %20, align 4
  %411 = load i32, i32* %19, align 4
  %412 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp slt i32 %411, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %409
  %416 = load i32, i32* %20, align 4
  %417 = sub nsw i32 0, %416
  br label %420

418:                                              ; preds = %409
  %419 = load i32, i32* %20, align 4
  br label %420

420:                                              ; preds = %418, %415
  %421 = phi i32 [ %417, %415 ], [ %419, %418 ]
  %422 = load %struct.timeval*, %struct.timeval** %7, align 8
  %423 = getelementptr inbounds %struct.timeval, %struct.timeval* %422, i32 0, i32 0
  store i32 %421, i32* %423, align 8
  %424 = load %struct.timeval*, %struct.timeval** %7, align 8
  %425 = getelementptr inbounds %struct.timeval, %struct.timeval* %424, i32 0, i32 2
  store i64 0, i64* %425, align 8
  br label %428

426:                                              ; preds = %375
  %427 = call i32 @msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %428

428:                                              ; preds = %426, %420
  %429 = load i32, i32* %21, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = getelementptr inbounds [32 x %struct.TYPE_11__], [32 x %struct.TYPE_11__]* %32, i64 0, i64 0
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @free_eps(%struct.TYPE_11__* %432, i32 %435)
  br label %437

437:                                              ; preds = %431, %428
  %438 = load i32, i32* %23, align 4
  store i32 %438, i32* %6, align 4
  br label %439

439:                                              ; preds = %437, %218, %201, %167, %71, %59
  %440 = load i32, i32* %6, align 4
  ret i32 %440
}

declare dso_local i32 @msg(i8*) #1

declare dso_local %struct.TYPE_10__* @get_server(%struct.sockaddr_in*, i8*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @free_eps(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @uaddr_to_sockaddr(i8*, %struct.sockaddr_in*) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i32*, i32, i32*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @_socket(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @_select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @_rpc_dtablesize(...) #1

declare dso_local i32 @_recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @signal(i32, void (i32)*) #1

declare dso_local void @alarm_hndler(i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @_read(i32, i8*, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
