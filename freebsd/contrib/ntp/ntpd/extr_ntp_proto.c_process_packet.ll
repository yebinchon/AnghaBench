; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_process_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32, i8*, double, double, i64, i32, i64, i32, i64, i8*, i8*, i32, double, i32, double, i32, i64, i64, i32, double, double, double, double, i64, i32, i64, i64, i32, i8*, i8*, i8*, i32, i8*, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pkt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NTP_MAXSTRLEN = common dso_local global i32 0, align 4
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@sys_floor = common dso_local global i64 0, align 8
@sys_ceiling = common dso_local global i64 0, align 8
@TEST6 = common dso_local global i32 0, align 4
@MAXDISPERSE = common dso_local global double 0.000000e+00, align 8
@TEST7 = common dso_local global i32 0, align 4
@PKT_TEST_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"packet: flash header %04x\0A\00", align 1
@sys_processed = common dso_local global i32 0, align 4
@MIN_V4_PKT_LEN = common dso_local global i8* null, align 8
@STRATUM_UNSPEC = common dso_local global i32 0, align 4
@NTP_SHIFT = common dso_local global i32 0, align 4
@NTP_IBURST = common dso_local global i64 0, align 8
@current_time = common dso_local global i8* null, align 8
@PEVNT_REACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"t21 %.6f t34 %.6f\00", align 1
@PEVNT_XERR = common dso_local global i32 0, align 4
@MODE_BROADCAST = common dso_local global i64 0, align 8
@FLAG_XB = common dso_local global i32 0, align 4
@FLAG_BC_VOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"offset %.6f delay %.6f\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"broadcast volley: initial delay=%.6f\0A\00", align 1
@sys_bdelay = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"broadcast volley: initial delay exceeds limit\0A\00", align 1
@sys_precision = common dso_local global i32 0, align 4
@clock_phi = common dso_local global double 0.000000e+00, align 8
@MODE_CLIENT = common dso_local global i64 0, align 8
@TEST11 = common dso_local global i32 0, align 4
@MODE_BCLIENT = common dso_local global i8* null, align 8
@CRYPTO_FLAG_ALL = common dso_local global i32 0, align 4
@FLAG_SKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_packet(%struct.peer* %0, %struct.pkt* %1, i8* %2) #0 {
  %4 = alloca %struct.peer*, align 8
  %5 = alloca %struct.pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.peer* %0, %struct.peer** %4, align 8
  store %struct.pkt* %1, %struct.pkt** %5, align 8
  store i8* %2, i8** %6, align 8
  %24 = load i32, i32* @NTP_MAXSTRLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load %struct.pkt*, %struct.pkt** %5, align 8
  %29 = getelementptr inbounds %struct.pkt, %struct.pkt* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NTOHS_FP(i32 %30)
  %32 = call double @FPTOD(i32 %31)
  store double %32, double* %10, align 8
  store double 0.000000e+00, double* %9, align 8
  %33 = load %struct.pkt*, %struct.pkt** %5, align 8
  %34 = getelementptr inbounds %struct.pkt, %struct.pkt* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NTOHS_FP(i32 %35)
  %37 = call double @FPTOD(i32 %36)
  store double %37, double* %11, align 8
  %38 = load %struct.pkt*, %struct.pkt** %5, align 8
  %39 = getelementptr inbounds %struct.pkt, %struct.pkt* %38, i32 0, i32 9
  %40 = call i32 @NTOHL_FP(i32* %39, i8** %15)
  %41 = load %struct.pkt*, %struct.pkt** %5, align 8
  %42 = getelementptr inbounds %struct.pkt, %struct.pkt* %41, i32 0, i32 8
  %43 = call i32 @NTOHL_FP(i32* %42, i8** %14)
  %44 = load %struct.pkt*, %struct.pkt** %5, align 8
  %45 = getelementptr inbounds %struct.pkt, %struct.pkt* %44, i32 0, i32 7
  %46 = call i32 @NTOHL_FP(i32* %45, i8** %12)
  %47 = load %struct.pkt*, %struct.pkt** %5, align 8
  %48 = getelementptr inbounds %struct.pkt, %struct.pkt* %47, i32 0, i32 6
  %49 = call i32 @NTOHL_FP(i32* %48, i8** %13)
  %50 = load %struct.pkt*, %struct.pkt** %5, align 8
  %51 = getelementptr inbounds %struct.pkt, %struct.pkt* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @PKT_MODE(i32 %52)
  store i64 %53, i64* %17, align 8
  %54 = load %struct.pkt*, %struct.pkt** %5, align 8
  %55 = getelementptr inbounds %struct.pkt, %struct.pkt* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @PKT_LEAP(i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load %struct.pkt*, %struct.pkt** %5, align 8
  %59 = getelementptr inbounds %struct.pkt, %struct.pkt* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @PKT_VERSION(i32 %60)
  store i64 %61, i64* %19, align 8
  %62 = load %struct.pkt*, %struct.pkt** %5, align 8
  %63 = getelementptr inbounds %struct.pkt, %struct.pkt* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @PKT_TO_STRATUM(i32 %64)
  store i64 %65, i64* %20, align 8
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %3
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* @sys_floor, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* @sys_ceiling, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73, %69, %3
  %78 = load i32, i32* @TEST6, align 4
  %79 = load %struct.peer*, %struct.peer** %4, align 8
  %80 = getelementptr inbounds %struct.peer, %struct.peer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %73
  %84 = load double, double* %10, align 8
  %85 = fdiv double %84, 2.000000e+00
  %86 = load double, double* %11, align 8
  %87 = fadd double %85, %86
  %88 = load double, double* @MAXDISPERSE, align 8
  %89 = fcmp oge double %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @TEST7, align 4
  %92 = load %struct.peer*, %struct.peer** %4, align 8
  %93 = getelementptr inbounds %struct.peer, %struct.peer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.peer*, %struct.peer** %4, align 8
  %98 = getelementptr inbounds %struct.peer, %struct.peer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PKT_TEST_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load %struct.peer*, %struct.peer** %4, align 8
  %105 = getelementptr inbounds %struct.peer, %struct.peer* %104, i32 0, i32 38
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.peer*, %struct.peer** %4, align 8
  %109 = getelementptr inbounds %struct.peer, %struct.peer* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @DPRINTF(i32 1, i8* %112)
  %114 = load %struct.peer*, %struct.peer** %4, align 8
  %115 = load %struct.peer*, %struct.peer** %4, align 8
  %116 = getelementptr inbounds %struct.peer, %struct.peer* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @poll_update(%struct.peer* %114, i32 %117)
  store i32 1, i32* %23, align 4
  br label %509

119:                                              ; preds = %96
  %120 = load i32, i32* @sys_processed, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @sys_processed, align 4
  %122 = load %struct.peer*, %struct.peer** %4, align 8
  %123 = getelementptr inbounds %struct.peer, %struct.peer* %122, i32 0, i32 37
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.peer*, %struct.peer** %4, align 8
  %127 = getelementptr inbounds %struct.peer, %struct.peer* %126, i32 0, i32 36
  %128 = load %struct.peer*, %struct.peer** %4, align 8
  %129 = getelementptr inbounds %struct.peer, %struct.peer* %128, i32 0, i32 35
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = icmp ne %struct.TYPE_2__* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.peer*, %struct.peer** %4, align 8
  %134 = getelementptr inbounds %struct.peer, %struct.peer* %133, i32 0, i32 35
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  br label %138

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i32* [ %136, %132 ], [ null, %137 ]
  %140 = load %struct.peer*, %struct.peer** %4, align 8
  %141 = getelementptr inbounds %struct.peer, %struct.peer* %140, i32 0, i32 2
  %142 = load i64, i64* %18, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load %struct.pkt*, %struct.pkt** %5, align 8
  %147 = getelementptr inbounds %struct.pkt, %struct.pkt* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.pkt*, %struct.pkt** %5, align 8
  %150 = getelementptr inbounds %struct.pkt, %struct.pkt* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load double, double* %10, align 8
  %153 = load double, double* %11, align 8
  %154 = load %struct.pkt*, %struct.pkt** %5, align 8
  %155 = getelementptr inbounds %struct.pkt, %struct.pkt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = load i8*, i8** @MIN_V4_PKT_LEN, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.pkt*, %struct.pkt** %5, align 8
  %164 = getelementptr inbounds %struct.pkt, %struct.pkt* %163, i32 0, i32 2
  %165 = bitcast i32* %164 to i64*
  %166 = call i32 @record_raw_stats(i32* %127, i32* %139, i8** %14, i8** %12, i8** %13, i8** %141, i64 %142, i64 %143, i64 %144, i64 %145, i32 %148, i32 %151, double %152, double %153, i32 %156, i8* %162, i64* %165)
  %167 = load i64, i64* %18, align 8
  %168 = load %struct.peer*, %struct.peer** %4, align 8
  %169 = getelementptr inbounds %struct.peer, %struct.peer* %168, i32 0, i32 34
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %20, align 8
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* @STRATUM_UNSPEC, align 4
  %173 = call i8* @min(i32 %171, i32 %172)
  %174 = load %struct.peer*, %struct.peer** %4, align 8
  %175 = getelementptr inbounds %struct.peer, %struct.peer* %174, i32 0, i32 33
  store i8* %173, i8** %175, align 8
  %176 = load i64, i64* %17, align 8
  %177 = load %struct.peer*, %struct.peer** %4, align 8
  %178 = getelementptr inbounds %struct.peer, %struct.peer* %177, i32 0, i32 27
  store i64 %176, i64* %178, align 8
  %179 = load %struct.pkt*, %struct.pkt** %5, align 8
  %180 = getelementptr inbounds %struct.pkt, %struct.pkt* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.peer*, %struct.peer** %4, align 8
  %183 = getelementptr inbounds %struct.peer, %struct.peer* %182, i32 0, i32 28
  store i32 %181, i32* %183, align 8
  %184 = load double, double* %10, align 8
  %185 = load %struct.peer*, %struct.peer** %4, align 8
  %186 = getelementptr inbounds %struct.peer, %struct.peer* %185, i32 0, i32 3
  store double %184, double* %186, align 8
  %187 = load double, double* %11, align 8
  %188 = load %struct.peer*, %struct.peer** %4, align 8
  %189 = getelementptr inbounds %struct.peer, %struct.peer* %188, i32 0, i32 4
  store double %187, double* %189, align 8
  %190 = load %struct.pkt*, %struct.pkt** %5, align 8
  %191 = getelementptr inbounds %struct.pkt, %struct.pkt* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.peer*, %struct.peer** %4, align 8
  %194 = getelementptr inbounds %struct.peer, %struct.peer* %193, i32 0, i32 32
  store i32 %192, i32* %194, align 8
  %195 = load i8*, i8** %15, align 8
  %196 = load %struct.peer*, %struct.peer** %4, align 8
  %197 = getelementptr inbounds %struct.peer, %struct.peer* %196, i32 0, i32 31
  store i8* %195, i8** %197, align 8
  %198 = load %struct.peer*, %struct.peer** %4, align 8
  %199 = getelementptr inbounds %struct.peer, %struct.peer* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %239

202:                                              ; preds = %138
  %203 = load %struct.peer*, %struct.peer** %4, align 8
  %204 = getelementptr inbounds %struct.peer, %struct.peer* %203, i32 0, i32 5
  store i64 0, i64* %204, align 8
  %205 = load %struct.peer*, %struct.peer** %4, align 8
  %206 = getelementptr inbounds %struct.peer, %struct.peer* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %202
  %210 = load %struct.peer*, %struct.peer** %4, align 8
  %211 = getelementptr inbounds %struct.peer, %struct.peer* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.peer*, %struct.peer** %4, align 8
  %214 = getelementptr inbounds %struct.peer, %struct.peer* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %212, %215
  %217 = shl i32 1, %216
  %218 = load i32, i32* @NTP_SHIFT, align 4
  %219 = call i8* @min(i32 %217, i32 %218)
  %220 = getelementptr i8, i8* %219, i64 -1
  %221 = ptrtoint i8* %220 to i64
  %222 = load %struct.peer*, %struct.peer** %4, align 8
  %223 = getelementptr inbounds %struct.peer, %struct.peer* %222, i32 0, i32 7
  store i64 %221, i64* %223, align 8
  br label %229

224:                                              ; preds = %202
  %225 = load i64, i64* @NTP_IBURST, align 8
  %226 = sub nsw i64 %225, 1
  %227 = load %struct.peer*, %struct.peer** %4, align 8
  %228 = getelementptr inbounds %struct.peer, %struct.peer* %227, i32 0, i32 7
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %224, %209
  %230 = load %struct.peer*, %struct.peer** %4, align 8
  %231 = getelementptr inbounds %struct.peer, %struct.peer* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i8*, i8** @current_time, align 8
  %236 = load %struct.peer*, %struct.peer** %4, align 8
  %237 = getelementptr inbounds %struct.peer, %struct.peer* %236, i32 0, i32 29
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %234, %229
  br label %239

239:                                              ; preds = %238, %138
  %240 = load %struct.peer*, %struct.peer** %4, align 8
  %241 = load %struct.peer*, %struct.peer** %4, align 8
  %242 = getelementptr inbounds %struct.peer, %struct.peer* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @poll_update(%struct.peer* %240, i32 %243)
  %245 = load %struct.peer*, %struct.peer** %4, align 8
  %246 = getelementptr inbounds %struct.peer, %struct.peer* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %239
  %250 = load i32, i32* @PEVNT_REACH, align 4
  %251 = load %struct.peer*, %struct.peer** %4, align 8
  %252 = call i32 @report_event(i32 %250, %struct.peer* %251, i8* null)
  %253 = load i8*, i8** @current_time, align 8
  %254 = load %struct.peer*, %struct.peer** %4, align 8
  %255 = getelementptr inbounds %struct.peer, %struct.peer* %254, i32 0, i32 30
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %249, %239
  %257 = load %struct.peer*, %struct.peer** %4, align 8
  %258 = getelementptr inbounds %struct.peer, %struct.peer* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, 1
  store i32 %260, i32* %258, align 8
  %261 = load %struct.peer*, %struct.peer** %4, align 8
  %262 = getelementptr inbounds %struct.peer, %struct.peer* %261, i32 0, i32 9
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %309

265:                                              ; preds = %256
  %266 = load i8*, i8** %13, align 8
  store i8* %266, i8** %16, align 8
  %267 = load %struct.peer*, %struct.peer** %4, align 8
  %268 = getelementptr inbounds %struct.peer, %struct.peer* %267, i32 0, i32 2
  %269 = call i32 @L_SUB(i8** %16, i8** %268)
  %270 = load double, double* %7, align 8
  %271 = call i32 @LFPTOD(i8** %16, double %270)
  %272 = load i8*, i8** %12, align 8
  store i8* %272, i8** %16, align 8
  %273 = load %struct.peer*, %struct.peer** %4, align 8
  %274 = getelementptr inbounds %struct.peer, %struct.peer* %273, i32 0, i32 9
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %265
  %278 = load %struct.peer*, %struct.peer** %4, align 8
  %279 = getelementptr inbounds %struct.peer, %struct.peer* %278, i32 0, i32 10
  %280 = call i32 @L_SUB(i8** %16, i8** %279)
  br label %285

281:                                              ; preds = %265
  %282 = load %struct.peer*, %struct.peer** %4, align 8
  %283 = getelementptr inbounds %struct.peer, %struct.peer* %282, i32 0, i32 11
  %284 = call i32 @L_SUB(i8** %16, i8** %283)
  br label %285

285:                                              ; preds = %281, %277
  %286 = load double, double* %8, align 8
  %287 = call i32 @LFPTOD(i8** %16, double %286)
  %288 = load double, double* %8, align 8
  %289 = load double, double* %7, align 8
  %290 = fsub double %288, %289
  store double %290, double* %10, align 8
  %291 = load double, double* %8, align 8
  %292 = load double, double* %7, align 8
  %293 = fadd double %291, %292
  %294 = fdiv double %293, 2.000000e+00
  store double %294, double* %9, align 8
  %295 = load double, double* %10, align 8
  %296 = fcmp olt double %295, 0.000000e+00
  br i1 %296, label %300, label %297

297:                                              ; preds = %285
  %298 = load double, double* %10, align 8
  %299 = fcmp ogt double %298, 1.000000e+00
  br i1 %299, label %300, label %308

300:                                              ; preds = %297, %285
  %301 = trunc i64 %25 to i32
  %302 = load double, double* %8, align 8
  %303 = load double, double* %7, align 8
  %304 = call i32 @snprintf(i8* %27, i32 %301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), double %302, double %303)
  %305 = load i32, i32* @PEVNT_XERR, align 4
  %306 = load %struct.peer*, %struct.peer** %4, align 8
  %307 = call i32 @report_event(i32 %305, %struct.peer* %306, i8* %27)
  store i32 1, i32* %23, align 4
  br label %509

308:                                              ; preds = %297
  br label %458

309:                                              ; preds = %256
  %310 = load %struct.peer*, %struct.peer** %4, align 8
  %311 = getelementptr inbounds %struct.peer, %struct.peer* %310, i32 0, i32 27
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @MODE_BROADCAST, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %437

315:                                              ; preds = %309
  %316 = load %struct.peer*, %struct.peer** %4, align 8
  %317 = getelementptr inbounds %struct.peer, %struct.peer* %316, i32 0, i32 12
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @FLAG_XB, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %369

322:                                              ; preds = %315
  %323 = load i8*, i8** %14, align 8
  store i8* %323, i8** %16, align 8
  %324 = load %struct.peer*, %struct.peer** %4, align 8
  %325 = getelementptr inbounds %struct.peer, %struct.peer* %324, i32 0, i32 11
  %326 = call i32 @L_SUB(i8** %16, i8** %325)
  %327 = load double, double* %7, align 8
  %328 = call i32 @LFPTOD(i8** %16, double %327)
  %329 = load i8*, i8** %14, align 8
  store i8* %329, i8** %16, align 8
  %330 = load %struct.peer*, %struct.peer** %4, align 8
  %331 = getelementptr inbounds %struct.peer, %struct.peer* %330, i32 0, i32 10
  %332 = call i32 @L_SUB(i8** %16, i8** %331)
  %333 = load double, double* %8, align 8
  %334 = call i32 @LFPTOD(i8** %16, double %333)
  %335 = load i8*, i8** %13, align 8
  %336 = load %struct.peer*, %struct.peer** %4, align 8
  %337 = getelementptr inbounds %struct.peer, %struct.peer* %336, i32 0, i32 11
  store i8* %335, i8** %337, align 8
  %338 = load %struct.peer*, %struct.peer** %4, align 8
  %339 = getelementptr inbounds %struct.peer, %struct.peer* %338, i32 0, i32 2
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.peer*, %struct.peer** %4, align 8
  %342 = getelementptr inbounds %struct.peer, %struct.peer* %341, i32 0, i32 10
  store i8* %340, i8** %342, align 8
  %343 = load double, double* %7, align 8
  %344 = fcmp olt double %343, 0.000000e+00
  br i1 %344, label %348, label %345

345:                                              ; preds = %322
  %346 = load double, double* %7, align 8
  %347 = fcmp ogt double %346, 1.000000e+00
  br i1 %347, label %348, label %364

348:                                              ; preds = %345, %322
  %349 = load i32, i32* @FLAG_BC_VOL, align 4
  %350 = load %struct.peer*, %struct.peer** %4, align 8
  %351 = getelementptr inbounds %struct.peer, %struct.peer* %350, i32 0, i32 12
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %349, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  br label %413

356:                                              ; preds = %348
  %357 = trunc i64 %25 to i32
  %358 = load double, double* %8, align 8
  %359 = load double, double* %7, align 8
  %360 = call i32 @snprintf(i8* %27, i32 %357, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), double %358, double %359)
  %361 = load i32, i32* @PEVNT_XERR, align 4
  %362 = load %struct.peer*, %struct.peer** %4, align 8
  %363 = call i32 @report_event(i32 %361, %struct.peer* %362, i8* %27)
  store i32 1, i32* %23, align 4
  br label %509

364:                                              ; preds = %345
  %365 = load double, double* %8, align 8
  store double %365, double* %9, align 8
  %366 = load double, double* %7, align 8
  %367 = load %struct.peer*, %struct.peer** %4, align 8
  %368 = getelementptr inbounds %struct.peer, %struct.peer* %367, i32 0, i32 13
  store double %366, double* %368, align 8
  br label %377

369:                                              ; preds = %315
  %370 = load i8*, i8** %13, align 8
  store i8* %370, i8** %16, align 8
  %371 = load %struct.peer*, %struct.peer** %4, align 8
  %372 = getelementptr inbounds %struct.peer, %struct.peer* %371, i32 0, i32 2
  %373 = call i32 @L_SUB(i8** %16, i8** %372)
  %374 = load double, double* %7, align 8
  %375 = call i32 @LFPTOD(i8** %16, double %374)
  %376 = load double, double* %7, align 8
  store double %376, double* %9, align 8
  br label %377

377:                                              ; preds = %369, %364
  %378 = load i32, i32* @FLAG_BC_VOL, align 4
  %379 = load %struct.peer*, %struct.peer** %4, align 8
  %380 = getelementptr inbounds %struct.peer, %struct.peer* %379, i32 0, i32 12
  %381 = load i32, i32* %380, align 8
  %382 = and i32 %378, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %418

384:                                              ; preds = %377
  %385 = load i32, i32* @FLAG_BC_VOL, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.peer*, %struct.peer** %4, align 8
  %388 = getelementptr inbounds %struct.peer, %struct.peer* %387, i32 0, i32 12
  %389 = load i32, i32* %388, align 8
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 8
  %391 = load %struct.peer*, %struct.peer** %4, align 8
  %392 = getelementptr inbounds %struct.peer, %struct.peer* %391, i32 0, i32 15
  %393 = load double, double* %392, align 8
  %394 = load double, double* %9, align 8
  %395 = fsub double %393, %394
  %396 = call i32 @fabs(double %395)
  %397 = mul nsw i32 %396, 2
  %398 = load %struct.peer*, %struct.peer** %4, align 8
  %399 = getelementptr inbounds %struct.peer, %struct.peer* %398, i32 0, i32 14
  store i32 %397, i32* %399, align 8
  %400 = load %struct.peer*, %struct.peer** %4, align 8
  %401 = getelementptr inbounds %struct.peer, %struct.peer* %400, i32 0, i32 14
  %402 = load i32, i32* %401, align 8
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to i8*
  %405 = call i32 @DPRINTF(i32 2, i8* %404)
  %406 = load %struct.peer*, %struct.peer** %4, align 8
  %407 = getelementptr inbounds %struct.peer, %struct.peer* %406, i32 0, i32 14
  %408 = load i32, i32* %407, align 8
  %409 = load double, double* @sys_bdelay, align 8
  %410 = call i32 @fabs(double %409)
  %411 = icmp sgt i32 %408, %410
  br i1 %411, label %412, label %417

412:                                              ; preds = %384
  br label %413

413:                                              ; preds = %412, %355
  %414 = call i32 @DPRINTF(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %415 = load %struct.peer*, %struct.peer** %4, align 8
  %416 = call i32 @unpeer(%struct.peer* %415)
  store i32 1, i32* %23, align 4
  br label %509

417:                                              ; preds = %384
  br label %418

418:                                              ; preds = %417, %377
  %419 = load i8*, i8** @current_time, align 8
  %420 = load %struct.peer*, %struct.peer** %4, align 8
  %421 = getelementptr inbounds %struct.peer, %struct.peer* %420, i32 0, i32 16
  %422 = load i32, i32* %421, align 8
  %423 = shl i32 1, %422
  %424 = zext i32 %423 to i64
  %425 = getelementptr i8, i8* %419, i64 %424
  %426 = getelementptr i8, i8* %425, i64 -2
  %427 = load %struct.peer*, %struct.peer** %4, align 8
  %428 = getelementptr inbounds %struct.peer, %struct.peer* %427, i32 0, i32 29
  store i8* %426, i8** %428, align 8
  %429 = load %struct.peer*, %struct.peer** %4, align 8
  %430 = getelementptr inbounds %struct.peer, %struct.peer* %429, i32 0, i32 14
  %431 = load i32, i32* %430, align 8
  %432 = sitofp i32 %431 to double
  store double %432, double* %10, align 8
  %433 = load double, double* %10, align 8
  %434 = fdiv double %433, 2.000000e+00
  %435 = load double, double* %9, align 8
  %436 = fadd double %435, %434
  store double %436, double* %9, align 8
  br label %457

437:                                              ; preds = %309
  %438 = load i8*, i8** %13, align 8
  store i8* %438, i8** %16, align 8
  %439 = load %struct.peer*, %struct.peer** %4, align 8
  %440 = getelementptr inbounds %struct.peer, %struct.peer* %439, i32 0, i32 2
  %441 = call i32 @L_SUB(i8** %16, i8** %440)
  %442 = load double, double* %7, align 8
  %443 = call i32 @LFPTOD(i8** %16, double %442)
  %444 = load i8*, i8** %12, align 8
  store i8* %444, i8** %16, align 8
  %445 = call i32 @L_SUB(i8** %16, i8** %14)
  %446 = load double, double* %8, align 8
  %447 = call i32 @LFPTOD(i8** %16, double %446)
  %448 = load double, double* %8, align 8
  %449 = load double, double* %7, align 8
  %450 = fsub double %448, %449
  %451 = call i32 @fabs(double %450)
  %452 = sitofp i32 %451 to double
  store double %452, double* %10, align 8
  %453 = load double, double* %8, align 8
  %454 = load double, double* %7, align 8
  %455 = fadd double %453, %454
  %456 = fdiv double %455, 2.000000e+00
  store double %456, double* %9, align 8
  br label %457

457:                                              ; preds = %437, %418
  br label %458

458:                                              ; preds = %457, %308
  %459 = load double, double* %10, align 8
  %460 = load i32, i32* @sys_precision, align 4
  %461 = call double @LOGTOD(i32 %460)
  %462 = call double @max(double %459, double %461)
  store double %462, double* %10, align 8
  %463 = load i32, i32* @sys_precision, align 4
  %464 = call double @LOGTOD(i32 %463)
  %465 = load %struct.peer*, %struct.peer** %4, align 8
  %466 = getelementptr inbounds %struct.peer, %struct.peer* %465, i32 0, i32 28
  %467 = load i32, i32* %466, align 8
  %468 = call double @LOGTOD(i32 %467)
  %469 = fadd double %464, %468
  %470 = load double, double* @clock_phi, align 8
  %471 = load double, double* %10, align 8
  %472 = fmul double %470, %471
  %473 = fadd double %469, %472
  store double %473, double* %11, align 8
  %474 = load %struct.peer*, %struct.peer** %4, align 8
  %475 = load double, double* %9, align 8
  %476 = load %struct.peer*, %struct.peer** %4, align 8
  %477 = getelementptr inbounds %struct.peer, %struct.peer* %476, i32 0, i32 26
  %478 = load i64, i64* %477, align 8
  %479 = sitofp i64 %478 to double
  %480 = fadd double %475, %479
  %481 = fptosi double %480 to i64
  %482 = load double, double* %10, align 8
  %483 = load double, double* %11, align 8
  %484 = call i32 @clock_filter(%struct.peer* %474, i64 %481, double %482, double %483)
  %485 = load i32, i32* @FLAG_BC_VOL, align 4
  %486 = load %struct.peer*, %struct.peer** %4, align 8
  %487 = getelementptr inbounds %struct.peer, %struct.peer* %486, i32 0, i32 12
  %488 = load i32, i32* %487, align 8
  %489 = and i32 %485, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %508

491:                                              ; preds = %458
  %492 = load i64, i64* @MODE_CLIENT, align 8
  %493 = load %struct.peer*, %struct.peer** %4, align 8
  %494 = getelementptr inbounds %struct.peer, %struct.peer* %493, i32 0, i32 24
  %495 = load i64, i64* %494, align 8
  %496 = icmp eq i64 %492, %495
  br i1 %496, label %497, label %508

497:                                              ; preds = %491
  %498 = load i32, i32* @TEST11, align 4
  %499 = load %struct.peer*, %struct.peer** %4, align 8
  %500 = call i32 @peer_unfit(%struct.peer* %499)
  %501 = and i32 %498, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %497
  %504 = load i8*, i8** @MODE_BCLIENT, align 8
  %505 = ptrtoint i8* %504 to i64
  %506 = load %struct.peer*, %struct.peer** %4, align 8
  %507 = getelementptr inbounds %struct.peer, %struct.peer* %506, i32 0, i32 24
  store i64 %505, i64* %507, align 8
  br label %508

508:                                              ; preds = %503, %497, %491, %458
  store i32 0, i32* %23, align 4
  br label %509

509:                                              ; preds = %508, %413, %356, %300, %103
  %510 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %510)
  %511 = load i32, i32* %23, align 4
  switch i32 %511, label %513 [
    i32 0, label %512
    i32 1, label %512
  ]

512:                                              ; preds = %509, %509
  ret void

513:                                              ; preds = %509
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @FPTOD(i32) #2

declare dso_local i32 @NTOHS_FP(i32) #2

declare dso_local i32 @NTOHL_FP(i32*, i8**) #2

declare dso_local i64 @PKT_MODE(i32) #2

declare dso_local i64 @PKT_LEAP(i32) #2

declare dso_local i64 @PKT_VERSION(i32) #2

declare dso_local i64 @PKT_TO_STRATUM(i32) #2

declare dso_local i32 @DPRINTF(i32, i8*) #2

declare dso_local i32 @poll_update(%struct.peer*, i32) #2

declare dso_local i32 @record_raw_stats(i32*, i32*, i8**, i8**, i8**, i8**, i64, i64, i64, i64, i32, i32, double, double, i32, i8*, i64*) #2

declare dso_local i8* @min(i32, i32) #2

declare dso_local i32 @report_event(i32, %struct.peer*, i8*) #2

declare dso_local i32 @L_SUB(i8**, i8**) #2

declare dso_local i32 @LFPTOD(i8**, double) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, double, double) #2

declare dso_local i32 @fabs(double) #2

declare dso_local i32 @unpeer(%struct.peer*) #2

declare dso_local double @max(double, double) #2

declare dso_local double @LOGTOD(i32) #2

declare dso_local i32 @clock_filter(%struct.peer*, i64, double, double) #2

declare dso_local i32 @peer_unfit(%struct.peer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
