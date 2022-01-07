; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_open_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_open_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { %struct.procstat_core*, i32 }
%struct.procstat_core = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@PROCSTAT_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.procstat* @procstat_open_core(i8* %0) #0 {
  %2 = alloca %struct.procstat*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.procstat*, align 8
  %5 = alloca %struct.procstat_core*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call %struct.procstat* @calloc(i32 1, i32 16)
  store %struct.procstat* %6, %struct.procstat** %4, align 8
  %7 = load %struct.procstat*, %struct.procstat** %4, align 8
  %8 = icmp eq %struct.procstat* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.procstat* null, %struct.procstat** %2, align 8
  br label %27

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.procstat_core* @procstat_core_open(i8* %12)
  store %struct.procstat_core* %13, %struct.procstat_core** %5, align 8
  %14 = load %struct.procstat_core*, %struct.procstat_core** %5, align 8
  %15 = icmp eq %struct.procstat_core* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.procstat*, %struct.procstat** %4, align 8
  %18 = call i32 @free(%struct.procstat* %17)
  store %struct.procstat* null, %struct.procstat** %2, align 8
  br label %27

19:                                               ; preds = %11
  %20 = load i32, i32* @PROCSTAT_CORE, align 4
  %21 = load %struct.procstat*, %struct.procstat** %4, align 8
  %22 = getelementptr inbounds %struct.procstat, %struct.procstat* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.procstat_core*, %struct.procstat_core** %5, align 8
  %24 = load %struct.procstat*, %struct.procstat** %4, align 8
  %25 = getelementptr inbounds %struct.procstat, %struct.procstat* %24, i32 0, i32 0
  store %struct.procstat_core* %23, %struct.procstat_core** %25, align 8
  %26 = load %struct.procstat*, %struct.procstat** %4, align 8
  store %struct.procstat* %26, %struct.procstat** %2, align 8
  br label %27

27:                                               ; preds = %19, %16, %9
  %28 = load %struct.procstat*, %struct.procstat** %2, align 8
  ret %struct.procstat* %28
}

declare dso_local %struct.procstat* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.procstat_core* @procstat_core_open(i8*) #1

declare dso_local i32 @free(%struct.procstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
