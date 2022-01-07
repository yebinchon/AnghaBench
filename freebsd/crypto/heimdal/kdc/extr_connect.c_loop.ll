; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i32, i64, i64, i64, i32 }
%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"No sockets!\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"KDC started\00", align 1
@exit_flag = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"TCP-connection from %s expired after %lu bytes\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@TCP_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Terminated\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Unexpected exit reason: %d\00", align 1
@FD_SETSIZE = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loop(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.descr*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @init_sockets(i32 %13, i32* %14, %struct.descr** %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ule i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @krb5_errx(i32 %19, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %22, i32* %23, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %244, %21
  %26 = load i64, i64* @exit_flag, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %245

28:                                               ; preds = %25
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %29 = call i32 @FD_ZERO(i32* %8)
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %118, %28
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %121

35:                                               ; preds = %30
  %36 = load %struct.descr*, %struct.descr** %5, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.descr, %struct.descr* %36, i64 %37
  %39 = getelementptr inbounds %struct.descr, %struct.descr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rk_IS_BAD_SOCKET(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %35
  %44 = load %struct.descr*, %struct.descr** %5, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.descr, %struct.descr* %44, i64 %45
  %47 = getelementptr inbounds %struct.descr, %struct.descr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOCK_STREAM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %43
  %52 = load %struct.descr*, %struct.descr** %5, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.descr, %struct.descr* %52, i64 %53
  %55 = getelementptr inbounds %struct.descr, %struct.descr* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.descr*, %struct.descr** %5, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.descr, %struct.descr* %59, i64 %60
  %62 = getelementptr inbounds %struct.descr, %struct.descr* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @time(i32* null)
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load i32, i32* %3, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.descr*, %struct.descr** %5, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.descr, %struct.descr* %69, i64 %70
  %72 = getelementptr inbounds %struct.descr, %struct.descr* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.descr*, %struct.descr** %5, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.descr, %struct.descr* %74, i64 %75
  %77 = getelementptr inbounds %struct.descr, %struct.descr* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %67, i32* %68, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %78)
  %80 = load %struct.descr*, %struct.descr** %5, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds %struct.descr, %struct.descr* %80, i64 %81
  %83 = call i32 @clear_descr(%struct.descr* %82)
  br label %118

84:                                               ; preds = %58, %51, %43
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.descr*, %struct.descr** %5, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.descr, %struct.descr* %86, i64 %87
  %89 = getelementptr inbounds %struct.descr, %struct.descr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.descr*, %struct.descr** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.descr, %struct.descr* %93, i64 %94
  %96 = getelementptr inbounds %struct.descr, %struct.descr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load %struct.descr*, %struct.descr** %5, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.descr, %struct.descr* %99, i64 %100
  %102 = getelementptr inbounds %struct.descr, %struct.descr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @FD_SET(i32 %103, i32* %8)
  br label %117

105:                                              ; preds = %35
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %105
  %114 = load i64, i64* %11, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %98
  br label %118

118:                                              ; preds = %117, %66
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %11, align 8
  br label %30

121:                                              ; preds = %30
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %168

124:                                              ; preds = %121
  %125 = load %struct.descr*, %struct.descr** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, 4
  %128 = zext i32 %127 to i64
  %129 = mul i64 %128, 40
  %130 = trunc i64 %129 to i32
  %131 = call %struct.descr* @realloc(%struct.descr* %125, i32 %130)
  store %struct.descr* %131, %struct.descr** %12, align 8
  %132 = load %struct.descr*, %struct.descr** %12, align 8
  %133 = icmp eq %struct.descr* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @krb5_warnx(i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %167

137:                                              ; preds = %124
  %138 = load %struct.descr*, %struct.descr** %12, align 8
  store %struct.descr* %138, %struct.descr** %5, align 8
  %139 = load %struct.descr*, %struct.descr** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @reinit_descrs(%struct.descr* %139, i32 %140)
  %142 = load %struct.descr*, %struct.descr** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.descr, %struct.descr* %142, i64 %144
  %146 = call i32 @memset(%struct.descr* %145, i32 0, i32 160)
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %160, %137
  %150 = load i64, i64* %11, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add i32 %151, 4
  %153 = zext i32 %152 to i64
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load %struct.descr*, %struct.descr** %5, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds %struct.descr, %struct.descr* %156, i64 %157
  %159 = call i32 @init_descr(%struct.descr* %158)
  br label %160

160:                                              ; preds = %155
  %161 = load i64, i64* %11, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %11, align 8
  br label %149

163:                                              ; preds = %149
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %6, align 4
  %166 = add i32 %165, 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %134
  br label %168

168:                                              ; preds = %167, %121
  %169 = load i32, i32* @TCP_TIMEOUT, align 4
  %170 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %169, i32* %170, align 8
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  %174 = call i32 @select(i32 %173, i32* %8, i32 0, i32 0, %struct.timeval* %7)
  switch i32 %174, label %185 [
    i32 0, label %175
    i32 -1, label %176
  ]

175:                                              ; preds = %168
  br label %244

176:                                              ; preds = %168
  %177 = load i32, i32* @errno, align 4
  %178 = load i32, i32* @EINTR, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %183 = call i32 @krb5_warn(i32 %181, i32 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %176
  br label %244

185:                                              ; preds = %168
  store i64 0, i64* %11, align 8
  br label %186

186:                                              ; preds = %240, %185
  %187 = load i64, i64* %11, align 8
  %188 = load i32, i32* %6, align 4
  %189 = zext i32 %188 to i64
  %190 = icmp ult i64 %187, %189
  br i1 %190, label %191, label %243

191:                                              ; preds = %186
  %192 = load %struct.descr*, %struct.descr** %5, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds %struct.descr, %struct.descr* %192, i64 %193
  %195 = getelementptr inbounds %struct.descr, %struct.descr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @rk_IS_BAD_SOCKET(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %239, label %199

199:                                              ; preds = %191
  %200 = load %struct.descr*, %struct.descr** %5, align 8
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds %struct.descr, %struct.descr* %200, i64 %201
  %203 = getelementptr inbounds %struct.descr, %struct.descr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @FD_ISSET(i32 %204, i32* %8)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %239

207:                                              ; preds = %199
  %208 = load %struct.descr*, %struct.descr** %5, align 8
  %209 = load i64, i64* %11, align 8
  %210 = getelementptr inbounds %struct.descr, %struct.descr* %208, i64 %209
  %211 = getelementptr inbounds %struct.descr, %struct.descr* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SOCK_DGRAM, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %207
  %216 = load i32, i32* %3, align 4
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.descr*, %struct.descr** %5, align 8
  %219 = load i64, i64* %11, align 8
  %220 = getelementptr inbounds %struct.descr, %struct.descr* %218, i64 %219
  %221 = call i32 @handle_udp(i32 %216, i32* %217, %struct.descr* %220)
  br label %238

222:                                              ; preds = %207
  %223 = load %struct.descr*, %struct.descr** %5, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds %struct.descr, %struct.descr* %223, i64 %224
  %226 = getelementptr inbounds %struct.descr, %struct.descr* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SOCK_STREAM, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = load i32, i32* %3, align 4
  %232 = load i32*, i32** %4, align 8
  %233 = load %struct.descr*, %struct.descr** %5, align 8
  %234 = load i64, i64* %11, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @handle_tcp(i32 %231, i32* %232, %struct.descr* %233, i64 %234, i32 %235)
  br label %237

237:                                              ; preds = %230, %222
  br label %238

238:                                              ; preds = %237, %215
  br label %239

239:                                              ; preds = %238, %199, %191
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %11, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %11, align 8
  br label %186

243:                                              ; preds = %186
  br label %244

244:                                              ; preds = %243, %184, %175
  br label %25

245:                                              ; preds = %25
  %246 = load i64, i64* @exit_flag, align 8
  %247 = load i64, i64* @SIGINT, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load i64, i64* @exit_flag, align 8
  %251 = load i64, i64* @SIGTERM, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %249, %245
  %254 = load i32, i32* %3, align 4
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %254, i32* %255, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %262

257:                                              ; preds = %249
  %258 = load i32, i32* %3, align 4
  %259 = load i32*, i32** %4, align 8
  %260 = load i64, i64* @exit_flag, align 8
  %261 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %258, i32* %259, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %260)
  br label %262

262:                                              ; preds = %257, %253
  %263 = load %struct.descr*, %struct.descr** %5, align 8
  %264 = call i32 @free(%struct.descr* %263)
  ret void
}

declare dso_local i32 @init_sockets(i32, i32*, %struct.descr**) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @rk_IS_BAD_SOCKET(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @clear_descr(%struct.descr*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local %struct.descr* @realloc(%struct.descr*, i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i32 @reinit_descrs(%struct.descr*, i32) #1

declare dso_local i32 @memset(%struct.descr*, i32, i32) #1

declare dso_local i32 @init_descr(%struct.descr*) #1

declare dso_local i32 @select(i32, i32*, i32, i32, %struct.timeval*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @handle_udp(i32, i32*, %struct.descr*) #1

declare dso_local i32 @handle_tcp(i32, i32*, %struct.descr*, i64, i32) #1

declare dso_local i32 @free(%struct.descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
