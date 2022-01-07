; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/riscv/extr_fbt_isa.c_check_c_ret.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/riscv/extr_fbt_isa.c_check_c_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_C_JR = common dso_local global i32 0, align 4
@X_RA = common dso_local global i32 0, align 4
@RD_SHIFT = common dso_local global i32 0, align 4
@MASK_C_JR = common dso_local global i32 0, align 4
@RD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @check_c_ret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_c_ret(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load i32**, i32*** %3, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MATCH_C_JR, align 4
  %18 = load i32, i32* @X_RA, align 4
  %19 = load i32, i32* @RD_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* @MASK_C_JR, align 4
  %23 = load i32, i32* @RD_MASK, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @match_opcode(i32 %16, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = load i32*, i32** %4, align 8
  %29 = load i32**, i32*** %3, align 8
  store i32* %28, i32** %29, align 8
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @match_opcode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
