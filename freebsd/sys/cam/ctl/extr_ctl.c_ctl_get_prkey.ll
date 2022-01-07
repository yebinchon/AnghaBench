; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_prkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_prkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32** }

@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_lun*, i64)* @ctl_get_prkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_get_prkey(%struct.ctl_lun* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %8 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %12 = udiv i64 %10, %11
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %22 = urem i64 %20, %21
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
