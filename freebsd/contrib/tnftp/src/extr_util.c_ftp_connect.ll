; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_ftp_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_ftp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, %struct.sockaddr*, %struct.addrinfo* }
%struct.sockaddr = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@bindai = common dso_local global %struct.addrinfo* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't bind to `%s'\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Can't %s socket flags for connect to `%s:%s'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Can't set socket non-blocking for connect to `%s:%s'\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@quit_time = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Can't connect to `%s:%s'\00", align 1
@INFTIM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"restore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftp_connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 4
  %14 = alloca %struct.timeval, align 4
  %15 = alloca %struct.timeval, align 4
  %16 = alloca [1 x %struct.pollfd], align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.addrinfo*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = load i32, i32* @NI_MAXHOST, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @NI_MAXSERV, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @setupsockbufsize(i32 %32)
  %34 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = trunc i64 %26 to i32
  %37 = trunc i64 %30 to i32
  %38 = load i32, i32* @NI_NUMERICHOST, align 4
  %39 = load i32, i32* @NI_NUMERICSERV, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @getnameinfo(%struct.sockaddr* %34, i32 %35, i8* %28, i32 %36, i8* %31, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = trunc i64 %26 to i32
  %45 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = trunc i64 %30 to i32
  %47 = call i32 @strlcpy(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %3
  %49 = load %struct.addrinfo*, %struct.addrinfo** @bindai, align 8
  %50 = icmp ne %struct.addrinfo* %49, null
  br i1 %50, label %51, label %109

51:                                               ; preds = %48
  %52 = load %struct.addrinfo*, %struct.addrinfo** @bindai, align 8
  store %struct.addrinfo* %52, %struct.addrinfo** %20, align 8
  br label %53

53:                                               ; preds = %66, %51
  %54 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %55 = icmp ne %struct.addrinfo* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %70

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 3
  %69 = load %struct.addrinfo*, %struct.addrinfo** %68, align 8
  store %struct.addrinfo* %69, %struct.addrinfo** %20, align 8
  br label %53

70:                                               ; preds = %64, %53
  %71 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %72 = icmp eq %struct.addrinfo* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load %struct.addrinfo*, %struct.addrinfo** @bindai, align 8
  store %struct.addrinfo* %74, %struct.addrinfo** %20, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 2
  %79 = load %struct.sockaddr*, %struct.sockaddr** %78, align 8
  %80 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bind(i32 %76, %struct.sockaddr* %79, i32 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %108

85:                                               ; preds = %75
  %86 = load i32, i32* @NI_MAXHOST, align 4
  %87 = zext i32 %86 to i64
  %88 = call i8* @llvm.stacksave()
  store i8* %88, i8** %21, align 8
  %89 = alloca i8, i64 %87, align 16
  store i64 %87, i64* %22, align 8
  %90 = load i32, i32* @errno, align 4
  store i32 %90, i32* %23, align 4
  %91 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 2
  %93 = load %struct.sockaddr*, %struct.sockaddr** %92, align 8
  %94 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = trunc i64 %87 to i32
  %98 = load i32, i32* @NI_NUMERICHOST, align 4
  %99 = call i64 @getnameinfo(%struct.sockaddr* %93, i32 %96, i8* %89, i32 %97, i8* null, i32 0, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = trunc i64 %87 to i32
  %103 = call i32 @strlcpy(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %85
  %105 = load i32, i32* %23, align 4
  store i32 %105, i32* @errno, align 4
  %106 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  %107 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %107)
  br label %239

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %48
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @F_GETFL, align 4
  %112 = call i32 @fcntl(i32 %110, i32 %111, i32 0)
  store i32 %112, i32* %8, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %31)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %239

116:                                              ; preds = %109
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @F_SETFL, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @O_NONBLOCK, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @fcntl(i32 %117, i32 %118, i32 %121)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %28, i8* %31)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %239

126:                                              ; preds = %116
  %127 = load i32, i32* %5, align 4
  %128 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %129 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @POLLIN, align 4
  %131 = load i32, i32* @POLLOUT, align 4
  %132 = or i32 %130, %131
  %133 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %134 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i64, i64* @quit_time, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %126
  %138 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %139 = load i64, i64* @quit_time, align 8
  %140 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %139
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  br label %145

145:                                              ; preds = %137, %126
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @connect(i32 %146, %struct.sockaddr* %147, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %230

152:                                              ; preds = %145
  %153 = load i32, i32* @errno, align 4
  %154 = load i32, i32* @EINPROGRESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %226, %222, %218, %202, %197, %156
  %158 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %28, i8* %31)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %239

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %192, %159
  %161 = load i64, i64* @quit_time, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = call i32 @gettimeofday(%struct.timeval* %14, i32* null)
  %165 = call i32 @timersub(%struct.timeval* %13, %struct.timeval* %14, %struct.timeval* %15)
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, 1000
  %169 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sdiv i32 %170, 1000
  %172 = add nsw i32 %168, %171
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %163
  br label %179

177:                                              ; preds = %160
  %178 = load i32, i32* @INFTIM, align 4
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %181 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %180, i32 0, i32 2
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @ftp_poll(%struct.pollfd* %182, i32 1, i32 %183)
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* @errno, align 4
  %190 = load i32, i32* @EINTR, align 4
  %191 = icmp eq i32 %189, %190
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i1 [ false, %185 ], [ %191, %188 ]
  br i1 %193, label %160, label %194

194:                                              ; preds = %192
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %198, i32* @errno, align 4
  br label %157

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %157

203:                                              ; preds = %199
  %204 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %205 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @POLLIN, align 4
  %208 = load i32, i32* @POLLOUT, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %206, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %203
  store i32 4, i32* %12, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @SOL_SOCKET, align 4
  %215 = load i32, i32* @SO_ERROR, align 4
  %216 = call i32 @getsockopt(i32 %213, i32 %214, i32 %215, i32* %11, i32* %12)
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %157

219:                                              ; preds = %212
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i32, i32* %11, align 4
  store i32 %223, i32* @errno, align 4
  br label %157

224:                                              ; preds = %219
  br label %225

225:                                              ; preds = %224
  br label %228

226:                                              ; preds = %203
  %227 = load i32, i32* @EBADF, align 4
  store i32 %227, i32* @errno, align 4
  br label %157

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229, %145
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @F_SETFL, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @fcntl(i32 %231, i32 %232, i32 %233)
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %28, i8* %31)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %239

238:                                              ; preds = %230
  store i32 0, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %239

239:                                              ; preds = %238, %236, %157, %124, %114, %104
  %240 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setupsockbufsize(i32) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @warn(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #2

declare dso_local i32 @ftp_poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
