; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_timer.c_check_leapsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_timer.c_check_leapsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, double, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { double, double, i64, i64, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@check_leapsec.leapmsg_p_step = internal constant [40 x i8] c"Positive leap second, stepped backward.\00", align 16
@check_leapsec.leapmsg_p_slew = internal constant [91 x i8] c"Positive leap second, no step correction. System clock will be inaccurate for a long time.\00", align 16
@check_leapsec.leapmsg_n_step = internal constant [39 x i8] c"Negative leap second, stepped forward.\00", align 16
@check_leapsec.leapmsg_n_slew = internal constant [91 x i8] c"Negative leap second, no step correction. System clock will be inaccurate for a long time.\00", align 16
@LSPROX_NOWARN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"*** leapsec_query: fired %i, now %u (0x%08X), tai_diff %i, ddist %u\0A\00", align 1
@clock_max_back = common dso_local global double 0.000000e+00, align 8
@clock_max_fwd = common dso_local global double 0.000000e+00, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EVNT_LEAP = common dso_local global i32 0, align 4
@leapsec = common dso_local global i64 0, align 8
@sys_tai = common dso_local global i64 0, align 8
@LSPROX_ALERT = common dso_local global i64 0, align 8
@LSPROX_SCHEDULE = common dso_local global i64 0, align 8
@PEVNT_ARMED = common dso_local global i32 0, align 4
@sys_peer = common dso_local global i32* null, align 8
@EVNT_ARMED = common dso_local global i32 0, align 4
@EVNT_DISARMED = common dso_local global i32 0, align 4
@leapdif = common dso_local global double 0.000000e+00, align 8
@FALSE = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@TRUE = common dso_local global i32 0, align 4
@kern_enable = common dso_local global i64 0, align 8
@leap_smear = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@leap_smear_intv = common dso_local global i64 0, align 8
@pll_control = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32)* @check_leapsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_leapsec(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @leapsec_electric(i32 0)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* @LSPROX_NOWARN, align 8
  store i64 %16, i64* %8, align 8
  %17 = call i32 (...) @leapsec_reset_frame()
  %18 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 48)
  br label %89

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @leapsec_query(%struct.TYPE_8__* %7, i64 %20, i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @DPRINTF(i32 3, i8* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %19
  store i8* null, i8** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %37 = load double, double* %36, align 8
  store double %37, double* %11, align 8
  %38 = load double, double* %11, align 8
  %39 = fcmp olt double %38, 0.000000e+00
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load double, double* @clock_max_back, align 8
  %42 = fcmp ogt double %41, 0.000000e+00
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load double, double* @clock_max_back, align 8
  %45 = load double, double* %11, align 8
  %46 = fneg double %45
  %47 = fcmp olt double %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load double, double* %11, align 8
  %50 = call i32 @step_systime(double %49)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @check_leapsec.leapmsg_p_step, i64 0, i64 0), i8** %10, align 8
  br label %52

51:                                               ; preds = %43, %40
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @check_leapsec.leapmsg_p_slew, i64 0, i64 0), i8** %10, align 8
  br label %52

52:                                               ; preds = %51, %48
  br label %69

53:                                               ; preds = %35
  %54 = load double, double* %11, align 8
  %55 = fcmp ogt double %54, 0.000000e+00
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load double, double* @clock_max_fwd, align 8
  %58 = fcmp ogt double %57, 0.000000e+00
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load double, double* @clock_max_fwd, align 8
  %61 = load double, double* %11, align 8
  %62 = fcmp olt double %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load double, double* %11, align 8
  %65 = call i32 @step_systime(double %64)
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @check_leapsec.leapmsg_n_step, i64 0, i64 0), i8** %10, align 8
  br label %67

66:                                               ; preds = %59, %56
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @check_leapsec.leapmsg_n_slew, i64 0, i64 0), i8** %10, align 8
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @LOG_NOTICE, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 (i32, i8*, ...) @msyslog(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* @EVNT_LEAP, align 4
  %78 = call i32 @report_event(i32 %77, i32* null, i32* null)
  %79 = load i64, i64* @LSPROX_NOWARN, align 8
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* @LSPROX_NOWARN, align 8
  store i64 %80, i64* @leapsec, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* @sys_tai, align 8
  br label %88

83:                                               ; preds = %19
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* @sys_tai, align 8
  br label %88

88:                                               ; preds = %83, %76
  br label %89

89:                                               ; preds = %88, %15
  %90 = load i64, i64* @leapsec, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @LSPROX_ALERT, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %92, %89
  %97 = load i64, i64* @leapsec, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i64, i64* @leapsec, align 8
  %102 = load i64, i64* @LSPROX_SCHEDULE, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @LSPROX_SCHEDULE, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @PEVNT_ARMED, align 4
  %114 = load i32*, i32** @sys_peer, align 8
  %115 = call i32 @report_event(i32 %113, i32* %114, i32* null)
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @EVNT_ARMED, align 4
  %118 = call i32 @report_event(i32 %117, i32* null, i32* null)
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %104, %100
  %121 = load i64, i64* %8, align 8
  store i64 %121, i64* @leapsec, align 8
  br label %122

122:                                              ; preds = %120, %96, %92
  %123 = load i64, i64* @leapsec, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i64, i64* @leapsec, align 8
  %128 = load i64, i64* @LSPROX_SCHEDULE, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* @LSPROX_SCHEDULE, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @EVNT_DISARMED, align 4
  %136 = call i32 @report_event(i32 %135, i32* null, i32* null)
  br label %137

137:                                              ; preds = %134, %130, %126
  %138 = load i64, i64* %8, align 8
  store i64 %138, i64* @leapsec, align 8
  br label %139

139:                                              ; preds = %137, %122
  %140 = load i64, i64* @leapsec, align 8
  %141 = load i64, i64* @LSPROX_SCHEDULE, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %145 = load double, double* %144, align 8
  store double %145, double* @leapdif, align 8
  br label %147

146:                                              ; preds = %139
  store double 0.000000e+00, double* @leapdif, align 8
  br label %147

147:                                              ; preds = %146, %143
  %148 = call i32 @check_leap_sec_in_progress(%struct.TYPE_8__* %7)
  ret void
}

declare dso_local i32 @leapsec_electric(i32) #1

declare dso_local i32 @leapsec_reset_frame(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @leapsec_query(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @step_systime(double) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @report_event(i32, i32*, i32*) #1

declare dso_local i32 @check_leap_sec_in_progress(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
