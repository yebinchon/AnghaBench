; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sbb_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sbb_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @sbb_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbb_word(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
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
  %23 = and i32 %22, 32768
  %24 = load i32, i32* @F_SF, align 4
  %25 = call i32 @CONDITIONAL_SET_FLAG(i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @F_ZF, align 4
  %31 = call i32 @CONDITIONAL_SET_FLAG(i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 255
  %34 = call i32 @PARITY(i32 %33)
  %35 = load i32, i32* @F_PF, align 4
  %36 = call i32 @CONDITIONAL_SET_FLAG(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %37, %41
  %43 = load i32, i32* %5, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %42, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 32768
  %50 = load i32, i32* @F_CF, align 4
  %51 = call i32 @CONDITIONAL_SET_FLAG(i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 14
  %54 = call i32 @XOR2(i32 %53)
  %55 = load i32, i32* @F_OF, align 4
  %56 = call i32 @CONDITIONAL_SET_FLAG(i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 8
  %59 = load i32, i32* @F_AF, align 4
  %60 = call i32 @CONDITIONAL_SET_FLAG(i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
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
