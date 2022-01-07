; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_aaa_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_aaa_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_AF = common dso_local global i32 0, align 4
@F_CF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86emu*, i32)* @aaa_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaa_word(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 15
  %8 = icmp sgt i32 %7, 9
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @F_AF, align 4
  %11 = call i64 @ACCESS_FLAG(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 6
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 256
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @F_AF, align 4
  %19 = call i32 @SET_FLAG(i32 %18)
  %20 = load i32, i32* @F_CF, align 4
  %21 = call i32 @SET_FLAG(i32 %20)
  br label %27

22:                                               ; preds = %9
  %23 = load i32, i32* @F_CF, align 4
  %24 = call i32 @CLEAR_FLAG(i32 %23)
  %25 = load i32, i32* @F_AF, align 4
  %26 = call i32 @CLEAR_FLAG(i32 %25)
  br label %27

27:                                               ; preds = %22, %13
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65295
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @F_SF, align 4
  %31 = call i32 @CLEAR_FLAG(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @F_ZF, align 4
  %36 = call i32 @CONDITIONAL_SET_FLAG(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = call i32 @PARITY(i32 %38)
  %40 = load i32, i32* @F_PF, align 4
  %41 = call i32 @CONDITIONAL_SET_FLAG(i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
