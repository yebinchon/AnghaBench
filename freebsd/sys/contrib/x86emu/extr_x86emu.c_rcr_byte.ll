; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rcr_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_rcr_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_CF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32, i32)* @rcr_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcr_byte(%struct.x86emu* %0, i32 %1, i32 %2) #0 {
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
  %14 = srem i32 %13, 9
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %73

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
  %34 = sub nsw i32 8, %33
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 9, %43
  %45 = shl i32 %42, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @F_CF, align 4
  %49 = call i64 @ACCESS_FLAG(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 8, %52
  %54 = shl i32 1, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %32
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @F_CF, align 4
  %60 = call i32 @CONDITIONAL_SET_FLAG(i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 6
  %67 = and i32 %66, 2
  %68 = add nsw i32 %64, %67
  %69 = call i32 @XOR2(i32 %68)
  %70 = load i32, i32* @F_OF, align 4
  %71 = call i32 @CONDITIONAL_SET_FLAG(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %57
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i32, i32* %7, align 4
  ret i32 %74
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
