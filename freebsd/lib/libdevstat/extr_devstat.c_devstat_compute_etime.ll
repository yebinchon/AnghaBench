; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdevstat/extr_devstat.c_devstat_compute_etime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdevstat/extr_devstat.c_devstat_compute_etime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { x86_fp80, x86_fp80 }

@BINTIME_SCALE = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @devstat_compute_etime(%struct.bintime* %0, %struct.bintime* %1) #0 {
  %3 = alloca %struct.bintime*, align 8
  %4 = alloca %struct.bintime*, align 8
  %5 = alloca x86_fp80, align 16
  store %struct.bintime* %0, %struct.bintime** %3, align 8
  store %struct.bintime* %1, %struct.bintime** %4, align 8
  %6 = load %struct.bintime*, %struct.bintime** %3, align 8
  %7 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 0
  %8 = load x86_fp80, x86_fp80* %7, align 16
  store x86_fp80 %8, x86_fp80* %5, align 16
  %9 = load %struct.bintime*, %struct.bintime** %3, align 8
  %10 = getelementptr inbounds %struct.bintime, %struct.bintime* %9, i32 0, i32 1
  %11 = load x86_fp80, x86_fp80* %10, align 16
  %12 = load x86_fp80, x86_fp80* @BINTIME_SCALE, align 16
  %13 = fmul x86_fp80 %11, %12
  %14 = load x86_fp80, x86_fp80* %5, align 16
  %15 = fadd x86_fp80 %14, %13
  store x86_fp80 %15, x86_fp80* %5, align 16
  %16 = load %struct.bintime*, %struct.bintime** %4, align 8
  %17 = icmp ne %struct.bintime* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.bintime*, %struct.bintime** %4, align 8
  %20 = getelementptr inbounds %struct.bintime, %struct.bintime* %19, i32 0, i32 0
  %21 = load x86_fp80, x86_fp80* %20, align 16
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = fsub x86_fp80 %22, %21
  store x86_fp80 %23, x86_fp80* %5, align 16
  %24 = load %struct.bintime*, %struct.bintime** %4, align 8
  %25 = getelementptr inbounds %struct.bintime, %struct.bintime* %24, i32 0, i32 1
  %26 = load x86_fp80, x86_fp80* %25, align 16
  %27 = load x86_fp80, x86_fp80* @BINTIME_SCALE, align 16
  %28 = fmul x86_fp80 %26, %27
  %29 = load x86_fp80, x86_fp80* %5, align 16
  %30 = fsub x86_fp80 %29, %28
  store x86_fp80 %30, x86_fp80* %5, align 16
  br label %31

31:                                               ; preds = %18, %2
  %32 = load x86_fp80, x86_fp80* %5, align 16
  ret x86_fp80 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
