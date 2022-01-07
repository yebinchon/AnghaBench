; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_sock.c_NgMkSockNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_sock.c_NgMkSockNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ng = type { i8*, i32, i8* }
%union.anon = type { %struct.ng_mesg, [56 x i8] }
%struct.ng_mesg = type { i64 }
%struct.nodeinfo = type { i64 }
%struct.sockaddr = type { i32 }

@NG_NODESIZ = common dso_local global i32 0, align 4
@AF_NETGRAPH = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@NG_CONTROL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NG_SOCKET_KLD = common dso_local global i8* null, align 8
@_gNgDebugLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"can't load %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@NGSA_OVERHEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"bind(%s)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_NODEINFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"send nodeinfo\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"recv nodeinfo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[%lx]\00", align 1
@NG_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NgMkSockNode(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sockaddr_ng*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.anon, align 8
  %18 = alloca %struct.nodeinfo*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.sockaddr_ng*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32, i32* @NG_NODESIZ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* null, i8** %5, align 8
  br label %34

34:                                               ; preds = %33, %28, %3
  %35 = load i8*, i8** @AF_NETGRAPH, align 8
  %36 = load i32, i32* @SOCK_DGRAM, align 4
  %37 = load i32, i32* @NG_CONTROL, align 4
  %38 = call i32 @socket(i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load i32, i32* @errno, align 4
  %42 = load i32, i32* @EAFNOSUPPORT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i8*, i8** @NG_SOCKET_KLD, align 8
  %46 = call i64 @kldload(i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @_gNgDebugLevel, align 4
  %51 = icmp sge i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** @NG_SOCKET_KLD, align 8
  %54 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %250

56:                                               ; preds = %44
  %57 = load i8*, i8** @AF_NETGRAPH, align 8
  %58 = load i32, i32* @SOCK_DGRAM, align 4
  %59 = load i32, i32* @NG_CONTROL, align 4
  %60 = call i32 @socket(i8* %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %73

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i32, i32* @errno, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @_gNgDebugLevel, align 4
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  br label %250

72:                                               ; preds = %34
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %128

76:                                               ; preds = %73
  %77 = load i32, i32* @NG_NODESIZ, align 4
  %78 = load i32, i32* @NGSA_OVERHEAD, align 4
  %79 = add nsw i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %13, align 8
  %82 = alloca i32, i64 %80, align 16
  store i64 %80, i64* %14, align 8
  %83 = bitcast i32* %82 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %83, %struct.sockaddr_ng** %15, align 8
  %84 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %85 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* @NG_NODESIZ, align 4
  %89 = call i32 @strlcpy(i8* %86, i8* %87, i32 %88)
  %90 = load i8*, i8** @AF_NETGRAPH, align 8
  %91 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %92 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %94 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* @NGSA_OVERHEAD, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %101 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %104 = bitcast %struct.sockaddr_ng* %103 to %struct.sockaddr*
  %105 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %106 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @bind(i32 %102, %struct.sockaddr* %104, i32 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %76
  %111 = load i32, i32* @errno, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* @_gNgDebugLevel, align 4
  %113 = icmp sge i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %15, align 8
  %116 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %114, %110
  store i32 2, i32* %16, align 4
  br label %124

120:                                              ; preds = %76
  %121 = load i8*, i8** %5, align 8
  %122 = trunc i64 %23 to i32
  %123 = call i32 @strlcpy(i8* %25, i8* %121, i32 %122)
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %119, %120
  %125 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %16, align 4
  switch i32 %126, label %264 [
    i32 0, label %127
    i32 2, label %250
  ]

127:                                              ; preds = %124
  br label %168

128:                                              ; preds = %73
  %129 = load i32*, i32** %7, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %167

131:                                              ; preds = %128
  %132 = bitcast %union.anon* %17 to %struct.ng_mesg*
  %133 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.nodeinfo*
  store %struct.nodeinfo* %135, %struct.nodeinfo** %18, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %138 = load i32, i32* @NGM_NODEINFO, align 4
  %139 = call i64 @NgSendMsg(i32 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %138, i32* null, i32 0)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %131
  %142 = load i32, i32* @errno, align 4
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* @_gNgDebugLevel, align 4
  %144 = icmp sge i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  br label %250

148:                                              ; preds = %131
  %149 = load i32, i32* %10, align 4
  %150 = bitcast %union.anon* %17 to %struct.ng_mesg*
  %151 = call i64 @NgRecvMsg(i32 %149, %struct.ng_mesg* %150, i32 64, i32* null)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load i32, i32* @errno, align 4
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* @_gNgDebugLevel, align 4
  %156 = icmp sge i32 %155, 1
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %153
  br label %250

160:                                              ; preds = %148
  %161 = trunc i64 %23 to i32
  %162 = load %struct.nodeinfo*, %struct.nodeinfo** %18, align 8
  %163 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @snprintf(i8* %25, i32 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %160, %128
  br label %168

168:                                              ; preds = %167, %127
  %169 = load i32*, i32** %7, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %234

171:                                              ; preds = %168
  %172 = load i32, i32* @NG_NODESIZ, align 4
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* @NGSA_OVERHEAD, align 4
  %175 = add nsw i32 %173, %174
  %176 = zext i32 %175 to i64
  %177 = call i8* @llvm.stacksave()
  store i8* %177, i8** %19, align 8
  %178 = alloca i32, i64 %176, align 16
  store i64 %176, i64* %20, align 8
  %179 = bitcast i32* %178 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %179, %struct.sockaddr_ng** %21, align 8
  %180 = load i8*, i8** @AF_NETGRAPH, align 8
  %181 = load i32, i32* @SOCK_DGRAM, align 4
  %182 = load i32, i32* @NG_DATA, align 4
  %183 = call i32 @socket(i8* %180, i32 %181, i32 %182)
  store i32 %183, i32* %11, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %171
  %186 = load i32, i32* @errno, align 4
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* @_gNgDebugLevel, align 4
  %188 = icmp sge i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %185
  store i32 2, i32* %16, align 4
  br label %230

192:                                              ; preds = %171
  %193 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %194 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* @NG_NODESIZ, align 4
  %197 = add nsw i32 %196, 1
  %198 = call i32 @snprintf(i8* %195, i32 %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %25)
  %199 = load i8*, i8** @AF_NETGRAPH, align 8
  %200 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %201 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %203 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @strlen(i8* %204)
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* @NGSA_OVERHEAD, align 4
  %208 = add nsw i32 %206, %207
  %209 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %210 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %213 = bitcast %struct.sockaddr_ng* %212 to %struct.sockaddr*
  %214 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %215 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @connect(i32 %211, %struct.sockaddr* %213, i32 %216)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %192
  %220 = load i32, i32* @errno, align 4
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* @_gNgDebugLevel, align 4
  %222 = icmp sge i32 %221, 1
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %21, align 8
  %225 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 (i8*, ...) @NGLOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %226)
  br label %228

228:                                              ; preds = %223, %219
  store i32 2, i32* %16, align 4
  br label %230

229:                                              ; preds = %192
  store i32 0, i32* %16, align 4
  br label %230

230:                                              ; preds = %228, %191, %229
  %231 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %16, align 4
  switch i32 %232, label %264 [
    i32 0, label %233
    i32 2, label %250
  ]

233:                                              ; preds = %230
  br label %234

234:                                              ; preds = %233, %168
  %235 = load i32*, i32** %6, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* %10, align 4
  %239 = load i32*, i32** %6, align 8
  store i32 %238, i32* %239, align 4
  br label %243

240:                                              ; preds = %234
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @close(i32 %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load i32*, i32** %7, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %11, align 4
  %248 = load i32*, i32** %7, align 8
  store i32 %247, i32* %248, align 4
  br label %249

249:                                              ; preds = %246, %243
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %264

250:                                              ; preds = %230, %124, %159, %147, %71, %55
  %251 = load i32, i32* %10, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @close(i32 %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32, i32* %11, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @close(i32 %260)
  br label %262

262:                                              ; preds = %259, %256
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %264

264:                                              ; preds = %262, %249, %230, %124
  %265 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @socket(i8*, i32, i32) #2

declare dso_local i64 @kldload(i8*) #2

declare dso_local i32 @NGLOG(i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i64 @NgRecvMsg(i32, %struct.ng_mesg*, i32, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
