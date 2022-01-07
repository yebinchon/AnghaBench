; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_Cookedmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_Cookedmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tty_raw_mode = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@sigprocmask_cleanup = common dso_local global i32 0, align 4
@SHTTY = common dso_local global i32 0, align 4
@extty = common dso_local global i32 0, align 4
@EX_IO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cookedmode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @Tty_raw_mode, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %23

8:                                                ; preds = %0
  %9 = call i32 @sigemptyset(i32* %2)
  %10 = load i32, i32* @SIGINT, align 4
  %11 = call i32 @sigaddset(i32* %2, i32 %10)
  %12 = load i32, i32* @SIG_BLOCK, align 4
  %13 = call i32 @sigprocmask(i32 %12, i32* %2, i32* %3)
  %14 = load i32, i32* @sigprocmask_cleanup, align 4
  %15 = call i32 @cleanup_push(i32* %3, i32 %14)
  %16 = load i32, i32* @SHTTY, align 4
  %17 = call i32 @tty_setty(i32 %16, i32* @extty)
  store i32 %17, i32* %4, align 4
  %18 = call i32 @cleanup_until(i32* %3)
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %23

22:                                               ; preds = %8
  store i64 0, i64* @Tty_raw_mode, align 8
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %21, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @tty_setty(i32, i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
