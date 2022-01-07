; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/qemu/extr_virt_mp.c_virt_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/qemu/extr_virt_mp.c_virt_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@running_cpus = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i64 0, align 8
@mpentry = common dso_local global i64 0, align 8
@PSCI_RETVAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @virt_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_start_ap(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* @running_cpus, align 8
  %12 = load i64, i64* @mp_ncpus, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %30

15:                                               ; preds = %4
  %16 = load i64, i64* @running_cpus, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @running_cpus, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @mpentry, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @pmap_kextract(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @psci_cpu_on(i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PSCI_RETVAL_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %30

29:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %28, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @psci_cpu_on(i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
