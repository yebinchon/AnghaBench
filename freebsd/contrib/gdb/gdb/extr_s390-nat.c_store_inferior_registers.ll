; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S390_NUM_REGS = common dso_local global i32 0, align 4
@regmap_gregset = common dso_local global i32* null, align 8
@regmap_fpregset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @s390_inferior_tid()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @S390_NUM_REGS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32*, i32** @regmap_gregset, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @store_regs(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %11, %7
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @S390_NUM_REGS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32*, i32** @regmap_fpregset, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %29, %22
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @store_fpregs(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29, %25
  ret void
}

declare dso_local i32 @s390_inferior_tid(...) #1

declare dso_local i32 @store_regs(i32, i32) #1

declare dso_local i32 @store_fpregs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
