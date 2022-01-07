; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tabs.c_do_tabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tabs.c_do_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_cols = common dso_local global i32 0, align 4
@set_tab = common dso_local global i32 0, align 4
@putch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tabs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = call i32 @putchar(i8 signext 13)
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %2, align 8
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @max_cols, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = call i32 @putchar(i8 signext 32)
  br label %16

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @max_cols, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @set_tab, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @tparm(i32 %34, i32 %35)
  %37 = load i32, i32* @putch, align 4
  %38 = call i32 @tputs(i32 %36, i32 1, i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %29
  br label %42

41:                                               ; preds = %33
  br label %6

42:                                               ; preds = %40, %6
  %43 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @tparm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
