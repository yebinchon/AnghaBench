; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_key_is_command_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_key_is_command_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_NPAGE = common dso_local global i32 0, align 4
@KEY_PPAGE = common dso_local global i32 0, align 4
@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@KEY_SF = common dso_local global i32 0, align 4
@KEY_SR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_is_command_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @KEY_NPAGE, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @KEY_PPAGE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @KEY_LEFT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @KEY_RIGHT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @KEY_UP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @KEY_DOWN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @KEY_SF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @KEY_SR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @key_is_start_sequence(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %34, %30, %26, %22, %18, %14, %10, %6, %1
  %42 = phi i1 [ true, %34 ], [ true, %30 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i64 @key_is_start_sequence(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
