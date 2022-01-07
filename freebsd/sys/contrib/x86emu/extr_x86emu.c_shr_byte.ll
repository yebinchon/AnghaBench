; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shr_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shr_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @shr_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shr_byte(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %59

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub i32 %19, 1
  %21 = shl i32 1, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @F_CF, align 4
  %28 = call i32 @CONDITIONAL_SET_FLAG(i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @F_ZF, align 4
  %34 = call i32 @CONDITIONAL_SET_FLAG(i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 128
  %37 = load i32, i32* @F_SF, align 4
  %38 = call i32 @CONDITIONAL_SET_FLAG(i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @PARITY(i32 %40)
  %42 = load i32, i32* @F_PF, align 4
  %43 = call i32 @CONDITIONAL_SET_FLAG(i32 %41, i32 %42)
  br label %46

44:                                               ; preds = %12
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = lshr i32 %50, 6
  %52 = call i32 @XOR2(i32 %51)
  %53 = load i32, i32* @F_OF, align 4
  %54 = call i32 @CONDITIONAL_SET_FLAG(i32 %52, i32 %53)
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @F_OF, align 4
  %57 = call i32 @CLEAR_FLAG(i32 %56)
  br label %58

58:                                               ; preds = %55, %49
  br label %75

59:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = ashr i32 %60, %62
  %64 = and i32 %63, 1
  %65 = load i32, i32* @F_CF, align 4
  %66 = call i32 @CONDITIONAL_SET_FLAG(i32 %64, i32 %65)
  %67 = load i32, i32* @F_OF, align 4
  %68 = call i32 @CLEAR_FLAG(i32 %67)
  %69 = load i32, i32* @F_SF, align 4
  %70 = call i32 @CLEAR_FLAG(i32 %69)
  %71 = load i32, i32* @F_PF, align 4
  %72 = call i32 @SET_FLAG(i32 %71)
  %73 = load i32, i32* @F_ZF, align 4
  %74 = call i32 @SET_FLAG(i32 %73)
  br label %75

75:                                               ; preds = %59, %58
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @XOR2(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
