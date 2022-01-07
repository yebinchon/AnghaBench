; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rcr_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rcr_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @rcr_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcr_long(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
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
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 33
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @F_CF, align 4
  %23 = call i64 @ACCESS_FLAG(i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  br label %32

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = ashr i32 %27, %29
  %31 = and i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 32, %33
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 33, %46
  %48 = shl i32 %45, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %44, %32
  %52 = load i32, i32* @F_CF, align 4
  %53 = call i64 @ACCESS_FLAG(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 32, %56
  %58 = shl i32 1, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @F_CF, align 4
  %64 = call i32 @CONDITIONAL_SET_FLAG(i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 30
  %71 = and i32 %70, 2
  %72 = add nsw i32 %68, %71
  %73 = call i32 @XOR2(i32 %72)
  %74 = load i32, i32* @F_OF, align 4
  %75 = call i32 @CONDITIONAL_SET_FLAG(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %61
  br label %77

77:                                               ; preds = %76, %3
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
