; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_expand_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_expand_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_expand_number(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strtoq(i8* %9, i8** %6, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @tolower(i8 zeroext %12)
  switch i32 %13, label %23 [
    i32 101, label %14
    i32 112, label %15
    i32 116, label %16
    i32 103, label %17
    i32 109, label %18
    i32 107, label %19
    i32 98, label %20
    i32 0, label %20
  ]

14:                                               ; preds = %2
  store i32 60, i32* %8, align 4
  br label %24

15:                                               ; preds = %2
  store i32 50, i32* %8, align 4
  br label %24

16:                                               ; preds = %2
  store i32 40, i32* %8, align 4
  br label %24

17:                                               ; preds = %2
  store i32 30, i32* %8, align 4
  br label %24

18:                                               ; preds = %2
  store i32 20, i32* %8, align 4
  br label %24

19:                                               ; preds = %2
  store i32 10, i32* %8, align 4
  br label %24

20:                                               ; preds = %2, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

24:                                               ; preds = %19, %18, %17, %16, %15, %14
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %34, %35
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %32, %23, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @strtoq(i8*, i8**, i32) #1

declare dso_local i32 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
