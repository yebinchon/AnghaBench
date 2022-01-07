; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pkru_set(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @trunc_page(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @round_page(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @pmap_pkru_check_uargs(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %56

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @PMAP_LOCK(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @pmap_pkru_assign(i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @pmap_pkru_update_range(i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @PMAP_UNLOCK(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %54

52:                                               ; preds = %45
  %53 = call i32 @vm_wait(i32* null)
  br label %28

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %25
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @pmap_pkru_check_uargs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pmap_pkru_assign(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmap_pkru_update_range(i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @vm_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
