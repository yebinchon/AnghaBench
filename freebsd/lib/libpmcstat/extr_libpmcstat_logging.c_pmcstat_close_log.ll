; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_logging.c_pmcstat_close_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_logging.c_pmcstat_close_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_args = type { i32, i32 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ERROR: logging failed\00", align 1
@FLAG_HAS_PIPE = common dso_local global i32 0, align 4
@PMCSTAT_EXITING = common dso_local global i32 0, align 4
@PMCSTAT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmcstat_close_log(%struct.pmcstat_args* %0) #0 {
  %2 = alloca %struct.pmcstat_args*, align 8
  store %struct.pmcstat_args* %0, %struct.pmcstat_args** %2, align 8
  %3 = load %struct.pmcstat_args*, %struct.pmcstat_args** %2, align 8
  %4 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = call i64 (...) @pmc_close_logfile()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @EX_OSERR, align 4
  %12 = call i32 @err(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %7
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.pmcstat_args*, %struct.pmcstat_args** %2, align 8
  %16 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FLAG_HAS_PIPE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @PMCSTAT_EXITING, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @PMCSTAT_FINISHED, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  ret i32 %26
}

declare dso_local i64 @pmc_close_logfile(...) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
