; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_interactive_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_interactive_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fail_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"press any key to interrupt reboot in %d seconds\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @interactive_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interactive_interrupt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @getsecs()
  store i32 %7, i32* %5, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @fail_timeout, align 4
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* @fail_timeout, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %43

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @fail_timeout, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sub nsw i32 %23, %26
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %18
  %31 = call i64 (...) @ischar()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %43

34:                                               ; preds = %30
  %35 = call i32 (...) @getsecs()
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @fail_timeout, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %18, label %42

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33, %16, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @getsecs(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ischar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
