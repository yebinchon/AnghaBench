; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sar_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_sar_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @sar_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sar_word(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 32768
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = srem i32 %14, 16
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = sub i32 16, %23
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %28, 1
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @F_CF, align 4
  %39 = call i32 @CONDITIONAL_SET_FLAG(i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %22
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @F_ZF, align 4
  %53 = call i32 @CONDITIONAL_SET_FLAG(i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 32768
  %56 = load i32, i32* @F_SF, align 4
  %57 = call i32 @CONDITIONAL_SET_FLAG(i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @PARITY(i32 %59)
  %61 = load i32, i32* @F_PF, align 4
  %62 = call i32 @CONDITIONAL_SET_FLAG(i32 %60, i32 %61)
  br label %89

63:                                               ; preds = %19, %3
  %64 = load i32, i32* %7, align 4
  %65 = icmp uge i32 %64, 16
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  store i32 65535, i32* %8, align 4
  %70 = load i32, i32* @F_CF, align 4
  %71 = call i32 @SET_FLAG(i32 %70)
  %72 = load i32, i32* @F_ZF, align 4
  %73 = call i32 @CLEAR_FLAG(i32 %72)
  %74 = load i32, i32* @F_SF, align 4
  %75 = call i32 @SET_FLAG(i32 %74)
  %76 = load i32, i32* @F_PF, align 4
  %77 = call i32 @SET_FLAG(i32 %76)
  br label %87

78:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  %79 = load i32, i32* @F_CF, align 4
  %80 = call i32 @CLEAR_FLAG(i32 %79)
  %81 = load i32, i32* @F_ZF, align 4
  %82 = call i32 @SET_FLAG(i32 %81)
  %83 = load i32, i32* @F_SF, align 4
  %84 = call i32 @CLEAR_FLAG(i32 %83)
  %85 = load i32, i32* @F_PF, align 4
  %86 = call i32 @CLEAR_FLAG(i32 %85)
  br label %87

87:                                               ; preds = %78, %69
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88, %47
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
