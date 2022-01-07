; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rcl_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rcl_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @rcl_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcl_byte(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.x86emu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = srem i32 %12, 9
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub i32 8, %17
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %21, %22
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub i32 %25, 1
  %27 = shl i32 1, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 9, %30
  %32 = ashr i32 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @F_CF, align 4
  %38 = call i64 @ACCESS_FLAG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %15
  %41 = load i32, i32* %8, align 4
  %42 = sub i32 %41, 1
  %43 = shl i32 1, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %40, %15
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @F_CF, align 4
  %49 = call i32 @CONDITIONAL_SET_FLAG(i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = lshr i32 %54, 6
  %56 = and i32 %55, 2
  %57 = add i32 %53, %56
  %58 = call i64 @XOR2(i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %52, %46
  %61 = phi i1 [ false, %46 ], [ %59, %52 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @F_OF, align 4
  %64 = call i32 @CONDITIONAL_SET_FLAG(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %3
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i64 @XOR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
