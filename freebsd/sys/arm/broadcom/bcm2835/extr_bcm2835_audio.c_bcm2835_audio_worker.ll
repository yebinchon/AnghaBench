; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i64, i64, i32, i32, i32, %struct.bcm2835_audio_chinfo, i32 }
%struct.bcm2835_audio_chinfo = type { i64, i32, i32, i64, i32, i32, i32 }

@PLAYBACK_IDLE = common dso_local global i64 0, align 8
@WORKER_RUNNING = common dso_local global i64 0, align 8
@AUDIO_PARAMS = common dso_local global i32 0, align 4
@AUDIO_STOP = common dso_local global i32 0, align 4
@PLAYBACK_PLAYING = common dso_local global i64 0, align 8
@AUDIO_PLAY = common dso_local global i32 0, align 4
@VCHIQ_AUDIO_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ch->available_space == %d\0A\00", align 1
@WORKER_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm2835_audio_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_audio_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm2835_audio_info*, align 8
  %4 = alloca %struct.bcm2835_audio_chinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.bcm2835_audio_info*
  store %struct.bcm2835_audio_info* %15, %struct.bcm2835_audio_info** %3, align 8
  %16 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %17 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %16, i32 0, i32 5
  store %struct.bcm2835_audio_chinfo* %17, %struct.bcm2835_audio_chinfo** %4, align 8
  %18 = load i64, i64* @PLAYBACK_IDLE, align 8
  %19 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %20 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %1, %104, %144, %151, %193, %194
  %22 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %23 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WORKER_RUNNING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %244

28:                                               ; preds = %21
  %29 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %30 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %29)
  br label %31

31:                                               ; preds = %42, %28
  %32 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %33 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %38 = call i64 @bcm2835_audio_buffer_should_sleep(%struct.bcm2835_audio_chinfo* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i1 [ false, %31 ], [ %39, %36 ]
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %44 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %43, i32 0, i32 4
  %45 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %46 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %45, i32 0, i32 6
  %47 = call i32 @cv_wait_sig(i32* %44, i32* %46)
  br label %31

48:                                               ; preds = %40
  %49 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %50 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %54 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %56 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @AUDIO_PARAMS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %48
  %62 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %63 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %62)
  %64 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %65 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  %67 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %68 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %71 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %74 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %77 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %76)
  %78 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %79 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PLAYBACK_IDLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %61
  %84 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @bcm2835_audio_update_params(%struct.bcm2835_audio_info* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %61
  %89 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @bcm2835_audio_update_controls(%struct.bcm2835_audio_info* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %48
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @AUDIO_STOP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %100 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PLAYBACK_PLAYING, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %106 = call i32 @bcm2835_audio_stop(%struct.bcm2835_audio_chinfo* %105)
  %107 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %108 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %107)
  %109 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %110 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %109, i32 0, i32 5
  %111 = call i32 @bcm2835_audio_reset_channel(%struct.bcm2835_audio_chinfo* %110)
  %112 = load i64, i64* @PLAYBACK_IDLE, align 8
  %113 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %114 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %116 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %115)
  br label %21

117:                                              ; preds = %98, %93
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @AUDIO_PLAY, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %124 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PLAYBACK_IDLE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %130 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %129)
  %131 = load i64, i64* @PLAYBACK_PLAYING, align 8
  %132 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %133 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %135 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %134)
  %136 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %137 = call i32 @bcm2835_audio_start(%struct.bcm2835_audio_chinfo* %136)
  br label %138

138:                                              ; preds = %128, %122, %117
  %139 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %140 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PLAYBACK_IDLE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %21

145:                                              ; preds = %138
  %146 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %147 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @sndbuf_getready(i32 %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %21

152:                                              ; preds = %145
  %153 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %154 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @sndbuf_getready(i32 %155)
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %10, align 4
  %158 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %159 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @sndbuf_getsize(i32 %160)
  store i32 %161, i32* %11, align 4
  %162 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %163 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @sndbuf_getreadyptr(i32 %164)
  store i32 %165, i32* %12, align 4
  %166 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %167 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %11, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %152
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %173, %152
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %180 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @min(i32 %178, i64 %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @VCHIQ_AUDIO_PACKET_SIZE, align 4
  %185 = srem i32 %183, %184
  %186 = load i32, i32* %10, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %10, align 4
  %188 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %189 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %188)
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @VCHIQ_AUDIO_PACKET_SIZE, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %177
  br label %21

194:                                              ; preds = %177
  %195 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %196 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @sndbuf_getbuf(i32 %197)
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32* %202, i32** %13, align 8
  %203 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @bcm2835_audio_write_samples(%struct.bcm2835_audio_chinfo* %203, i32* %204, i32 %205)
  %207 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %208 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %207)
  %209 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %210 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %211, %212
  %214 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %215 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @sndbuf_getsize(i32 %216)
  %218 = srem i32 %213, %217
  %219 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %220 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %224 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %229 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %233 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp sge i64 %234, 0
  %236 = zext i1 %235 to i32
  %237 = load %struct.bcm2835_audio_chinfo*, %struct.bcm2835_audio_chinfo** %4, align 8
  %238 = getelementptr inbounds %struct.bcm2835_audio_chinfo, %struct.bcm2835_audio_chinfo* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = inttoptr i64 %239 to i8*
  %241 = call i32 @KASSERT(i32 %236, i8* %240)
  %242 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %243 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %242)
  br label %21

244:                                              ; preds = %27
  %245 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %246 = call i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info* %245)
  %247 = load i64, i64* @WORKER_STOPPED, align 8
  %248 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %249 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %251 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %250, i32 0, i32 4
  %252 = call i32 @cv_signal(i32* %251)
  %253 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %3, align 8
  %254 = call i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info* %253)
  %255 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @BCM2835_AUDIO_LOCK(%struct.bcm2835_audio_info*) #1

declare dso_local i64 @bcm2835_audio_buffer_should_sleep(%struct.bcm2835_audio_chinfo*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @BCM2835_AUDIO_UNLOCK(%struct.bcm2835_audio_info*) #1

declare dso_local i32 @bcm2835_audio_update_params(%struct.bcm2835_audio_info*, i32, i32) #1

declare dso_local i32 @bcm2835_audio_update_controls(%struct.bcm2835_audio_info*, i32, i32) #1

declare dso_local i32 @bcm2835_audio_stop(%struct.bcm2835_audio_chinfo*) #1

declare dso_local i32 @bcm2835_audio_reset_channel(%struct.bcm2835_audio_chinfo*) #1

declare dso_local i32 @bcm2835_audio_start(%struct.bcm2835_audio_chinfo*) #1

declare dso_local i64 @sndbuf_getready(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @sndbuf_getreadyptr(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @sndbuf_getbuf(i32) #1

declare dso_local i32 @bcm2835_audio_write_samples(%struct.bcm2835_audio_chinfo*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
