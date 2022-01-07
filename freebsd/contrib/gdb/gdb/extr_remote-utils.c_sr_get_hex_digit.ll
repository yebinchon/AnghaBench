; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_sr_get_hex_digit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_sr_get_hex_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Invalid hex digit from remote system.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_get_hex_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %1, %47
  %6 = call i32 (...) @sr_readchar()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 48
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 57
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 48
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %9, %5
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 65
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 70
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 65
  %24 = add nsw i32 %23, 10
  store i32 %24, i32* %2, align 4
  br label %48

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 97
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 102
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 97
  %34 = add nsw i32 %33, 10
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %35
  %42 = call i32 (...) @gr_expect_prompt()
  %43 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %5

48:                                               ; preds = %31, %21, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @sr_readchar(...) #1

declare dso_local i32 @gr_expect_prompt(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
