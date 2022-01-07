; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_init_util.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_init_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@statsdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"peerstats\00", align 1
@peerstats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"loopstats\00", align 1
@loopstats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"clockstats\00", align 1
@clockstats = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rawstats\00", align 1
@rawstats = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"sysstats\00", align 1
@sysstats = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"protostats\00", align 1
@protostats = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"cryptostats\00", align 1
@cryptostats = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"timingstats\00", align 1
@timingstats = common dso_local global i32 0, align 4
@ntpd_time_stepped = common dso_local global i32 0, align 4
@step_callback = common dso_local global i32* null, align 8
@uninit_util = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_util() #0 {
  %1 = load i32, i32* @statsdir, align 4
  %2 = call i32 @filegen_register(i32 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @peerstats)
  %3 = load i32, i32* @statsdir, align 4
  %4 = call i32 @filegen_register(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @loopstats)
  %5 = load i32, i32* @statsdir, align 4
  %6 = call i32 @filegen_register(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* @clockstats)
  %7 = load i32, i32* @statsdir, align 4
  %8 = call i32 @filegen_register(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* @rawstats)
  %9 = load i32, i32* @statsdir, align 4
  %10 = call i32 @filegen_register(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* @sysstats)
  %11 = load i32, i32* @statsdir, align 4
  %12 = call i32 @filegen_register(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* @protostats)
  %13 = load i32, i32* @statsdir, align 4
  %14 = call i32 @filegen_register(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* @cryptostats)
  %15 = load i32, i32* @statsdir, align 4
  %16 = call i32 @filegen_register(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* @timingstats)
  store i32* @ntpd_time_stepped, i32** @step_callback, align 8
  ret void
}

declare dso_local i32 @filegen_register(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
