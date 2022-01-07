; ModuleID = '/home/carl/AnghaBench/freebsd/stand/sparc64/loader/extr_main.c_itlb_va_to_pa_sun4u.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/sparc64/loader/extr_main.c_itlb_va_to_pa_sun4u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSTATE_IE = common dso_local global i64 0, align 8
@itlb_slot_max = common dso_local global i32 0, align 4
@tlb_locked = common dso_local global i32 0, align 4
@ASI_ITLB_TAG_READ_REG = common dso_local global i32 0, align 4
@TD_PA_SHIFT = common dso_local global i64 0, align 8
@cpu_impl = common dso_local global i64 0, align 8
@CPU_IMPL_SPARC64V = common dso_local global i64 0, align 8
@CPU_IMPL_ULTRASPARCIII = common dso_local global i64 0, align 8
@TD_PA_CH_MASK = common dso_local global i64 0, align 8
@TD_PA_SF_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @itlb_va_to_pa_sun4u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @itlb_va_to_pa_sun4u(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @rdpr(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @PSTATE_IE, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = call i32 @wrpr(i64 %9, i64 %13, i32 0)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %55, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @itlb_slot_max, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* @tlb_locked, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TLB_DAR_SLOT(i32 %20, i32 %21)
  %23 = load i32, i32* @ASI_ITLB_TAG_READ_REG, align 4
  %24 = call i64 @ldxa(i32 %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @TLB_TAR_VA(i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %55

30:                                               ; preds = %19
  %31 = load i32, i32* @tlb_locked, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @itlb_get_data_sun4u(i32 %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @wrpr(i64 %34, i64 %35, i32 0)
  %37 = load i64, i64* @TD_PA_SHIFT, align 8
  %38 = load i64, i64* %5, align 8
  %39 = ashr i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* @cpu_impl, align 8
  %41 = load i64, i64* @CPU_IMPL_SPARC64V, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load i64, i64* @cpu_impl, align 8
  %45 = load i64, i64* @CPU_IMPL_ULTRASPARCIII, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %30
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @TD_PA_CH_MASK, align 8
  %50 = and i64 %48, %49
  store i64 %50, i64* %2, align 8
  br label %62

51:                                               ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @TD_PA_SF_MASK, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %2, align 8
  br label %62

55:                                               ; preds = %29
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %15

58:                                               ; preds = %15
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @wrpr(i64 %59, i64 %60, i32 0)
  store i64 -1, i64* %2, align 8
  br label %62

62:                                               ; preds = %58, %51, %47
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i64 @rdpr(i64) #1

declare dso_local i32 @wrpr(i64, i64, i32) #1

declare dso_local i64 @ldxa(i32, i32) #1

declare dso_local i32 @TLB_DAR_SLOT(i32, i32) #1

declare dso_local i64 @TLB_TAR_VA(i64) #1

declare dso_local i64 @itlb_get_data_sun4u(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
