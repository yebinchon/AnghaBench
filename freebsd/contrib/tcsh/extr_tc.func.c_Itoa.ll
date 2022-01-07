; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_Itoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_Itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Itoa(i32 %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [11 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %12, align 4
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 10, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 10, i64* %5, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %47, %26
  %29 = load i32, i32* %11, align 4
  %30 = urem i32 %29, 10
  %31 = add i32 %30, 48
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i32, i32* %11, align 4
  %36 = udiv i32 %35, 10
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %5, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ true, %40 ], [ %46, %44 ]
  br i1 %48, label %28, label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 2
  %56 = mul i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = call i8* @xmalloc(i32 %57)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %10, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  store i8 45, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %49
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %69 = icmp ugt i8* %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  store i8 %78, i8* %79, align 1
  br label %66

81:                                               ; preds = %66
  %82 = load i8*, i8** %10, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %8, align 8
  ret i8* %83
}

declare dso_local i8* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
