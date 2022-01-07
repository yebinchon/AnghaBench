; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_outputarr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_outputarr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32*)* @outputarr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outputarr(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = trunc i64 %16 to i32
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %25, %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %20, 11
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  store i8 32, i8* %23, align 1
  br label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %11, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %76, %28
  %32 = load i64, i64* %11, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %31
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  store i8 32, i8* %40, align 1
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32*, i32** %8, align 8
  %44 = call i8* @lfptoms(i32* %43, i32 2)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ugt i64 %47, 7
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 7
  store i8 0, i8* %51, align 1
  store i64 7, i64* %12, align 8
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %56, %52
  %54 = load i64, i64* %12, align 8
  %55 = icmp ult i64 %54, 7
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  store i8 32, i8* %57, align 1
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %53

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  %70 = load i8, i8* %68, align 1
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  store i8 %70, i8* %71, align 1
  br label %62

73:                                               ; preds = %62
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %11, align 8
  br label %31

79:                                               ; preds = %31
  %80 = load i8*, i8** %9, align 8
  store i8 0, i8* %80, align 1
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %84 = call i32 @output(i32* %81, i8* %82, i8* %83)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @lfptoms(i32*, i32) #1

declare dso_local i32 @output(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
