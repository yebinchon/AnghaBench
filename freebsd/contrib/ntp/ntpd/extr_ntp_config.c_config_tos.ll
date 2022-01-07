; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_tos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_tos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { double }

@sys_maxclock = common dso_local global i32 0, align 4
@sys_minclock = common dso_local global i32 0, align 4
@sys_minsane = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Using maximum bcpollbstep ceiling %d, %d requested\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Using minimum bcpollbstep floor %d, %d requested\00", align 1
@STRATUM_UNSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Using maximum tos ceiling %d, %d requested\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Using minimum tos floor %d, %d requested\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [103 x i8] c"tos error: must have minsane (%d) < minclock (%d) <= maxclock (%d) - daemon will not operate properly!\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"config-tos: attr-token=%d\00", align 1
@PROTO_BCPOLLBSTEP = common dso_local global i32 0, align 4
@PROTO_CEILING = common dso_local global i32 0, align 4
@PROTO_FLOOR = common dso_local global i32 0, align 4
@PROTO_COHORT = common dso_local global i32 0, align 4
@PROTO_ORPHAN = common dso_local global i32 0, align 4
@PROTO_ORPHWAIT = common dso_local global i32 0, align 4
@PROTO_MINDISP = common dso_local global i32 0, align 4
@PROTO_MAXDIST = common dso_local global i32 0, align 4
@PROTO_MINCLOCK = common dso_local global i32 0, align 4
@PROTO_MAXCLOCK = common dso_local global i32 0, align 4
@PROTO_MINSANE = common dso_local global i32 0, align 4
@PROTO_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @config_tos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_tos(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* @sys_maxclock, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @sys_minclock, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @sys_minsane, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_8__* @HEAD_PFIFO(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %3, align 8
  br label %16

16:                                               ; preds = %152, %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %156

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %23 [
    i32 139, label %24
    i32 137, label %52
    i32 132, label %88
    i32 134, label %109
    i32 130, label %130
  ]

23:                                               ; preds = %19
  br label %151

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  store double %28, double* %5, align 8
  %29 = load double, double* %5, align 8
  %30 = fcmp ogt double %29, 4.000000e+00
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @LOG_WARNING, align 4
  %33 = load double, double* %5, align 8
  %34 = fptosi double %33 to i32
  %35 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 4, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store double 4.000000e+00, double* %38, align 8
  br label %51

39:                                               ; preds = %24
  %40 = load double, double* %5, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* @LOG_WARNING, align 4
  %44 = load double, double* %5, align 8
  %45 = fptosi double %44 to i32
  %46 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store double 0.000000e+00, double* %49, align 8
  br label %50

50:                                               ; preds = %42, %39
  br label %51

51:                                               ; preds = %50, %31
  br label %151

52:                                               ; preds = %19
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  store double %56, double* %5, align 8
  %57 = load double, double* %5, align 8
  %58 = load i32, i32* @STRATUM_UNSPEC, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sitofp i32 %59 to double
  %61 = fcmp ogt double %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %52
  %63 = load i32, i32* @LOG_WARNING, align 4
  %64 = load i32, i32* @STRATUM_UNSPEC, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load double, double* %5, align 8
  %67 = fptosi double %66 to i32
  %68 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load i32, i32* @STRATUM_UNSPEC, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sitofp i32 %70 to double
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store double %71, double* %74, align 8
  br label %87

75:                                               ; preds = %52
  %76 = load double, double* %5, align 8
  %77 = fcmp olt double %76, 1.000000e+00
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* @LOG_WARNING, align 4
  %80 = load double, double* %5, align 8
  %81 = fptosi double %80 to i32
  %82 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store double 1.000000e+00, double* %85, align 8
  br label %86

86:                                               ; preds = %78, %75
  br label %87

87:                                               ; preds = %86, %62
  br label %151

88:                                               ; preds = %19
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load double, double* %91, align 8
  store double %92, double* %5, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = fptosi double %96 to i32
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store double 1.000000e+00, double* %102, align 8
  br label %103

103:                                              ; preds = %99, %88
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = fptosi double %107 to i32
  store i32 %108, i32* %7, align 4
  br label %151

109:                                              ; preds = %19
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  store double %113, double* %5, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = fptosi double %117 to i32
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store double 1.000000e+00, double* %123, align 8
  br label %124

124:                                              ; preds = %120, %109
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load double, double* %127, align 8
  %129 = fptosi double %128 to i32
  store i32 %129, i32* %6, align 4
  br label %151

130:                                              ; preds = %19
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load double, double* %133, align 8
  store double %134, double* %5, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = fptosi double %138 to i32
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %130
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store double 0.000000e+00, double* %144, align 8
  br label %145

145:                                              ; preds = %141, %130
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load double, double* %148, align 8
  %150 = fptosi double %149 to i32
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %145, %124, %103, %87, %51, %23
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  store %struct.TYPE_8__* %155, %struct.TYPE_8__** %3, align 8
  br label %16

156:                                              ; preds = %16
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %160, %156
  %165 = load i32, i32* @LOG_ERR, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (i32, i8*, i32, i32, ...) @msyslog(i32 %165, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %160
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.TYPE_8__* @HEAD_PFIFO(i32 %173)
  store %struct.TYPE_8__* %174, %struct.TYPE_8__** %3, align 8
  br label %175

175:                                              ; preds = %219, %170
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %177 = icmp ne %struct.TYPE_8__* %176, null
  br i1 %177, label %178, label %223

178:                                              ; preds = %175
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %182 [
    i32 139, label %187
    i32 137, label %189
    i32 135, label %191
    i32 136, label %193
    i32 129, label %195
    i32 128, label %197
    i32 131, label %199
    i32 133, label %201
    i32 132, label %203
    i32 134, label %205
    i32 130, label %207
    i32 138, label %209
    i32 140, label %211
  ]

182:                                              ; preds = %178
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @fatal_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %178, %182
  %188 = load i32, i32* @PROTO_BCPOLLBSTEP, align 4
  store i32 %188, i32* %4, align 4
  br label %212

189:                                              ; preds = %178
  %190 = load i32, i32* @PROTO_CEILING, align 4
  store i32 %190, i32* %4, align 4
  br label %212

191:                                              ; preds = %178
  %192 = load i32, i32* @PROTO_FLOOR, align 4
  store i32 %192, i32* %4, align 4
  br label %212

193:                                              ; preds = %178
  %194 = load i32, i32* @PROTO_COHORT, align 4
  store i32 %194, i32* %4, align 4
  br label %212

195:                                              ; preds = %178
  %196 = load i32, i32* @PROTO_ORPHAN, align 4
  store i32 %196, i32* %4, align 4
  br label %212

197:                                              ; preds = %178
  %198 = load i32, i32* @PROTO_ORPHWAIT, align 4
  store i32 %198, i32* %4, align 4
  br label %212

199:                                              ; preds = %178
  %200 = load i32, i32* @PROTO_MINDISP, align 4
  store i32 %200, i32* %4, align 4
  br label %212

201:                                              ; preds = %178
  %202 = load i32, i32* @PROTO_MAXDIST, align 4
  store i32 %202, i32* %4, align 4
  br label %212

203:                                              ; preds = %178
  %204 = load i32, i32* @PROTO_MINCLOCK, align 4
  store i32 %204, i32* %4, align 4
  br label %212

205:                                              ; preds = %178
  %206 = load i32, i32* @PROTO_MAXCLOCK, align 4
  store i32 %206, i32* %4, align 4
  br label %212

207:                                              ; preds = %178
  %208 = load i32, i32* @PROTO_MINSANE, align 4
  store i32 %208, i32* %4, align 4
  br label %212

209:                                              ; preds = %178
  %210 = load i32, i32* @PROTO_BEACON, align 4
  store i32 %210, i32* %4, align 4
  br label %212

211:                                              ; preds = %178
  br label %219

212:                                              ; preds = %209, %207, %205, %203, %201, %199, %197, %195, %193, %191, %189, %187
  %213 = load i32, i32* %4, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load double, double* %216, align 8
  %218 = call i32 @proto_config(i32 %213, i32 0, double %217, i32* null)
  br label %219

219:                                              ; preds = %212, %211
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  store %struct.TYPE_8__* %222, %struct.TYPE_8__** %3, align 8
  br label %175

223:                                              ; preds = %175
  ret void
}

declare dso_local %struct.TYPE_8__* @HEAD_PFIFO(i32) #1

declare dso_local i32 @msyslog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

declare dso_local i32 @proto_config(i32, i32, double, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
