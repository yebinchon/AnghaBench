; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_dump_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_dump_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE1_OFFSET = common dso_local global i32 0, align 4
@PTE2_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_dump_kextract(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @kern_pte1(i32 %8)
  %10 = call i32 @pte1_load(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @pte1_is_section(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pte1_pa(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PTE1_OFFSET, align 4
  %19 = and i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ATTR_TO_L2(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @PTE2_V, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @pte1_is_link(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pt2map_entry(i32 %32)
  %34 = call i32 @pte2_load(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pte2_pa(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @pte1_load(i32) #1

declare dso_local i32 @kern_pte1(i32) #1

declare dso_local i64 @pte1_is_section(i32) #1

declare dso_local i32 @pte1_pa(i32) #1

declare dso_local i32 @ATTR_TO_L2(i32) #1

declare dso_local i64 @pte1_is_link(i32) #1

declare dso_local i32 @pte2_load(i32) #1

declare dso_local i32 @pt2map_entry(i32) #1

declare dso_local i32 @pte2_pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
