; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_comp.c___res_hnok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_comp.c___res_hnok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_hnok(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @PERIOD, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  %10 = load i8, i8* %8, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %55, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @periodchar(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %55

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @periodchar(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @borderchar(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %59

33:                                               ; preds = %28
  br label %54

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @periodchar(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @borderchar(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %59

46:                                               ; preds = %41
  br label %53

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @middlechar(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %59

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %5, align 4
  br label %12

58:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %51, %45, %32
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @periodchar(i32) #1

declare dso_local i32 @borderchar(i32) #1

declare dso_local i32 @middlechar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
