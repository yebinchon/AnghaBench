; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-st.c_get_hex_digit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-st.c_get_hex_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid hex digit from remote system.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_hex_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hex_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %1, %49
  %6 = load i32, i32* @timeout, align 4
  %7 = call i32 @readchar(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 48
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 57
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 48
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %10, %5
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 65
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 70
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 65
  %25 = add nsw i32 %24, 10
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 97
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 102
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 97
  %35 = add nsw i32 %34, 10
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %46

43:                                               ; preds = %39, %36
  %44 = call i32 @expect_prompt(i32 1)
  %45 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %5

50:                                               ; preds = %32, %22, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @expect_prompt(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
