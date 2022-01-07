; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ntp.c_ntp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ntp.c_ntp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.ntpdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VERSIONMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"NTPv%d\00", align 1
@MODEMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c", %s, length %u\00", align 1
@ntp_mode_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Unknown mode\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c", length %u\0A\09%s\00", align 1
@LEAPMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c", Leap indicator: %s (%u)\00", align 1
@ntp_leapind_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c", Stratum %u (%s)\00", align 1
@ntp_stratum_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"secondary reference\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c", poll %u (%us)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c", precision %d\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"\0A\09Root Delay: \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c", Root dispersion: \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c", Reference-ID: \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"(unspec)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%s INFO_QUERY\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"%s INFO_REPLY\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"\0A\09  Reference Timestamp:  \00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\0A\09  Originator Timestamp: \00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\0A\09  Receive Timestamp:    \00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\0A\09  Transmit Timestamp:   \00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\0A\09    Originator - Receive Timestamp:  \00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"\0A\09    Originator - Transmit Timestamp: \00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"\0A\09Key id: %u\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\0A\09Authentication: %08x%08x%08x%08x\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" [|ntp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntp_print(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntpdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.ntpdata*
  store %struct.ntpdata* %12, %struct.ntpdata** %7, align 8
  %13 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %14 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK(i32 %15)
  %17 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %18 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VERSIONMASK, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 3
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_9__*
  %27 = call i32 @ND_PRINT(%struct.TYPE_9__* %26)
  %28 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %29 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MODEMASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load i32, i32* @ntp_mode_values, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @tok2str(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_9__*
  %45 = call i32 @ND_PRINT(%struct.TYPE_9__* %44)
  br label %315

46:                                               ; preds = %3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ntp_mode_values, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tok2str(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_9__*
  %54 = call i32 @ND_PRINT(%struct.TYPE_9__* %53)
  %55 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %56 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LEAPMASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i32, i32* @ntp_leapind_values, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @tok2str(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.TYPE_9__*
  %67 = call i32 @ND_PRINT(%struct.TYPE_9__* %66)
  %68 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %69 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ND_TCHECK(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %74 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ntp_stratum_values, align 4
  %77 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %78 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %86

81:                                               ; preds = %46
  %82 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %83 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %84, 15
  br label %86

86:                                               ; preds = %81, %46
  %87 = phi i1 [ false, %46 ], [ %85, %81 ]
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %90 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %91 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @tok2str(i32 %76, i8* %89, i32 %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_9__*
  %96 = call i32 @ND_PRINT(%struct.TYPE_9__* %95)
  %97 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %98 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK(i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %103 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %106 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_9__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_9__* %110)
  %112 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %113 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ND_TCHECK2(i32 %114, i32 0)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %118 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_9__*
  %122 = call i32 @ND_PRINT(%struct.TYPE_9__* %121)
  %123 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %124 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ND_TCHECK(i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([15 x i8]* @.str.11 to %struct.TYPE_9__*))
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %131 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %130, i32 0, i32 3
  %132 = call i32 @p_sfix(%struct.TYPE_9__* %129, i32* %131)
  %133 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %134 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ND_TCHECK(i32 %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([20 x i8]* @.str.12 to %struct.TYPE_9__*))
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %141 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %140, i32 0, i32 4
  %142 = call i32 @p_sfix(%struct.TYPE_9__* %139, i32* %141)
  %143 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %144 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ND_TCHECK(i32 %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([17 x i8]* @.str.13 to %struct.TYPE_9__*))
  %149 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %150 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  switch i32 %151, label %184 [
    i32 128, label %152
    i32 129, label %155
    i32 131, label %166
    i32 130, label %175
  ]

152:                                              ; preds = %86
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([9 x i8]* @.str.14 to %struct.TYPE_9__*))
  br label %193

155:                                              ; preds = %86
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %158 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %157, i32 0, i32 5
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @fn_printn(%struct.TYPE_9__* %156, i32* %158, i32 4, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %312

165:                                              ; preds = %155
  br label %193

166:                                              ; preds = %86
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %170 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %169, i32 0, i32 5
  %171 = call i32 @ipaddr_string(%struct.TYPE_9__* %168, i32* %170)
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to %struct.TYPE_9__*
  %174 = call i32 @ND_PRINT(%struct.TYPE_9__* %173)
  br label %315

175:                                              ; preds = %86
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %178 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %179 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %178, i32 0, i32 5
  %180 = call i32 @ipaddr_string(%struct.TYPE_9__* %177, i32* %179)
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to %struct.TYPE_9__*
  %183 = call i32 @ND_PRINT(%struct.TYPE_9__* %182)
  br label %315

184:                                              ; preds = %86
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %188 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %187, i32 0, i32 5
  %189 = call i32 @ipaddr_string(%struct.TYPE_9__* %186, i32* %188)
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to %struct.TYPE_9__*
  %192 = call i32 @ND_PRINT(%struct.TYPE_9__* %191)
  br label %193

193:                                              ; preds = %184, %165, %152
  %194 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %195 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ND_TCHECK(i32 %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %199 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([27 x i8]* @.str.18 to %struct.TYPE_9__*))
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %201 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %202 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %201, i32 0, i32 6
  %203 = call i32 @p_ntp_time(%struct.TYPE_9__* %200, i32* %202)
  %204 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %205 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ND_TCHECK(i32 %206)
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([27 x i8]* @.str.19 to %struct.TYPE_9__*))
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %212 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %211, i32 0, i32 7
  %213 = call i32 @p_ntp_time(%struct.TYPE_9__* %210, i32* %212)
  %214 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %215 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ND_TCHECK(i32 %216)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %219 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([27 x i8]* @.str.20 to %struct.TYPE_9__*))
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %222 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %221, i32 0, i32 8
  %223 = call i32 @p_ntp_time(%struct.TYPE_9__* %220, i32* %222)
  %224 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %225 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @ND_TCHECK(i32 %226)
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %229 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([27 x i8]* @.str.21 to %struct.TYPE_9__*))
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %231 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %232 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %231, i32 0, i32 9
  %233 = call i32 @p_ntp_time(%struct.TYPE_9__* %230, i32* %232)
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([40 x i8]* @.str.22 to %struct.TYPE_9__*))
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %238 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %237, i32 0, i32 7
  %239 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %240 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %239, i32 0, i32 8
  %241 = call i32 @p_ntp_delta(%struct.TYPE_9__* %236, i32* %238, i32* %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %243 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([40 x i8]* @.str.23 to %struct.TYPE_9__*))
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %245 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %246 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %245, i32 0, i32 7
  %247 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %248 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %247, i32 0, i32 9
  %249 = call i32 @p_ntp_delta(%struct.TYPE_9__* %244, i32* %246, i32* %248)
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = sub i64 52, %251
  %253 = icmp eq i64 %252, 16
  br i1 %253, label %254, label %266

254:                                              ; preds = %193
  %255 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %256 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @ND_TCHECK(i32 %257)
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %260 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %261 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to %struct.TYPE_9__*
  %265 = call i32 @ND_PRINT(%struct.TYPE_9__* %264)
  br label %311

266:                                              ; preds = %193
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = sub i64 52, %268
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %310

271:                                              ; preds = %266
  %272 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %273 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ND_TCHECK(i32 %274)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %277 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %278 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %277, i32 0, i32 10
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to %struct.TYPE_9__*
  %282 = call i32 @ND_PRINT(%struct.TYPE_9__* %281)
  %283 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %284 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %283, i32 0, i32 11
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @ND_TCHECK2(i32 %285, i32 4)
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %288 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %289 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %288, i32 0, i32 11
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @EXTRACT_32BITS(i32 %290)
  %292 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %293 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, 4
  %296 = call i32 @EXTRACT_32BITS(i32 %295)
  %297 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %298 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 8
  %301 = call i32 @EXTRACT_32BITS(i32 %300)
  %302 = load %struct.ntpdata*, %struct.ntpdata** %7, align 8
  %303 = getelementptr inbounds %struct.ntpdata, %struct.ntpdata* %302, i32 0, i32 11
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 12
  %306 = call i32 @EXTRACT_32BITS(i32 %305)
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to %struct.TYPE_9__*
  %309 = call i32 @ND_PRINT(%struct.TYPE_9__* %308)
  br label %310

310:                                              ; preds = %271, %266
  br label %311

311:                                              ; preds = %310, %254
  br label %315

312:                                              ; preds = %164
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %314 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([8 x i8]* @.str.26 to %struct.TYPE_9__*))
  br label %315

315:                                              ; preds = %312, %311, %175, %166, %37
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @p_sfix(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @fn_printn(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @p_ntp_time(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @p_ntp_delta(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
