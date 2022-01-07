; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pkru_clear(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @trunc_page(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @round_page(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pmap_pkru_check_uargs(i32 %13, i32 %14, i32 %15, i32 0, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @PMAP_LOCK(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pmap_pkru_deassign(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pmap_pkru_update_range(i32 %32, i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @PMAP_UNLOCK(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %45

43:                                               ; preds = %36
  %44 = call i32 @vm_wait(i32* null)
  br label %22

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @pmap_pkru_check_uargs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pmap_pkru_deassign(i32, i32, i32) #1

declare dso_local i32 @pmap_pkru_update_range(i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @vm_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
