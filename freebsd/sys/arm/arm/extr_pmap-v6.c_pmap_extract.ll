; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE1_OFFSET = common dso_local global i32 0, align 4
@PTE2_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_extract(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @PMAP_LOCK(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pmap_pte1(i32 %10, i32 %11)
  %13 = call i32 @pte1_load(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @pte1_is_section(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pte1_pa(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PTE1_OFFSET, align 4
  %22 = and i32 %20, %21
  %23 = or i32 %19, %22
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @pte1_is_link(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32* @pmap_pte2(i32 %29, i32 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @pte2_load(i32* %32)
  %34 = call i32 @pte2_pa(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PTE2_OFFSET, align 4
  %37 = and i32 %35, %36
  %38 = or i32 %34, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @pmap_pte2_release(i32* %39)
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @PMAP_UNLOCK(i32 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pte1_load(i32) #1

declare dso_local i32 @pmap_pte1(i32, i32) #1

declare dso_local i64 @pte1_is_section(i32) #1

declare dso_local i32 @pte1_pa(i32) #1

declare dso_local i64 @pte1_is_link(i32) #1

declare dso_local i32* @pmap_pte2(i32, i32) #1

declare dso_local i32 @pte2_pa(i32) #1

declare dso_local i32 @pte2_load(i32*) #1

declare dso_local i32 @pmap_pte2_release(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
