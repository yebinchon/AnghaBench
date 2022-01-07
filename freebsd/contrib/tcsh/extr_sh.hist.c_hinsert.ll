; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_hinsert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_hinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { %struct.Hist*, %struct.Hist* }

@histTail = common dso_local global %struct.Hist* null, align 8
@histCount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Hist*, %struct.Hist*)* @hinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hinsert(%struct.Hist* %0, %struct.Hist* %1) #0 {
  %3 = alloca %struct.Hist*, align 8
  %4 = alloca %struct.Hist*, align 8
  %5 = alloca %struct.Hist*, align 8
  store %struct.Hist* %0, %struct.Hist** %3, align 8
  store %struct.Hist* %1, %struct.Hist** %4, align 8
  %6 = load %struct.Hist*, %struct.Hist** %4, align 8
  %7 = getelementptr inbounds %struct.Hist, %struct.Hist* %6, i32 0, i32 1
  %8 = load %struct.Hist*, %struct.Hist** %7, align 8
  store %struct.Hist* %8, %struct.Hist** %5, align 8
  %9 = load %struct.Hist*, %struct.Hist** %5, align 8
  %10 = load %struct.Hist*, %struct.Hist** %3, align 8
  %11 = getelementptr inbounds %struct.Hist, %struct.Hist* %10, i32 0, i32 1
  store %struct.Hist* %9, %struct.Hist** %11, align 8
  %12 = load %struct.Hist*, %struct.Hist** %4, align 8
  %13 = load %struct.Hist*, %struct.Hist** %3, align 8
  %14 = getelementptr inbounds %struct.Hist, %struct.Hist* %13, i32 0, i32 0
  store %struct.Hist* %12, %struct.Hist** %14, align 8
  %15 = load %struct.Hist*, %struct.Hist** %3, align 8
  %16 = load %struct.Hist*, %struct.Hist** %4, align 8
  %17 = getelementptr inbounds %struct.Hist, %struct.Hist* %16, i32 0, i32 1
  store %struct.Hist* %15, %struct.Hist** %17, align 8
  %18 = load %struct.Hist*, %struct.Hist** %5, align 8
  %19 = icmp ne %struct.Hist* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.Hist*, %struct.Hist** %3, align 8
  %22 = load %struct.Hist*, %struct.Hist** %5, align 8
  %23 = getelementptr inbounds %struct.Hist, %struct.Hist* %22, i32 0, i32 0
  store %struct.Hist* %21, %struct.Hist** %23, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load %struct.Hist*, %struct.Hist** %3, align 8
  store %struct.Hist* %25, %struct.Hist** @histTail, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* @histCount, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @histCount, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
