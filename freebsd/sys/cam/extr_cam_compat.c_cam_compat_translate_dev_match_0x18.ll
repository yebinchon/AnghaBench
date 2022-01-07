; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_compat.c_cam_compat_translate_dev_match_0x18.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_compat.c_cam_compat_translate_dev_match_0x18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.dev_match_result* }
%struct.dev_match_result = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.dev_match_result_0x18 = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.cam_periph_map_info = type { i32 }

@MAXPHYS = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*)* @cam_compat_translate_dev_match_0x18 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cam_compat_translate_dev_match_0x18(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca %struct.dev_match_result*, align 8
  %4 = alloca %struct.dev_match_result_0x18*, align 8
  %5 = alloca %struct.cam_periph_map_info, align 4
  %6 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %2, align 8
  %7 = call i32 @bzero(%struct.cam_periph_map_info* %5, i32 4)
  %8 = load %union.ccb*, %union.ccb** %2, align 8
  %9 = load i32, i32* @MAXPHYS, align 4
  %10 = call i32 @cam_periph_mapmem(%union.ccb* %8, %struct.cam_periph_map_info* %5, i32 %9)
  %11 = load %union.ccb*, %union.ccb** %2, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_8__*
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.dev_match_result*, %struct.dev_match_result** %13, align 8
  store %struct.dev_match_result* %14, %struct.dev_match_result** %3, align 8
  %15 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %16 = bitcast %struct.dev_match_result* %15 to %struct.dev_match_result_0x18*
  store %struct.dev_match_result_0x18* %16, %struct.dev_match_result_0x18** %4, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %240, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %union.ccb*, %union.ccb** %2, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %243

24:                                               ; preds = %17
  %25 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %25, i64 %27
  %29 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %31, i64 %33
  %35 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %36, i64 %38
  %40 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %239 [
    i32 128, label %42
    i32 129, label %119
    i32 130, label %225
  ]

42:                                               ; preds = %24
  %43 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %43, i64 %45
  %47 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %50, i64 %52
  %54 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  %57 = load i32, i32* @DEV_IDLEN, align 4
  %58 = call i32 @memcpy(i32* %49, i32* %56, i32 %57)
  %59 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %59, i64 %61
  %63 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %67, i64 %69
  %71 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i32 %66, i32* %73, align 4
  %74 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %74, i64 %76
  %78 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %82, i64 %84
  %86 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store i32 %81, i32* %88, align 4
  %89 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %89, i64 %91
  %93 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %97, i64 %99
  %101 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store i32 %96, i32* %103, align 4
  %104 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %104, i64 %106
  %108 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %112, i64 %114
  %116 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 %111, i32* %118, align 4
  br label %239

119:                                              ; preds = %24
  %120 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %120, i64 %122
  %124 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %128, i64 %130
  %132 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 6
  store i32 %127, i32* %134, align 4
  %135 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %135, i64 %137
  %139 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %143, i64 %145
  %147 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  store i32 %142, i32* %149, align 4
  %150 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %150, i64 %152
  %154 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %158, i64 %160
  %162 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 4
  store i32 %157, i32* %164, align 4
  %165 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %165, i64 %167
  %169 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %173, i64 %175
  %177 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  store i32 %172, i32* %179, align 4
  %180 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %180, i64 %182
  %184 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %187, i64 %189
  %191 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = call i32 @memcpy(i32* %186, i32* %193, i32 4)
  %195 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %195, i64 %197
  %199 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %202, i64 %204
  %206 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = call i32 @memcpy(i32* %201, i32* %208, i32 4)
  %210 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %210, i64 %212
  %214 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %218, i64 %220
  %222 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  store i32 %217, i32* %224, align 4
  br label %239

225:                                              ; preds = %24
  %226 = load %struct.dev_match_result_0x18*, %struct.dev_match_result_0x18** %4, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %226, i64 %228
  %230 = getelementptr inbounds %struct.dev_match_result_0x18, %struct.dev_match_result_0x18* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load %struct.dev_match_result*, %struct.dev_match_result** %3, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %232, i64 %234
  %236 = getelementptr inbounds %struct.dev_match_result, %struct.dev_match_result* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = call i32 @memcpy(i32* %231, i32* %237, i32 4)
  br label %239

239:                                              ; preds = %24, %225, %119, %42
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %6, align 4
  br label %17

243:                                              ; preds = %17
  %244 = load %union.ccb*, %union.ccb** %2, align 8
  %245 = call i32 @cam_periph_unmapmem(%union.ccb* %244, %struct.cam_periph_map_info* %5)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @cam_periph_mapmem(%union.ccb*, %struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cam_periph_unmapmem(%union.ccb*, %struct.cam_periph_map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
