; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_tcpConnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_tcpConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@SESS_RECONNECT = common dso_local global i32 0, align 4
@SESS_REDIRECT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Reconnect\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Redirected\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@SESS_CONNECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"targetAddress=%s port=%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"getaddrinfo(%s): %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Cannot set socket SO_REUSEADDR %d: %s\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"Cannot set socket sndbuf & rcvbuf to %d err=%d %s\0A\00", align 1
@T1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"errno=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"reconnecting to original target address\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@TCP_KEEPALIVE = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @tcpConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpConnect(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca [10 x i8], align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @debug_called(i32 3)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SESS_RECONNECT, align 4
  %20 = load i32, i32* @SESS_REDIRECT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_INFO, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SESS_RECONNECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i32, i8*, ...) @syslog(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SESS_RECONNECT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 (i32, i8*, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SHUT_RDWR, align 4
  %48 = call i32 @shutdown(i32 %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load i32, i32* @SESS_CONNECTED, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SESS_REDIRECT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %24
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @SESS_RECONNECT, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %75

73:                                               ; preds = %24
  %74 = call i32 @sleep(i32 2)
  br label %75

75:                                               ; preds = %73, %63
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %1
  %81 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @snprintf(i8* %81, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 32)
  %87 = load i32, i32* @PF_UNSPEC, align 4
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* @SOCK_STREAM, align 4
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %93, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %102 = call i32 @getaddrinfo(i8* %100, i8* %101, %struct.addrinfo* %10, %struct.addrinfo** %9)
  store i32 %102, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %80
  %105 = load i32, i32* @stderr, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i8* @gai_strerror(i32 %109)
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %108, i8* %110)
  store i32 0, i32* %2, align 4
  br label %274

112:                                              ; preds = %80
  %113 = load i32, i32* @SESS_CONNECTED, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %119 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %119, %struct.addrinfo** %8, align 8
  br label %120

120:                                              ; preds = %164, %112
  %121 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %122 = icmp ne %struct.addrinfo* %121, null
  br i1 %122, label %123, label %168

123:                                              ; preds = %120
  %124 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %125 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %131 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @socket(i32 %126, i32 %129, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %164

137:                                              ; preds = %123
  store i32 1, i32* %5, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @SOL_SOCKET, align 4
  %140 = load i32, i32* @SO_REUSEADDR, align 4
  %141 = call i64 @setsockopt(i32 %138, i32 %139, i32 %140, i32* %5, i32 4)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @stderr, align 4
  %145 = load i32, i32* @errno, align 4
  %146 = load i32, i32* @errno, align 4
  %147 = call i8* @strerror(i32 %146)
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %145, i8* %147)
  br label %149

149:                                              ; preds = %143, %137
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %152 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %155 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @connect(i32 %150, i32 %153, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %168

160:                                              ; preds = %149
  %161 = load i32, i32* @errno, align 4
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @close(i32 %162)
  store i32 -1, i32* %7, align 4
  br label %164

164:                                              ; preds = %160, %136
  %165 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %166 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i32 0, i32 5
  %167 = load %struct.addrinfo*, %struct.addrinfo** %166, align 8
  store %struct.addrinfo* %167, %struct.addrinfo** %8, align 8
  br label %120

168:                                              ; preds = %159, %120
  %169 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %170 = call i32 @freeaddrinfo(%struct.addrinfo* %169)
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %173, label %220

173:                                              ; preds = %168
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %173
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %188, 1024
  store i32 %189, i32* %5, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @SOL_SOCKET, align 4
  %194 = load i32, i32* @SO_SNDBUF, align 4
  %195 = call i64 @setsockopt(i32 %192, i32 %193, i32 %194, i32* %5, i32 4)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %183
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @SOL_SOCKET, align 4
  %202 = load i32, i32* @SO_RCVBUF, align 4
  %203 = call i64 @setsockopt(i32 %200, i32 %201, i32 %202, i32* %5, i32 4)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %197, %183
  %206 = load i32, i32* @stderr, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @errno, align 4
  %209 = load i32, i32* @errno, align 4
  %210 = call i8* @strerror(i32 %209)
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %207, i32 %208, i8* %210)
  store i32 0, i32* %2, align 4
  br label %274

212:                                              ; preds = %197
  br label %213

213:                                              ; preds = %212, %173
  %214 = load i32, i32* @SESS_CONNECTED, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load i32, i32* @T1, align 4
  store i32 %219, i32* %2, align 4
  br label %274

220:                                              ; preds = %168
  %221 = load i32, i32* @stderr, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %222)
  %224 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %225 = load i32, i32* %6, align 4
  switch i32 %225, label %273 [
    i32 131, label %226
    i32 130, label %226
    i32 129, label %226
    i32 128, label %226
  ]

226:                                              ; preds = %220, %220, %220, %220
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @SESS_REDIRECT, align 4
  %231 = and i32 %229, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %270

233:                                              ; preds = %226
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @strcmp(i8* %236, i8* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %269

243:                                              ; preds = %233
  %244 = load i32, i32* @LOG_INFO, align 4
  %245 = call i32 (i32, i8*, ...) @syslog(i32 %244, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @free(i8* %248)
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @T1, align 4
  store i32 %268, i32* %2, align 4
  br label %274

269:                                              ; preds = %233
  br label %270

270:                                              ; preds = %269, %226
  %271 = call i32 @sleep(i32 5)
  %272 = load i32, i32* @T1, align 4
  store i32 %272, i32* %2, align 4
  br label %274

273:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %274

274:                                              ; preds = %273, %270, %243, %213, %205, %104
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
