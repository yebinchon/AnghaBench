; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_sys_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_sys_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@stats_control = common dso_local global i32 0, align 4
@sysstats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MJD_1900 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"%lu %s %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu\0A\00", align 1
@current_time = common dso_local global i64 0, align 8
@sys_stattime = common dso_local global i64 0, align 8
@sys_received = common dso_local global i32 0, align 4
@sys_processed = common dso_local global i32 0, align 4
@sys_newversion = common dso_local global i32 0, align 4
@sys_oldversion = common dso_local global i32 0, align 4
@sys_restricted = common dso_local global i32 0, align 4
@sys_badlength = common dso_local global i32 0, align 4
@sys_badauth = common dso_local global i32 0, align 4
@sys_declined = common dso_local global i32 0, align 4
@sys_limitrejected = common dso_local global i32 0, align 4
@sys_kodsent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_sys_stats() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @stats_control, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %43

6:                                                ; preds = %0
  %7 = call i32 @get_systime(%struct.TYPE_6__* %1)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @filegen_setup(%struct.TYPE_7__* @sysstats, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 86400
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @MJD_1900, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %18, 86400
  store i32 %19, i32* %17, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sysstats, i32 0, i32 0), align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %6
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sysstats, i32 0, i32 0), align 8
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @ulfptoa(%struct.TYPE_6__* %1, i32 3)
  %26 = load i64, i64* @current_time, align 8
  %27 = load i64, i64* @sys_stattime, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i32, i32* @sys_received, align 4
  %30 = load i32, i32* @sys_processed, align 4
  %31 = load i32, i32* @sys_newversion, align 4
  %32 = load i32, i32* @sys_oldversion, align 4
  %33 = load i32, i32* @sys_restricted, align 4
  %34 = load i32, i32* @sys_badlength, align 4
  %35 = load i32, i32* @sys_badauth, align 4
  %36 = load i32, i32* @sys_declined, align 4
  %37 = load i32, i32* @sys_limitrejected, align 4
  %38 = load i32, i32* @sys_kodsent, align 4
  %39 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25, i64 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sysstats, i32 0, i32 0), align 8
  %41 = call i32 @fflush(i32* %40)
  %42 = call i32 (...) @proto_clr_stats()
  br label %43

43:                                               ; preds = %5, %22, %6
  ret void
}

declare dso_local i32 @get_systime(%struct.TYPE_6__*) #1

declare dso_local i32 @filegen_setup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ulfptoa(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @proto_clr_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
