; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_vsscanf.c_final_ch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_vsscanf.c_final_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cUnknown = common dso_local global i32 0, align 4
@cChar = common dso_local global i32 0, align 4
@cError = common dso_local global i32 0, align 4
@cInt = common dso_local global i32 0, align 4
@cShort = common dso_local global i32 0, align 4
@cLong = common dso_local global i32 0, align 4
@cFloat = common dso_local global i32 0, align 4
@cDouble = common dso_local global i32 0, align 4
@cAssigned = common dso_local global i32 0, align 4
@cPointer = common dso_local global i32 0, align 4
@cString = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @final_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @final_ch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @cUnknown, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %58 [
    i32 99, label %8
    i32 100, label %16
    i32 105, label %16
    i32 88, label %16
    i32 120, label %16
    i32 69, label %25
    i32 101, label %25
    i32 102, label %25
    i32 103, label %25
    i32 110, label %34
    i32 112, label %42
    i32 115, label %50
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 128
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @cChar, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @cError, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  br label %58

16:                                               ; preds = %2, %2, %2, %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %24 [
    i32 128, label %18
    i32 129, label %20
    i32 130, label %22
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @cInt, align 4
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @cShort, align 4
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @cLong, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %22, %20, %18
  br label %58

25:                                               ; preds = %2, %2, %2, %2
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %29
    i32 130, label %31
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @cFloat, align 4
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @cError, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @cDouble, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %25, %31, %29, %27
  br label %58

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @cAssigned, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @cError, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %58

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @cPointer, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @cError, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %58

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @cString, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @cError, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %2, %57, %49, %41, %33, %24, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
