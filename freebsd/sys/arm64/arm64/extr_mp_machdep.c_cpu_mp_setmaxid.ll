; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_cpu_mp_setmaxid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_cpu_mp_setmaxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_ncpus = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i32 0, align 4
@arm64_bus_method = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No CPU data, limiting to 1 core\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hw.ncpu\00", align 1
@MAXCPU = common dso_local global i32 0, align 4
@cpu_find_cpu0_fdt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_setmaxid() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @mp_ncpus, align 4
  store i32 0, i32* @mp_maxid, align 4
  %2 = load i32, i32* @arm64_bus_method, align 4
  switch i32 %2, label %3 [
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @bootverbose, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %3
  br label %9

9:                                                ; preds = %8
  %10 = call i64 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @mp_ncpus, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  store i32 %20, i32* @mp_ncpus, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* @mp_maxid, align 4
  br label %23

23:                                               ; preds = %19, %15, %12
  br label %24

24:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @TUNABLE_INT_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
