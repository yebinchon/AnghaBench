; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gets.c_ngets.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gets.c_ngets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngets(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %71, %2
  %10 = call i32 (...) @getchar()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %72

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 127
  switch i32 %16, label %50 [
    i32 10, label %17
    i32 13, label %17
    i32 8, label %20
    i32 127, label %20
    i32 18, label %31
    i32 21, label %47
    i32 23, label %47
  ]

17:                                               ; preds = %14, %14
  %18 = load i8*, i8** %6, align 8
  store i8 0, i8* %18, align 1
  %19 = call i32 @putchar(i32 10)
  br label %72

20:                                               ; preds = %14, %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ugt i8* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %26, i8** %6, align 8
  %27 = call i32 @putchar(i32 8)
  %28 = call i32 @putchar(i32 32)
  %29 = call i32 @putchar(i32 8)
  br label %30

30:                                               ; preds = %24, %20
  br label %71

31:                                               ; preds = %14
  %32 = call i32 @putchar(i32 10)
  %33 = load i8*, i8** %3, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %43, %31
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @putchar(i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %34

46:                                               ; preds = %34
  br label %71

47:                                               ; preds = %14, %14
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** %6, align 8
  %49 = call i32 @putchar(i32 10)
  br label %71

50:                                               ; preds = %14
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %53, %50
  %64 = load i32, i32* %5, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @putchar(i32 %68)
  br label %70

70:                                               ; preds = %63, %53
  br label %71

71:                                               ; preds = %70, %47, %46, %30
  br label %9

72:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
