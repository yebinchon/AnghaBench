; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_rendezvous_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_vc.c_rendezvous_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_6__, %struct.sockaddr_in, i32 }
%struct.TYPE_7__ = type { i32*, i64, i64 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.sockaddr_in = type { i32 }
%struct.rpc_msg = type { i32 }
%struct.cf_rendezvous = type { i64, i64, i32 }
%struct.cf_conn = type { i64, i64, i32, i32, i32, i32 }
%struct.sockaddr_storage = type { i64, i64 }
%struct.__rpc_sockinfo = type { i64 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@svc_fdset = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_NODELAY = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"svc_vc_create: could not retrieve local addr\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"svc_vc_create: no mem for local addr\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.rpc_msg*)* @rendezvous_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rendezvous_request(%struct.TYPE_8__* %0, %struct.rpc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.rpc_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cf_rendezvous*, align 8
  %9 = alloca %struct.cf_conn*, align 8
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca %struct.sockaddr_storage, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.__rpc_sockinfo, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.rpc_msg*, %struct.rpc_msg** %5, align 8
  %22 = icmp ne %struct.rpc_msg* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cf_rendezvous*
  store %struct.cf_rendezvous* %28, %struct.cf_rendezvous** %8, align 8
  br label %29

29:                                               ; preds = %50, %41, %2
  store i64 16, i64* %12, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %struct.sockaddr_storage* %10 to i8*
  %34 = bitcast i8* %33 to %struct.sockaddr*
  %35 = call i32 @_accept(i32 %32, %struct.sockaddr* %34, i64* %12)
  store i32 %35, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %29

42:                                               ; preds = %37
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EMFILE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @ENFILE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @svc_fdset, align 4
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @__svc_clean_idle(i32* %16, i32 0, i32 %52)
  br label %29

54:                                               ; preds = %46
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %229

56:                                               ; preds = %29
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %59 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %62 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.TYPE_8__* @makefd_xprt(i32 %57, i32 %60, i64 %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i8* @mem_alloc(i64 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32* %67, i32** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %3, align 4
  br label %229

78:                                               ; preds = %56
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @memcpy(i32* %82, %struct.sockaddr_storage* %10, i64 %83)
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @__rpc_fd2sockinfo(i32 %89, %struct.__rpc_sockinfo* %14)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %14, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IPPROTO_TCP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  store i64 1, i64* %12, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i64, i64* @IPPROTO_TCP, align 8
  %100 = load i32, i32* @TCP_NODELAY, align 4
  %101 = call i32 @_setsockopt(i32 %98, i64 %99, i32 %100, i64* %12, i32 8)
  br label %102

102:                                              ; preds = %97, %92, %78
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.cf_conn*
  store %struct.cf_conn* %106, %struct.cf_conn** %9, align 8
  %107 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %108 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %111 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %113 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %116 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.cf_rendezvous*, %struct.cf_rendezvous** %8, align 8
  %118 = getelementptr inbounds %struct.cf_rendezvous, %struct.cf_rendezvous* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %121 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %123 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %168

126:                                              ; preds = %102
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @F_GETFL, align 4
  %129 = call i32 @_fcntl(i32 %127, i32 %128, i32 0)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %3, align 4
  br label %229

134:                                              ; preds = %126
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @F_SETFL, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @O_NONBLOCK, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @_fcntl(i32 %135, i32 %136, i32 %139)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %3, align 4
  br label %229

144:                                              ; preds = %134
  %145 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %146 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %149 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %154 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %157 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %144
  %159 = load i32, i32* @TRUE, align 4
  %160 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %161 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %163 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %162, i32 0, i32 4
  %164 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %165 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @__xdrrec_setnonblock(i32* %163, i64 %166)
  br label %172

168:                                              ; preds = %102
  %169 = load i32, i32* @FALSE, align 4
  %170 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %171 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %158
  store i64 16, i64* %13, align 8
  %173 = load i32, i32* %6, align 4
  %174 = bitcast %struct.sockaddr_storage* %11 to i8*
  %175 = bitcast i8* %174 to %struct.sockaddr*
  %176 = call i64 @_getsockname(i32 %173, %struct.sockaddr* %175, i64* %13)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  br label %224

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  store i64 %188, i64* %191, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  store i64 %188, i64* %194, align 8
  %195 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i8* @mem_alloc(i64 %196)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  store i32* %198, i32** %201, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %186
  %208 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  store i64 0, i64* %214, align 8
  br label %223

215:                                              ; preds = %186
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @memcpy(i32* %219, %struct.sockaddr_storage* %11, i64 %221)
  br label %223

223:                                              ; preds = %215, %207
  br label %224

224:                                              ; preds = %223, %178
  %225 = load %struct.cf_conn*, %struct.cf_conn** %9, align 8
  %226 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %225, i32 0, i32 2
  %227 = call i32 @gettimeofday(i32* %226, i32* null)
  %228 = load i32, i32* @FALSE, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %224, %142, %132, %76, %54
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_accept(i32, %struct.sockaddr*, i64*) #1

declare dso_local i32 @__svc_clean_idle(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @makefd_xprt(i32, i32, i64) #1

declare dso_local i8* @mem_alloc(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i64) #1

declare dso_local i64 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @_setsockopt(i32, i64, i32, i64*, i32) #1

declare dso_local i32 @_fcntl(i32, i32, i32) #1

declare dso_local i32 @__xdrrec_setnonblock(i32*, i64) #1

declare dso_local i64 @_getsockname(i32, %struct.sockaddr*, i64*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
