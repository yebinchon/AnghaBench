; ModuleID = '/home/carl/AnghaBench/freebsd/stand/sparc64/loader/extr_main.c_dtlb_va_to_pa_sun4u.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/sparc64/loader/extr_main.c_dtlb_va_to_pa_sun4u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSTATE_IE = common dso_local global i64 0, align 8
@dtlb_slot_max = common dso_local global i64 0, align 8
@tlb_locked = common dso_local global i32 0, align 4
@ASI_DTLB_TAG_READ_REG = common dso_local global i32 0, align 4
@TD_PA_SHIFT = common dso_local global i64 0, align 8
@cpu_impl = common dso_local global i64 0, align 8
@CPU_IMPL_SPARC64V = common dso_local global i64 0, align 8
@CPU_IMPL_ULTRASPARCIII = common dso_local global i64 0, align 8
@TD_PA_CH_MASK = common dso_local global i64 0, align 8
@TD_PA_SF_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @dtlb_va_to_pa_sun4u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dtlb_va_to_pa_sun4u(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @rdpr(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @PSTATE_IE, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = call i32 @wrpr(i64 %10, i64 %14, i32 0)
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %56, %1
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @dtlb_slot_max, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* @tlb_locked, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @TLB_DAR_SLOT(i32 %21, i64 %22)
  %24 = load i32, i32* @ASI_DTLB_TAG_READ_REG, align 4
  %25 = call i64 @ldxa(i32 %23, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @TLB_TAR_VA(i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %56

31:                                               ; preds = %20
  %32 = load i32, i32* @tlb_locked, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @dtlb_get_data_sun4u(i32 %32, i64 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @wrpr(i64 %35, i64 %36, i32 0)
  %38 = load i64, i64* @TD_PA_SHIFT, align 8
  %39 = load i64, i64* %5, align 8
  %40 = ashr i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* @cpu_impl, align 8
  %42 = load i64, i64* @CPU_IMPL_SPARC64V, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %31
  %45 = load i64, i64* @cpu_impl, align 8
  %46 = load i64, i64* @CPU_IMPL_ULTRASPARCIII, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %31
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @TD_PA_CH_MASK, align 8
  %51 = and i64 %49, %50
  store i64 %51, i64* %2, align 8
  br label %63

52:                                               ; preds = %44
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @TD_PA_SF_MASK, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %2, align 8
  br label %63

56:                                               ; preds = %30
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %16

59:                                               ; preds = %16
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @wrpr(i64 %60, i64 %61, i32 0)
  store i64 -1, i64* %2, align 8
  br label %63

63:                                               ; preds = %59, %52, %48
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i64 @rdpr(i64) #1

declare dso_local i32 @wrpr(i64, i64, i32) #1

declare dso_local i64 @ldxa(i32, i32) #1

declare dso_local i32 @TLB_DAR_SLOT(i32, i64) #1

declare dso_local i64 @TLB_TAR_VA(i64) #1

declare dso_local i64 @dtlb_get_data_sun4u(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
