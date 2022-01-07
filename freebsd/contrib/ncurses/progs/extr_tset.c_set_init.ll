; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_set_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@isreset = common dso_local global i64 0, align 8
@reset_1string = common dso_local global i8* null, align 8
@outc = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@reset_2string = common dso_local global i8* null, align 8
@reset_file = common dso_local global i8* null, align 8
@init_file = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@ONLRET = common dso_local global i32 0, align 4
@PC = common dso_local global i8 0, align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@oldmode = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@pad_char = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @set_tabs()
  store i32 %3, i32* %2, align 4
  %4 = load i64, i64* @isreset, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %0
  %7 = load i8*, i8** @reset_1string, align 8
  store i8* %7, i8** %1, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i8*, i8** %1, align 8
  %11 = load i32, i32* @outc, align 4
  %12 = call i32 @tputs(i8* %10, i32 0, i32 %11)
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i8*, i8** @reset_2string, align 8
  store i8* %15, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* @outc, align 4
  %20 = call i32 @tputs(i8* %18, i32 0, i32 %19)
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i8*, i8** @reset_file, align 8
  store i8* %23, i8** %1, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** @init_file, align 8
  store i8* %26, i8** %1, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @cat(i8* %29)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %0
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @putc(i8 signext 13, i32 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fflush(i32 %39)
  %41 = call i32 @napms(i32 1000)
  br label %42

42:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @set_tabs(...) #1

declare dso_local i32 @tputs(i8*, i32, i32) #1

declare dso_local i32 @cat(i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @napms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
