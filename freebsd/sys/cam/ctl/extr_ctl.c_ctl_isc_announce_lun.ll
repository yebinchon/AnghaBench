; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_announce_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_announce_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.ctl_softc* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.ctl_ha_msg_lun_pr_key* }
%struct.ctl_ha_msg_lun_pr_key = type { i32, i32 }
%struct.ctl_softc = type { i64 }
%union.ctl_ha_msg = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@CTL_HA_LINK_ONLINE = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_MSG_LUN_SYNC = common dso_local global i32 0, align 4
@CTL_MAX_INITIATORS = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@CTL_LUN_PRIMARY_SC = common dso_local global i32 0, align 4
@CTL_NUM_MODE_PAGES = common dso_local global i32 0, align 4
@SMPH_PC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_isc_announce_lun(%struct.ctl_lun* %0) #0 {
  %2 = alloca %struct.ctl_lun*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %union.ctl_ha_msg*, align 8
  %5 = alloca %struct.ctl_ha_msg_lun_pr_key, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_lun* %0, %struct.ctl_lun** %2, align 8
  %8 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %9 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %8, i32 0, i32 9
  %10 = load %struct.ctl_softc*, %struct.ctl_softc** %9, align 8
  store %struct.ctl_softc* %10, %struct.ctl_softc** %3, align 8
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CTL_HA_LINK_ONLINE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %256

17:                                               ; preds = %1
  %18 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %19 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %18, i32 0, i32 3
  %20 = call i32 @mtx_lock(i32* %19)
  store i32 40, i32* %6, align 4
  %21 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %22 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %21, i32 0, i32 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %27 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %26, i32 0, i32 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %35 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %79, %33
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 3
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @M_CTL, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = call %union.ctl_ha_msg* @malloc(i32 %47, i32 %48, i32 %49)
  store %union.ctl_ha_msg* %50, %union.ctl_ha_msg** %4, align 8
  %51 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %52 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %51, i32 0, i32 3
  %53 = call i32 @mtx_lock(i32* %52)
  store i32 40, i32* %7, align 4
  %54 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %55 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %43
  %59 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %60 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %59, i32 0, i32 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %58, %43
  %67 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %68 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 8, %70
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %81 = load i32, i32* @M_CTL, align 4
  %82 = call i32 @free(%union.ctl_ha_msg* %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %6, align 4
  br label %43

84:                                               ; preds = %66
  %85 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %86 = bitcast %union.ctl_ha_msg* %85 to %struct.TYPE_12__*
  %87 = call i32 @bzero(%struct.TYPE_12__* %86, i32 40)
  %88 = load i32, i32* @CTL_MSG_LUN_SYNC, align 4
  %89 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %90 = bitcast %union.ctl_ha_msg* %89 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %93 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %96 = bitcast %union.ctl_ha_msg* %95 to %struct.TYPE_8__*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %100 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %103 = bitcast %union.ctl_ha_msg* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %107 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %110 = bitcast %union.ctl_ha_msg* %109 to %struct.TYPE_12__*
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %113 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %116 = bitcast %union.ctl_ha_msg* %115 to %struct.TYPE_12__*
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 8
  %118 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %119 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %122 = bitcast %union.ctl_ha_msg* %121 to %struct.TYPE_12__*
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 4
  %124 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %125 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %128 = bitcast %union.ctl_ha_msg* %127 to %struct.TYPE_12__*
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %131 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %134 = bitcast %union.ctl_ha_msg* %133 to %struct.TYPE_12__*
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  store i32 0, i32* %6, align 4
  %136 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %137 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %136, i32 0, i32 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = icmp ne %struct.TYPE_9__* %138, null
  br i1 %139, label %140, label %172

140:                                              ; preds = %84
  %141 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %142 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %141, i32 0, i32 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %147 = bitcast %union.ctl_ha_msg* %146 to %struct.TYPE_12__*
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  store i32 %145, i32* %148, align 8
  %149 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %150 = bitcast %union.ctl_ha_msg* %149 to %struct.TYPE_12__*
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %157 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %156, i32 0, i32 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load %struct.ctl_ha_msg_lun_pr_key*, %struct.ctl_ha_msg_lun_pr_key** %159, align 8
  %161 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %162 = bitcast %union.ctl_ha_msg* %161 to %struct.TYPE_12__*
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @memcpy(i32* %155, %struct.ctl_ha_msg_lun_pr_key* %160, i32 %164)
  %166 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %167 = bitcast %union.ctl_ha_msg* %166 to %struct.TYPE_12__*
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %140, %84
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %199, %172
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %173
  %178 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @ctl_get_prkey(%struct.ctl_lun* %178, i32 %179)
  %181 = getelementptr inbounds %struct.ctl_ha_msg_lun_pr_key, %struct.ctl_ha_msg_lun_pr_key* %5, i32 0, i32 1
  store i32 %180, i32* %181, align 4
  %182 = icmp eq i32 %180, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %199

184:                                              ; preds = %177
  %185 = load i32, i32* %7, align 4
  %186 = getelementptr inbounds %struct.ctl_ha_msg_lun_pr_key, %struct.ctl_ha_msg_lun_pr_key* %5, i32 0, i32 0
  store i32 %185, i32* %186, align 4
  %187 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %188 = bitcast %union.ctl_ha_msg* %187 to %struct.TYPE_12__*
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = call i32 @memcpy(i32* %193, %struct.ctl_ha_msg_lun_pr_key* %5, i32 8)
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %196, 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %184, %183
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %173

202:                                              ; preds = %173
  %203 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %204 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %203, i32 0, i32 3
  %205 = call i32 @mtx_unlock(i32* %204)
  %206 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %207 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %208 = bitcast %union.ctl_ha_msg* %207 to i32*
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = add i64 4, %210
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* @M_WAITOK, align 4
  %214 = call i32 @ctl_ha_msg_send(i32 %206, i32* %208, i32 %212, i32 %213)
  %215 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %216 = load i32, i32* @M_CTL, align 4
  %217 = call i32 @free(%union.ctl_ha_msg* %215, i32 %216)
  %218 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %219 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @CTL_LUN_PRIMARY_SC, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %256

224:                                              ; preds = %202
  store i32 0, i32* %6, align 4
  br label %225

225:                                              ; preds = %252, %224
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @CTL_NUM_MODE_PAGES, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %255

229:                                              ; preds = %225
  %230 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %231 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %232 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SMPH_PC_MASK, align 4
  %241 = and i32 %239, %240
  %242 = load %struct.ctl_lun*, %struct.ctl_lun** %2, align 8
  %243 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ctl_isc_announce_mode(%struct.ctl_lun* %230, i32 -1, i32 %241, i32 %250)
  br label %252

252:                                              ; preds = %229
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %6, align 4
  br label %225

255:                                              ; preds = %225
  br label %256

256:                                              ; preds = %16, %255, %202
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %union.ctl_ha_msg* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%union.ctl_ha_msg*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ctl_ha_msg_lun_pr_key*, i32) #1

declare dso_local i32 @ctl_get_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_ha_msg_send(i32, i32*, i32, i32) #1

declare dso_local i32 @ctl_isc_announce_mode(%struct.ctl_lun*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
