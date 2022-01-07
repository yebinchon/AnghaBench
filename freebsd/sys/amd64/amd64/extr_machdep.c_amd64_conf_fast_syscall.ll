; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_amd64_conf_fast_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_amd64_conf_fast_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_EFER = common dso_local global i32 0, align 4
@EFER_SCE = common dso_local global i32 0, align 4
@MSR_LSTAR = common dso_local global i32 0, align 4
@pti = common dso_local global i64 0, align 8
@fast_syscall_pti = common dso_local global i32 0, align 4
@fast_syscall = common dso_local global i32 0, align 4
@MSR_CSTAR = common dso_local global i32 0, align 4
@fast_syscall32 = common dso_local global i32 0, align 4
@GCODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@GUCODE32_SEL = common dso_local global i32 0, align 4
@SEL_UPL = common dso_local global i32 0, align 4
@MSR_STAR = common dso_local global i32 0, align 4
@MSR_SF_MASK = common dso_local global i32 0, align 4
@PSL_NT = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4
@PSL_C = common dso_local global i32 0, align 4
@PSL_D = common dso_local global i32 0, align 4
@PSL_AC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_conf_fast_syscall() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MSR_EFER, align 4
  %3 = call i32 @rdmsr(i32 %2)
  %4 = load i32, i32* @EFER_SCE, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @MSR_EFER, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @wrmsr(i32 %6, i32 %7)
  %9 = load i32, i32* @MSR_LSTAR, align 4
  %10 = load i64, i64* @pti, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @fast_syscall_pti, align 4
  %14 = call i64 @IDTVEC(i32 %13)
  %15 = trunc i64 %14 to i32
  br label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @fast_syscall, align 4
  %18 = call i64 @IDTVEC(i32 %17)
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  %22 = call i32 @wrmsr(i32 %9, i32 %21)
  %23 = load i32, i32* @MSR_CSTAR, align 4
  %24 = load i32, i32* @fast_syscall32, align 4
  %25 = call i64 @IDTVEC(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 @wrmsr(i32 %23, i32 %26)
  %28 = load i32, i32* @GCODE_SEL, align 4
  %29 = load i32, i32* @SEL_KPL, align 4
  %30 = call i64 @GSEL(i32 %28, i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 32
  %33 = load i32, i32* @GUCODE32_SEL, align 4
  %34 = load i32, i32* @SEL_UPL, align 4
  %35 = call i64 @GSEL(i32 %33, i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 48
  %38 = or i32 %32, %37
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @MSR_STAR, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @wrmsr(i32 %39, i32 %40)
  %42 = load i32, i32* @MSR_SF_MASK, align 4
  %43 = load i32, i32* @PSL_NT, align 4
  %44 = load i32, i32* @PSL_T, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PSL_I, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PSL_C, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PSL_D, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PSL_AC, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @wrmsr(i32 %42, i32 %53)
  ret void
}

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i64 @IDTVEC(i32) #1

declare dso_local i64 @GSEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
