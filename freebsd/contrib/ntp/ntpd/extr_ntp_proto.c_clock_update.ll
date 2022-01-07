; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_clock_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_clock_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i64, i64, i64, double, double, double, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@sys_peer = common dso_local global %struct.peer* null, align 8
@sys_epoch = common dso_local global i32 0, align 4
@sys_poll = common dso_local global i64 0, align 8
@STRATUM_UNSPEC = common dso_local global i64 0, align 8
@sys_stratum = common dso_local global i64 0, align 8
@STRATUM_REFCLOCK = common dso_local global i64 0, align 8
@sys_refid = common dso_local global i32 0, align 4
@sys_jitter = common dso_local global double 0.000000e+00, align 8
@clock_phi = common dso_local global double 0.000000e+00, align 8
@current_time = common dso_local global double 0.000000e+00, align 8
@sys_offset = common dso_local global i32 0, align 4
@sys_mindisp = common dso_local global double 0.000000e+00, align 8
@sys_rootdisp = common dso_local global double 0.000000e+00, align 8
@sys_rootdelay = common dso_local global i64 0, align 8
@sys_reftime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"clock_update: at %lu sample %lu associd %d\0A\00", align 1
@LEAP_NOTINSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@sys_precision = common dso_local global i32 0, align 4
@sys_leap = common dso_local global i32 0, align 4
@LEAP_NOWARNING = common dso_local global i32 0, align 4
@leapsec = common dso_local global i32 0, align 4
@LSPROX_NOWARN = common dso_local global i32 0, align 4
@leap_vote_ins = common dso_local global i32 0, align 4
@leap_vote_del = common dso_local global i32 0, align 4
@sys_survivors = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@crypto_flags = common dso_local global i32 0, align 4
@waitsync_fd_to_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.peer*)* @clock_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_update(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store %struct.peer* %0, %struct.peer** %2, align 8
  %5 = load %struct.peer*, %struct.peer** %2, align 8
  store %struct.peer* %5, %struct.peer** @sys_peer, align 8
  %6 = load %struct.peer*, %struct.peer** %2, align 8
  %7 = getelementptr inbounds %struct.peer, %struct.peer* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @sys_epoch, align 4
  %9 = load i64, i64* @sys_poll, align 8
  %10 = load %struct.peer*, %struct.peer** %2, align 8
  %11 = getelementptr inbounds %struct.peer, %struct.peer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.peer*, %struct.peer** %2, align 8
  %16 = getelementptr inbounds %struct.peer, %struct.peer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @sys_poll, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* @sys_poll, align 8
  %20 = load %struct.peer*, %struct.peer** %2, align 8
  %21 = getelementptr inbounds %struct.peer, %struct.peer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.peer*, %struct.peer** %2, align 8
  %26 = getelementptr inbounds %struct.peer, %struct.peer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @sys_poll, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.peer*, %struct.peer** %2, align 8
  %30 = load i64, i64* @sys_poll, align 8
  %31 = call i32 @poll_update(%struct.peer* %29, i64 %30)
  %32 = load %struct.peer*, %struct.peer** %2, align 8
  %33 = getelementptr inbounds %struct.peer, %struct.peer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* @STRATUM_UNSPEC, align 8
  %37 = call i64 @min(i64 %35, i64 %36)
  store i64 %37, i64* @sys_stratum, align 8
  %38 = load %struct.peer*, %struct.peer** %2, align 8
  %39 = getelementptr inbounds %struct.peer, %struct.peer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STRATUM_REFCLOCK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %28
  %44 = load %struct.peer*, %struct.peer** %2, align 8
  %45 = getelementptr inbounds %struct.peer, %struct.peer* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @STRATUM_UNSPEC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %28
  %50 = load %struct.peer*, %struct.peer** %2, align 8
  %51 = getelementptr inbounds %struct.peer, %struct.peer* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* @sys_refid, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.peer*, %struct.peer** %2, align 8
  %55 = getelementptr inbounds %struct.peer, %struct.peer* %54, i32 0, i32 11
  %56 = call i32 @addr2refid(i32* %55)
  store i32 %56, i32* @sys_refid, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.peer*, %struct.peer** %2, align 8
  %59 = getelementptr inbounds %struct.peer, %struct.peer* %58, i32 0, i32 3
  %60 = load double, double* %59, align 8
  %61 = load %struct.peer*, %struct.peer** %2, align 8
  %62 = getelementptr inbounds %struct.peer, %struct.peer* %61, i32 0, i32 4
  %63 = load double, double* %62, align 8
  %64 = fadd double %60, %63
  %65 = load double, double* @sys_jitter, align 8
  %66 = fadd double %64, %65
  %67 = load double, double* @clock_phi, align 8
  %68 = load double, double* @current_time, align 8
  %69 = load %struct.peer*, %struct.peer** %2, align 8
  %70 = getelementptr inbounds %struct.peer, %struct.peer* %69, i32 0, i32 5
  %71 = load double, double* %70, align 8
  %72 = fsub double %68, %71
  %73 = fmul double %67, %72
  %74 = fadd double %66, %73
  %75 = load i32, i32* @sys_offset, align 4
  %76 = call double @fabs(i32 %75)
  %77 = fadd double %74, %76
  store double %77, double* %3, align 8
  %78 = load double, double* %3, align 8
  %79 = load double, double* @sys_mindisp, align 8
  %80 = fcmp ogt double %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %57
  %82 = load double, double* %3, align 8
  store double %82, double* @sys_rootdisp, align 8
  br label %85

83:                                               ; preds = %57
  %84 = load double, double* @sys_mindisp, align 8
  store double %84, double* @sys_rootdisp, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.peer*, %struct.peer** %2, align 8
  %87 = getelementptr inbounds %struct.peer, %struct.peer* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.peer*, %struct.peer** %2, align 8
  %90 = getelementptr inbounds %struct.peer, %struct.peer* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  store i64 %92, i64* @sys_rootdelay, align 8
  %93 = load %struct.peer*, %struct.peer** %2, align 8
  %94 = getelementptr inbounds %struct.peer, %struct.peer* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* @sys_reftime, align 4
  %96 = load double, double* @current_time, align 8
  %97 = load %struct.peer*, %struct.peer** %2, align 8
  %98 = getelementptr inbounds %struct.peer, %struct.peer* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.peer*, %struct.peer** %2, align 8
  %101 = getelementptr inbounds %struct.peer, %struct.peer* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @DPRINTF(i32 1, i8* %104)
  %106 = load %struct.peer*, %struct.peer** %2, align 8
  %107 = load i32, i32* @sys_offset, align 4
  %108 = call i32 @local_clock(%struct.peer* %106, i32 %107)
  switch i32 %108, label %164 [
    i32 -1, label %109
    i32 2, label %111
    i32 1, label %121
  ]

109:                                              ; preds = %85
  %110 = call i32 @exit(i32 -1) #3
  unreachable

111:                                              ; preds = %85
  %112 = call i32 (...) @clear_all()
  %113 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %114 = call i32 @set_sys_leap(i32 %113)
  %115 = load i64, i64* @STRATUM_UNSPEC, align 8
  store i64 %115, i64* @sys_stratum, align 8
  %116 = call i32 @memcpy(i32* @sys_refid, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i64 0, i64* @sys_rootdelay, align 8
  store double 0.000000e+00, double* @sys_rootdisp, align 8
  %117 = call i32 @L_CLR(i32* @sys_reftime)
  %118 = load i32, i32* @sys_precision, align 4
  %119 = call double @LOGTOD(i32 %118)
  store double %119, double* @sys_jitter, align 8
  %120 = call i32 (...) @leapsec_reset_frame()
  br label %165

121:                                              ; preds = %85
  %122 = load i32, i32* @sys_leap, align 4
  %123 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @LEAP_NOWARNING, align 4
  %127 = call i32 @set_sys_leap(i32 %126)
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* @leapsec, align 4
  %130 = load i32, i32* @LSPROX_NOWARN, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  %133 = load i32, i32* @leap_vote_ins, align 4
  %134 = load i32, i32* @leap_vote_del, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i32, i32* @leap_vote_ins, align 4
  %138 = load i32, i32* @sys_survivors, align 4
  %139 = sdiv i32 %138, 2
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = call i32 @get_systime(%struct.TYPE_3__* %4)
  %143 = load i32, i32* @TRUE, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @leapsec_add_dyn(i32 %143, i32 %145, i32* null)
  br label %147

147:                                              ; preds = %141, %136, %132
  %148 = load i32, i32* @leap_vote_del, align 4
  %149 = load i32, i32* @leap_vote_ins, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i32, i32* @leap_vote_del, align 4
  %153 = load i32, i32* @sys_survivors, align 4
  %154 = sdiv i32 %153, 2
  %155 = icmp sgt i32 %152, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = call i32 @get_systime(%struct.TYPE_3__* %4)
  %158 = load i32, i32* @FALSE, align 4
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @leapsec_add_dyn(i32 %158, i32 %160, i32* null)
  br label %162

162:                                              ; preds = %156, %151, %147
  br label %163

163:                                              ; preds = %162, %128
  br label %165

164:                                              ; preds = %85
  br label %165

165:                                              ; preds = %164, %163, %111
  ret void
}

declare dso_local i32 @poll_update(%struct.peer*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @addr2refid(i32*) #1

declare dso_local double @fabs(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @local_clock(%struct.peer*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @clear_all(...) #1

declare dso_local i32 @set_sys_leap(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @L_CLR(i32*) #1

declare dso_local double @LOGTOD(i32) #1

declare dso_local i32 @leapsec_reset_frame(...) #1

declare dso_local i32 @get_systime(%struct.TYPE_3__*) #1

declare dso_local i32 @leapsec_add_dyn(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
