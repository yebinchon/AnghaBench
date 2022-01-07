; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c_cvmx_tlb_write_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c_cvmx_tlb_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_tlb_write_entry(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @__is_power_of_two(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @__log2(i32 %19)
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @__log2(i32 %25)
  %27 = ashr i32 %24, %26
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 12
  %33 = shl i32 %32, 6
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  %39 = ashr i32 %38, 12
  %40 = shl i32 %39, 12
  store i32 %40, i32* %13, align 4
  br label %50

41:                                               ; preds = %23
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 12
  %44 = shl i32 %43, 6
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 12
  %49 = shl i32 %48, 12
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %41, %30
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %52, -4096
  store i32 %53, i32* %14, align 4
  br label %75

54:                                               ; preds = %18
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 12
  %57 = shl i32 %56, 6
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sdiv i32 %61, 2
  %63 = add nsw i32 %60, %62
  %64 = ashr i32 %63, 12
  %65 = shl i32 %64, 6
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 12
  %70 = shl i32 %69, 12
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sdiv i32 %71, 2
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %73, -4096
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %54, %50
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @__tlb_write_index(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %5
  ret void
}

declare dso_local i64 @__is_power_of_two(i32) #1

declare dso_local i32 @__log2(i32) #1

declare dso_local i32 @__tlb_write_index(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
