; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i64, i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32 }

@MDF_BCAST = common dso_local global i32 0, align 4
@MDF_MCAST = common dso_local global i32 0, align 4
@current_time = common dso_local global i8* null, align 8
@sys_leap = common dso_local global i64 0, align 8
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@MDF_ACAST = common dso_local global i32 0, align 4
@sys_beacon = common dso_local global i64 0, align 8
@sys_survivors = common dso_local global i64 0, align 8
@sys_minclock = common dso_local global i64 0, align 8
@peer_associations = common dso_local global i32 0, align 4
@sys_maxclock = common dso_local global i32 0, align 4
@sys_ttlmax = common dso_local global i64 0, align 8
@MDF_POOL = common dso_local global i32 0, align 4
@MAXDISPERSE = common dso_local global i32 0, align 4
@PEVNT_UNREACH = common dso_local global i32 0, align 4
@FLAG_IBURST = common dso_local global i32 0, align 4
@NTP_RETRY = common dso_local global i8* null, align 8
@sys_poll = common dso_local global i32 0, align 4
@FLAG_PREEMPT = common dso_local global i32 0, align 4
@FLAG_BURST = common dso_local global i32 0, align 4
@NTP_UNREACH = common dso_local global i64 0, align 8
@FLAG_CONFIG = common dso_local global i32 0, align 4
@PEVNT_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@mode_ntpdate = common dso_local global i64 0, align 8
@peer_ntpdate = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ntpd: no servers found\00", align 1
@msyslog_term = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ntpd: no servers found\0A\00", align 1
@MODE_BCLIENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transmit(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.peer* %0, %struct.peer** %2, align 8
  %5 = load %struct.peer*, %struct.peer** %2, align 8
  %6 = getelementptr inbounds %struct.peer, %struct.peer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.peer*, %struct.peer** %2, align 8
  %9 = getelementptr inbounds %struct.peer, %struct.peer* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.peer*, %struct.peer** %2, align 8
  %12 = getelementptr inbounds %struct.peer, %struct.peer* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.peer*, %struct.peer** %2, align 8
  %17 = getelementptr inbounds %struct.peer, %struct.peer* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.peer*, %struct.peer** %2, align 8
  %22 = getelementptr inbounds %struct.peer, %struct.peer* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.peer*, %struct.peer** %2, align 8
  %25 = getelementptr inbounds %struct.peer, %struct.peer* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %15, %1
  %27 = load %struct.peer*, %struct.peer** %2, align 8
  %28 = getelementptr inbounds %struct.peer, %struct.peer* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MDF_BCAST, align 4
  %31 = load i32, i32* @MDF_MCAST, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %26
  %36 = load i8*, i8** @current_time, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.peer*, %struct.peer** %2, align 8
  %39 = getelementptr inbounds %struct.peer, %struct.peer* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.peer*, %struct.peer** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @poll_update(%struct.peer* %40, i32 %41)
  %43 = load i64, i64* @sys_leap, align 8
  %44 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.peer*, %struct.peer** %2, align 8
  %48 = call i32 @peer_xmit(%struct.peer* %47)
  br label %49

49:                                               ; preds = %46, %35
  br label %326

50:                                               ; preds = %26
  %51 = load %struct.peer*, %struct.peer** %2, align 8
  %52 = getelementptr inbounds %struct.peer, %struct.peer* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MDF_ACAST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %50
  %58 = load i8*, i8** @current_time, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.peer*, %struct.peer** %2, align 8
  %61 = getelementptr inbounds %struct.peer, %struct.peer* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.peer*, %struct.peer** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @poll_update(%struct.peer* %62, i32 %63)
  %65 = load %struct.peer*, %struct.peer** %2, align 8
  %66 = getelementptr inbounds %struct.peer, %struct.peer* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @sys_beacon, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %57
  %71 = load %struct.peer*, %struct.peer** %2, align 8
  %72 = getelementptr inbounds %struct.peer, %struct.peer* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.peer*, %struct.peer** %2, align 8
  %74 = getelementptr inbounds %struct.peer, %struct.peer* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.peer*, %struct.peer** %2, align 8
  %76 = call i32 @peer_xmit(%struct.peer* %75)
  br label %100

77:                                               ; preds = %57
  %78 = load i64, i64* @sys_survivors, align 8
  %79 = load i64, i64* @sys_minclock, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @peer_associations, align 4
  %83 = load i32, i32* @sys_maxclock, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81, %77
  %86 = load %struct.peer*, %struct.peer** %2, align 8
  %87 = getelementptr inbounds %struct.peer, %struct.peer* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @sys_ttlmax, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.peer*, %struct.peer** %2, align 8
  %93 = getelementptr inbounds %struct.peer, %struct.peer* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.peer*, %struct.peer** %2, align 8
  %98 = call i32 @peer_xmit(%struct.peer* %97)
  br label %99

99:                                               ; preds = %96, %81
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.peer*, %struct.peer** %2, align 8
  %102 = getelementptr inbounds %struct.peer, %struct.peer* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  br label %326

105:                                              ; preds = %50
  %106 = load %struct.peer*, %struct.peer** %2, align 8
  %107 = getelementptr inbounds %struct.peer, %struct.peer* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MDF_POOL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %105
  %113 = load i8*, i8** @current_time, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.peer*, %struct.peer** %2, align 8
  %116 = getelementptr inbounds %struct.peer, %struct.peer* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.peer*, %struct.peer** %2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @poll_update(%struct.peer* %117, i32 %118)
  %120 = load i32, i32* @peer_associations, align 4
  %121 = load i32, i32* @sys_maxclock, align 4
  %122 = mul nsw i32 2, %121
  %123 = icmp sle i32 %120, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %112
  %125 = load i32, i32* @peer_associations, align 4
  %126 = load i32, i32* @sys_maxclock, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* @sys_survivors, align 8
  %130 = load i64, i64* @sys_minclock, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128, %124
  %133 = load %struct.peer*, %struct.peer** %2, align 8
  %134 = call i32 @pool_xmit(%struct.peer* %133)
  br label %135

135:                                              ; preds = %132, %128, %112
  br label %326

136:                                              ; preds = %105
  %137 = load %struct.peer*, %struct.peer** %2, align 8
  %138 = getelementptr inbounds %struct.peer, %struct.peer* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %274

141:                                              ; preds = %136
  %142 = load %struct.peer*, %struct.peer** %2, align 8
  %143 = getelementptr inbounds %struct.peer, %struct.peer* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %4, align 4
  %145 = load i8*, i8** @current_time, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.peer*, %struct.peer** %2, align 8
  %148 = getelementptr inbounds %struct.peer, %struct.peer* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.peer*, %struct.peer** %2, align 8
  %150 = getelementptr inbounds %struct.peer, %struct.peer* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = load %struct.peer*, %struct.peer** %2, align 8
  %154 = getelementptr inbounds %struct.peer, %struct.peer* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.peer*, %struct.peer** %2, align 8
  %158 = getelementptr inbounds %struct.peer, %struct.peer* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %191, label %161

161:                                              ; preds = %141
  %162 = load %struct.peer*, %struct.peer** %2, align 8
  %163 = load i32, i32* @MAXDISPERSE, align 4
  %164 = call i32 @clock_filter(%struct.peer* %162, i32 0, i32 0, i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.peer*, %struct.peer** %2, align 8
  %169 = call i32 @peer_unfit(%struct.peer* %168)
  %170 = load i32, i32* @PEVNT_UNREACH, align 4
  %171 = load %struct.peer*, %struct.peer** %2, align 8
  %172 = call i32 @report_event(i32 %170, %struct.peer* %171, i8* null)
  br label %173

173:                                              ; preds = %167, %161
  %174 = load %struct.peer*, %struct.peer** %2, align 8
  %175 = getelementptr inbounds %struct.peer, %struct.peer* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FLAG_IBURST, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.peer*, %struct.peer** %2, align 8
  %182 = getelementptr inbounds %struct.peer, %struct.peer* %181, i32 0, i32 9
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i8*, i8** @NTP_RETRY, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.peer*, %struct.peer** %2, align 8
  %189 = getelementptr inbounds %struct.peer, %struct.peer* %188, i32 0, i32 9
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %185, %180, %173
  br label %224

191:                                              ; preds = %141
  %192 = load i32, i32* @sys_poll, align 4
  store i32 %192, i32* %3, align 4
  %193 = load %struct.peer*, %struct.peer** %2, align 8
  %194 = getelementptr inbounds %struct.peer, %struct.peer* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @FLAG_PREEMPT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %191
  %200 = load %struct.peer*, %struct.peer** %2, align 8
  %201 = getelementptr inbounds %struct.peer, %struct.peer* %200, i32 0, i32 5
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %199, %191
  %203 = load %struct.peer*, %struct.peer** %2, align 8
  %204 = getelementptr inbounds %struct.peer, %struct.peer* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @FLAG_BURST, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %202
  %210 = load %struct.peer*, %struct.peer** %2, align 8
  %211 = getelementptr inbounds %struct.peer, %struct.peer* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load %struct.peer*, %struct.peer** %2, align 8
  %216 = call i32 @peer_unfit(%struct.peer* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = load i8*, i8** @NTP_RETRY, align 8
  %220 = ptrtoint i8* %219 to i64
  %221 = load %struct.peer*, %struct.peer** %2, align 8
  %222 = getelementptr inbounds %struct.peer, %struct.peer* %221, i32 0, i32 9
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %218, %214, %209, %202
  br label %224

224:                                              ; preds = %223, %190
  %225 = load %struct.peer*, %struct.peer** %2, align 8
  %226 = getelementptr inbounds %struct.peer, %struct.peer* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @NTP_UNREACH, align 8
  %229 = icmp sge i64 %227, %228
  br i1 %229, label %230, label %273

230:                                              ; preds = %224
  %231 = load i32, i32* %3, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %3, align 4
  %233 = load %struct.peer*, %struct.peer** %2, align 8
  %234 = getelementptr inbounds %struct.peer, %struct.peer* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @FLAG_CONFIG, align 4
  %237 = load i32, i32* @FLAG_PREEMPT, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %235, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %230
  %242 = load i32, i32* @PEVNT_RESTART, align 4
  %243 = load %struct.peer*, %struct.peer** %2, align 8
  %244 = call i32 @report_event(i32 %242, %struct.peer* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %245 = load %struct.peer*, %struct.peer** %2, align 8
  %246 = call i32 @peer_clear(%struct.peer* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %247 = load %struct.peer*, %struct.peer** %2, align 8
  %248 = call i32 @unpeer(%struct.peer* %247)
  br label %326

249:                                              ; preds = %230
  %250 = load %struct.peer*, %struct.peer** %2, align 8
  %251 = getelementptr inbounds %struct.peer, %struct.peer* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @FLAG_PREEMPT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %249
  %257 = load i32, i32* @peer_associations, align 4
  %258 = load i32, i32* @sys_maxclock, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %256
  %261 = load %struct.peer*, %struct.peer** %2, align 8
  %262 = call i64 @score_all(%struct.peer* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %260
  %265 = load i32, i32* @PEVNT_RESTART, align 4
  %266 = load %struct.peer*, %struct.peer** %2, align 8
  %267 = call i32 @report_event(i32 %265, %struct.peer* %266, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %268 = load %struct.peer*, %struct.peer** %2, align 8
  %269 = call i32 @peer_clear(%struct.peer* %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %270 = load %struct.peer*, %struct.peer** %2, align 8
  %271 = call i32 @unpeer(%struct.peer* %270)
  br label %326

272:                                              ; preds = %260, %256, %249
  br label %273

273:                                              ; preds = %272, %224
  br label %303

274:                                              ; preds = %136
  %275 = load %struct.peer*, %struct.peer** %2, align 8
  %276 = getelementptr inbounds %struct.peer, %struct.peer* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, -1
  store i64 %278, i64* %276, align 8
  %279 = load %struct.peer*, %struct.peer** %2, align 8
  %280 = getelementptr inbounds %struct.peer, %struct.peer* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %274
  %284 = load i64, i64* @mode_ntpdate, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load i64, i64* @peer_ntpdate, align 8
  %288 = add nsw i64 %287, -1
  store i64 %288, i64* @peer_ntpdate, align 8
  %289 = load i64, i64* @peer_ntpdate, align 8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %286
  %292 = load i32, i32* @LOG_NOTICE, align 4
  %293 = call i32 @msyslog(i32 %292, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %294 = load i32, i32* @msyslog_term, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %291
  %299 = call i32 @exit(i32 0) #3
  unreachable

300:                                              ; preds = %286
  br label %301

301:                                              ; preds = %300, %283
  br label %302

302:                                              ; preds = %301, %274
  br label %303

303:                                              ; preds = %302, %273
  %304 = load %struct.peer*, %struct.peer** %2, align 8
  %305 = getelementptr inbounds %struct.peer, %struct.peer* %304, i32 0, i32 9
  %306 = load i64, i64* %305, align 8
  %307 = icmp sgt i64 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load %struct.peer*, %struct.peer** %2, align 8
  %310 = getelementptr inbounds %struct.peer, %struct.peer* %309, i32 0, i32 9
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, -1
  store i64 %312, i64* %310, align 8
  br label %313

313:                                              ; preds = %308, %303
  %314 = load %struct.peer*, %struct.peer** %2, align 8
  %315 = load i32, i32* %3, align 4
  %316 = call i32 @poll_update(%struct.peer* %314, i32 %315)
  %317 = load %struct.peer*, %struct.peer** %2, align 8
  %318 = getelementptr inbounds %struct.peer, %struct.peer* %317, i32 0, i32 10
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @MODE_BCLIENT, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %313
  %323 = load %struct.peer*, %struct.peer** %2, align 8
  %324 = call i32 @peer_xmit(%struct.peer* %323)
  br label %325

325:                                              ; preds = %322, %313
  br label %326

326:                                              ; preds = %325, %264, %241, %135, %100, %49
  ret void
}

declare dso_local i32 @poll_update(%struct.peer*, i32) #1

declare dso_local i32 @peer_xmit(%struct.peer*) #1

declare dso_local i32 @pool_xmit(%struct.peer*) #1

declare dso_local i32 @clock_filter(%struct.peer*, i32, i32, i32) #1

declare dso_local i32 @peer_unfit(%struct.peer*) #1

declare dso_local i32 @report_event(i32, %struct.peer*, i8*) #1

declare dso_local i32 @peer_clear(%struct.peer*, i8*) #1

declare dso_local i32 @unpeer(%struct.peer*) #1

declare dso_local i64 @score_all(%struct.peer*) #1

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
