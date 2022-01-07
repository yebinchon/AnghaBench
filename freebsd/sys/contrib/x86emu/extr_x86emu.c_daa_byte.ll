; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_daa_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_daa_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_AF = common dso_local global i32 0, align 4
@F_CF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32)* @daa_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daa_byte(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 15
  %9 = icmp sgt i32 %8, 9
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @F_AF, align 4
  %12 = call i64 @ACCESS_FLAG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 6
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @F_AF, align 4
  %18 = call i32 @SET_FLAG(i32 %17)
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 159
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @F_CF, align 4
  %24 = call i64 @ACCESS_FLAG(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 96
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @F_CF, align 4
  %30 = call i32 @SET_FLAG(i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 128
  %34 = load i32, i32* @F_SF, align 4
  %35 = call i32 @CONDITIONAL_SET_FLAG(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @F_ZF, align 4
  %41 = call i32 @CONDITIONAL_SET_FLAG(i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @PARITY(i32 %43)
  %45 = load i32, i32* @F_PF, align 4
  %46 = call i32 @CONDITIONAL_SET_FLAG(i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
