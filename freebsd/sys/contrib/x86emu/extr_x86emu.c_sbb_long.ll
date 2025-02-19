; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sbb_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sbb_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @sbb_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbb_long(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @F_CF, align 4
  %10 = call i64 @ACCESS_FLAG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, -2147483648
  %24 = load i32, i32* @F_SF, align 4
  %25 = call i32 @CONDITIONAL_SET_FLAG(i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @F_ZF, align 4
  %30 = call i32 @CONDITIONAL_SET_FLAG(i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @PARITY(i32 %32)
  %34 = load i32, i32* @F_PF, align 4
  %35 = call i32 @CONDITIONAL_SET_FLAG(i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %36, %40
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %41, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, -2147483648
  %49 = load i32, i32* @F_CF, align 4
  %50 = call i32 @CONDITIONAL_SET_FLAG(i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 30
  %53 = call i32 @XOR2(i32 %52)
  %54 = load i32, i32* @F_OF, align 4
  %55 = call i32 @CONDITIONAL_SET_FLAG(i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 8
  %58 = load i32, i32* @F_AF, align 4
  %59 = call i32 @CONDITIONAL_SET_FLAG(i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
