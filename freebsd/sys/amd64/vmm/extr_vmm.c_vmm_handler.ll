; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vmm_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vmm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmm_initialized = common dso_local global i32 0, align 4
@vmm_resume_p = common dso_local global i32* null, align 8
@vmm_ipinum = common dso_local global i32 0, align 4
@IPI_AST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @vmm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmm_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %35 [
    i32 129, label %9
    i32 128, label %16
  ]

9:                                                ; preds = %3
  %10 = call i32 (...) @vmmdev_init()
  %11 = call i32 (...) @vmm_init()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* @vmm_initialized, align 4
  br label %15

15:                                               ; preds = %14, %9
  br label %36

16:                                               ; preds = %3
  %17 = call i32 (...) @vmmdev_cleanup()
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  store i32* null, i32** @vmm_resume_p, align 8
  %21 = call i32 (...) @iommu_cleanup()
  %22 = load i32, i32* @vmm_ipinum, align 4
  %23 = load i32, i32* @IPI_AST, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @vmm_ipinum, align 4
  %27 = call i32 @lapic_ipi_free(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = call i32 (...) @VMM_CLEANUP()
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* @vmm_initialized, align 4
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %16
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34, %15
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @vmmdev_init(...) #1

declare dso_local i32 @vmm_init(...) #1

declare dso_local i32 @vmmdev_cleanup(...) #1

declare dso_local i32 @iommu_cleanup(...) #1

declare dso_local i32 @lapic_ipi_free(i32) #1

declare dso_local i32 @VMM_CLEANUP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
