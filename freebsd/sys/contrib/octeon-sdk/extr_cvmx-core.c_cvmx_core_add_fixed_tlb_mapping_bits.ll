; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-core.c_cvmx_core_add_fixed_tlb_mapping_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-core.c_cvmx_core_add_fixed_tlb_mapping_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [70 x i8] c"Error adding tlb mapping: invalid address alignment at vaddr: 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_core_add_fixed_tlb_mapping_bits(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %9, align 4
  %12 = or i32 %11, 2047
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, -8
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, 2047
  %21 = ashr i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %18, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, -8
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, 2047
  %31 = ashr i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = and i64 %28, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25, %15, %4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i32 -1, i32* %5, align 4
  br label %53

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 6
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 7
  %45 = or i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 6
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 7
  %50 = or i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @cvmx_core_add_wired_tlb_entry(i32 %40, i32 %45, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %39, %35
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @cvmx_dprintf(i8*, i64) #1

declare dso_local i32 @cvmx_core_add_wired_tlb_entry(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
