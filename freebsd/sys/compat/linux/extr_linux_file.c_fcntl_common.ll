; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_fcntl_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_fcntl_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_fcntl_args = type { i32, i64, i32 }
%struct.l_flock = type { i32 }
%struct.flock = type { i32 }
%struct.file = type { i32 }

@F_DUPFD = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LINUX_O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@LINUX_O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@LINUX_O_RDWR = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@LINUX_O_NONBLOCK = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@LINUX_O_APPEND = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@LINUX_O_SYNC = common dso_local global i32 0, align 4
@O_ASYNC = common dso_local global i32 0, align 4
@LINUX_FASYNC = common dso_local global i32 0, align 4
@LINUX_O_NDELAY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@F_GETOWN = common dso_local global i32 0, align 4
@cap_fcntl_rights = common dso_local global i32 0, align 4
@DTYPE_PIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_SETOWN = common dso_local global i32 0, align 4
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@LINUX_O_DIRECT = common dso_local global i32 0, align 4
@LINUX_O_NOFOLLOW = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_fcntl_args*)* @fcntl_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcntl_common(%struct.thread* %0, %struct.linux_fcntl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_fcntl_args*, align 8
  %6 = alloca %struct.l_flock, align 4
  %7 = alloca %struct.flock, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_fcntl_args* %1, %struct.linux_fcntl_args** %5, align 8
  %12 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %328 [
    i32 138, label %15
    i32 136, label %25
    i32 132, label %32
    i32 135, label %42
    i32 131, label %150
    i32 134, label %209
    i32 130, label %239
    i32 129, label %258
    i32 133, label %277
    i32 128, label %284
    i32 137, label %318
  ]

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @F_DUPFD, align 4
  %21 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @kern_fcntl(%struct.thread* %16, i32 %19, i32 %20, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %330

25:                                               ; preds = %2
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @F_GETFD, align 4
  %31 = call i32 @kern_fcntl(%struct.thread* %26, i32 %29, i32 %30, i64 0)
  store i32 %31, i32* %3, align 4
  br label %330

32:                                               ; preds = %2
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @F_SETFD, align 4
  %38 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %39 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @kern_fcntl(%struct.thread* %33, i32 %36, i32 %37, i64 %40)
  store i32 %41, i32* %3, align 4
  br label %330

42:                                               ; preds = %2
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %45 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @F_GETFL, align 4
  %48 = call i32 @kern_fcntl(%struct.thread* %43, i32 %46, i32 %47, i64 0)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @O_RDONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %42
  %63 = load i32, i32* @LINUX_O_RDONLY, align 4
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %42
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @O_WRONLY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* @LINUX_O_WRONLY, align 4
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @O_RDWR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32, i32* @LINUX_O_RDWR, align 4
  %90 = load %struct.thread*, %struct.thread** %4, align 8
  %91 = getelementptr inbounds %struct.thread, %struct.thread* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %83
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @O_NDELAY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @LINUX_O_NONBLOCK, align 4
  %103 = load %struct.thread*, %struct.thread** %4, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %101, %96
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @O_APPEND, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32, i32* @LINUX_O_APPEND, align 4
  %116 = load %struct.thread*, %struct.thread** %4, align 8
  %117 = getelementptr inbounds %struct.thread, %struct.thread* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %115
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %114, %109
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @O_FSYNC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i32, i32* @LINUX_O_SYNC, align 4
  %129 = load %struct.thread*, %struct.thread** %4, align 8
  %130 = getelementptr inbounds %struct.thread, %struct.thread* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %127, %122
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @O_ASYNC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i32, i32* @LINUX_FASYNC, align 4
  %142 = load %struct.thread*, %struct.thread** %4, align 8
  %143 = getelementptr inbounds %struct.thread, %struct.thread* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %141
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %135
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %330

150:                                              ; preds = %2
  store i64 0, i64* %9, align 8
  %151 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %152 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @LINUX_O_NDELAY, align 4
  %155 = sext i32 %154 to i64
  %156 = and i64 %153, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load i64, i64* @O_NONBLOCK, align 8
  %160 = load i64, i64* %9, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %9, align 8
  br label %162

162:                                              ; preds = %158, %150
  %163 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %164 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @LINUX_O_APPEND, align 4
  %167 = sext i32 %166 to i64
  %168 = and i64 %165, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load i32, i32* @O_APPEND, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %9, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %9, align 8
  br label %175

175:                                              ; preds = %170, %162
  %176 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %177 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @LINUX_O_SYNC, align 4
  %180 = sext i32 %179 to i64
  %181 = and i64 %178, %180
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load i32, i32* @O_FSYNC, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %9, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %9, align 8
  br label %188

188:                                              ; preds = %183, %175
  %189 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %190 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @LINUX_FASYNC, align 4
  %193 = sext i32 %192 to i64
  %194 = and i64 %191, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load i32, i32* @O_ASYNC, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %9, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %9, align 8
  br label %201

201:                                              ; preds = %196, %188
  %202 = load %struct.thread*, %struct.thread** %4, align 8
  %203 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %204 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @F_SETFL, align 4
  %207 = load i64, i64* %9, align 8
  %208 = call i32 @kern_fcntl(%struct.thread* %202, i32 %205, i32 %206, i64 %207)
  store i32 %208, i32* %3, align 4
  br label %330

209:                                              ; preds = %2
  %210 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %211 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @copyin(i8* %213, %struct.l_flock* %6, i32 4)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %3, align 4
  br label %330

219:                                              ; preds = %209
  %220 = call i32 @linux_to_bsd_flock(%struct.l_flock* %6, %struct.flock* %7)
  %221 = load %struct.thread*, %struct.thread** %4, align 8
  %222 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %223 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @F_GETLK, align 4
  %226 = ptrtoint %struct.flock* %7 to i64
  %227 = call i32 @kern_fcntl(%struct.thread* %221, i32 %224, i32 %225, i64 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %219
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %3, align 4
  br label %330

232:                                              ; preds = %219
  %233 = call i32 @bsd_to_linux_flock(%struct.flock* %7, %struct.l_flock* %6)
  %234 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %235 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @copyout(%struct.l_flock* %6, i8* %237, i32 4)
  store i32 %238, i32* %3, align 4
  br label %330

239:                                              ; preds = %2
  %240 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %241 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 @copyin(i8* %243, %struct.l_flock* %6, i32 4)
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %239
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %3, align 4
  br label %330

249:                                              ; preds = %239
  %250 = call i32 @linux_to_bsd_flock(%struct.l_flock* %6, %struct.flock* %7)
  %251 = load %struct.thread*, %struct.thread** %4, align 8
  %252 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %253 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @F_SETLK, align 4
  %256 = ptrtoint %struct.flock* %7 to i64
  %257 = call i32 @kern_fcntl(%struct.thread* %251, i32 %254, i32 %255, i64 %256)
  store i32 %257, i32* %3, align 4
  br label %330

258:                                              ; preds = %2
  %259 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %260 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to i8*
  %263 = call i32 @copyin(i8* %262, %struct.l_flock* %6, i32 4)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %258
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %3, align 4
  br label %330

268:                                              ; preds = %258
  %269 = call i32 @linux_to_bsd_flock(%struct.l_flock* %6, %struct.flock* %7)
  %270 = load %struct.thread*, %struct.thread** %4, align 8
  %271 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %272 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @F_SETLKW, align 4
  %275 = ptrtoint %struct.flock* %7 to i64
  %276 = call i32 @kern_fcntl(%struct.thread* %270, i32 %273, i32 %274, i64 %275)
  store i32 %276, i32* %3, align 4
  br label %330

277:                                              ; preds = %2
  %278 = load %struct.thread*, %struct.thread** %4, align 8
  %279 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %280 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @F_GETOWN, align 4
  %283 = call i32 @kern_fcntl(%struct.thread* %278, i32 %281, i32 %282, i64 0)
  store i32 %283, i32* %3, align 4
  br label %330

284:                                              ; preds = %2
  %285 = load %struct.thread*, %struct.thread** %4, align 8
  %286 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %287 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @fget(%struct.thread* %285, i32 %288, i32* @cap_fcntl_rights, %struct.file** %8)
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %3, align 4
  br label %330

294:                                              ; preds = %284
  %295 = load %struct.file*, %struct.file** %8, align 8
  %296 = getelementptr inbounds %struct.file, %struct.file* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @DTYPE_PIPE, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = load %struct.file*, %struct.file** %8, align 8
  %302 = load %struct.thread*, %struct.thread** %4, align 8
  %303 = call i32 @fdrop(%struct.file* %301, %struct.thread* %302)
  %304 = load i32, i32* @EINVAL, align 4
  store i32 %304, i32* %3, align 4
  br label %330

305:                                              ; preds = %294
  %306 = load %struct.file*, %struct.file** %8, align 8
  %307 = load %struct.thread*, %struct.thread** %4, align 8
  %308 = call i32 @fdrop(%struct.file* %306, %struct.thread* %307)
  %309 = load %struct.thread*, %struct.thread** %4, align 8
  %310 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %311 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @F_SETOWN, align 4
  %314 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %315 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @kern_fcntl(%struct.thread* %309, i32 %312, i32 %313, i64 %316)
  store i32 %317, i32* %3, align 4
  br label %330

318:                                              ; preds = %2
  %319 = load %struct.thread*, %struct.thread** %4, align 8
  %320 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %321 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %324 = load %struct.linux_fcntl_args*, %struct.linux_fcntl_args** %5, align 8
  %325 = getelementptr inbounds %struct.linux_fcntl_args, %struct.linux_fcntl_args* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @kern_fcntl(%struct.thread* %319, i32 %322, i32 %323, i64 %326)
  store i32 %327, i32* %3, align 4
  br label %330

328:                                              ; preds = %2
  %329 = load i32, i32* @EINVAL, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %328, %318, %305, %300, %292, %277, %268, %266, %249, %247, %232, %230, %217, %201, %148, %32, %25, %15
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @kern_fcntl(%struct.thread*, i32, i32, i64) #1

declare dso_local i32 @copyin(i8*, %struct.l_flock*, i32) #1

declare dso_local i32 @linux_to_bsd_flock(%struct.l_flock*, %struct.flock*) #1

declare dso_local i32 @bsd_to_linux_flock(%struct.flock*, %struct.l_flock*) #1

declare dso_local i32 @copyout(%struct.l_flock*, i8*, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
