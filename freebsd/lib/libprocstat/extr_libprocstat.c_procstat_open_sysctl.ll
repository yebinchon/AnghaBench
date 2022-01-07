; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_open_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_open_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@PROCSTAT_SYSCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.procstat* @procstat_open_sysctl() #0 {
  %1 = alloca %struct.procstat*, align 8
  %2 = alloca %struct.procstat*, align 8
  %3 = call %struct.procstat* @calloc(i32 1, i32 4)
  store %struct.procstat* %3, %struct.procstat** %2, align 8
  %4 = load %struct.procstat*, %struct.procstat** %2, align 8
  %5 = icmp eq %struct.procstat* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.procstat* null, %struct.procstat** %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @PROCSTAT_SYSCTL, align 4
  %10 = load %struct.procstat*, %struct.procstat** %2, align 8
  %11 = getelementptr inbounds %struct.procstat, %struct.procstat* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.procstat*, %struct.procstat** %2, align 8
  store %struct.procstat* %12, %struct.procstat** %1, align 8
  br label %13

13:                                               ; preds = %8, %6
  %14 = load %struct.procstat*, %struct.procstat** %1, align 8
  ret %struct.procstat* %14
}

declare dso_local %struct.procstat* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
