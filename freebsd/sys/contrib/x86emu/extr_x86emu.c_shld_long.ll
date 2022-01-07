; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shld_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_shld_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32, i32)* @shld_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shld_long(%struct.x86emu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.x86emu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %71

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = srem i32 %15, 32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 32, %24
  %26 = lshr i32 %23, %25
  %27 = or i32 %22, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub i32 32, %29
  %31 = shl i32 1, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @F_CF, align 4
  %35 = call i32 @CONDITIONAL_SET_FLAG(i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @F_ZF, align 4
  %40 = call i32 @CONDITIONAL_SET_FLAG(i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, -2147483648
  %43 = load i32, i32* @F_SF, align 4
  %44 = call i32 @CONDITIONAL_SET_FLAG(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @PARITY(i32 %46)
  %48 = load i32, i32* @F_PF, align 4
  %49 = call i32 @CONDITIONAL_SET_FLAG(i32 %47, i32 %48)
  br label %52

50:                                               ; preds = %14
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %19
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, -2147483648
  %58 = icmp eq i32 %57, -2147483648
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @F_CF, align 4
  %61 = call i64 @ACCESS_FLAG(i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = xor i32 %59, %63
  %65 = load i32, i32* @F_OF, align 4
  %66 = call i32 @CONDITIONAL_SET_FLAG(i32 %64, i32 %65)
  br label %70

67:                                               ; preds = %52
  %68 = load i32, i32* @F_OF, align 4
  %69 = call i32 @CLEAR_FLAG(i32 %68)
  br label %70

70:                                               ; preds = %67, %55
  br label %87

71:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = shl i32 %72, %74
  %76 = and i32 %75, -2147483648
  %77 = load i32, i32* @F_CF, align 4
  %78 = call i32 @CONDITIONAL_SET_FLAG(i32 %76, i32 %77)
  %79 = load i32, i32* @F_OF, align 4
  %80 = call i32 @CLEAR_FLAG(i32 %79)
  %81 = load i32, i32* @F_SF, align 4
  %82 = call i32 @CLEAR_FLAG(i32 %81)
  %83 = load i32, i32* @F_PF, align 4
  %84 = call i32 @SET_FLAG(i32 %83)
  %85 = load i32, i32* @F_ZF, align 4
  %86 = call i32 @SET_FLAG(i32 %85)
  br label %87

87:                                               ; preds = %71, %70
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
