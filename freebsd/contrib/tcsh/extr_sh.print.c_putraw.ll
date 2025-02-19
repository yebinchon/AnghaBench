; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.print.c_putraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.print.c_putraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@haderr = common dso_local global i64 0, align 8
@didfds = common dso_local global i64 0, align 8
@is2atty = common dso_local global i64 0, align 8
@isdiagatty = common dso_local global i64 0, align 8
@is1atty = common dso_local global i64 0, align 8
@isoutatty = common dso_local global i64 0, align 8
@Tty_eight_bit = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@STANDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putraw(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @haderr, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i64, i64* @didfds, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, i64* @is2atty, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %46

11:                                               ; preds = %5
  %12 = load i64, i64* @isdiagatty, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %46

14:                                               ; preds = %1
  %15 = load i64, i64* @didfds, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* @is1atty, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %46

20:                                               ; preds = %14
  %21 = load i64, i64* @isoutatty, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20, %17, %11, %8
  %24 = load i32, i32* @Tty_eight_bit, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @ed_set_tty_eight_bit()
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* @Tty_eight_bit, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @META, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @META, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @STANDOUT, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %31, %28
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @SetAttributes(i32 %44)
  br label %46

46:                                               ; preds = %43, %20, %17, %11, %8
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @putpure(i32 %47)
  ret i32 %48
}

declare dso_local i32 @ed_set_tty_eight_bit(...) #1

declare dso_local i32 @SetAttributes(i32) #1

declare dso_local i32 @putpure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
