; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf_width.c_svn_utf_cstring_utf8_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf_width.c_svn_utf_cstring_utf8_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_utf_cstring_utf8_width(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @svn_utf__cstring_is_valid(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %98

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %92, %20
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  store i32 127, i32* %7, align 4
  br label %57

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 224
  %37 = icmp eq i32 %36, 192
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 2, i32* %6, align 4
  store i32 31, i32* %7, align 4
  br label %56

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 240
  %44 = icmp eq i32 %43, 224
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 3, i32* %6, align 4
  store i32 15, i32* %7, align 4
  br label %55

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, 248
  %51 = icmp eq i32 %50, 240
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 4, i32* %6, align 4
  store i32 7, i32* %7, align 4
  br label %54

53:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %98

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %45
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %79, %57
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %68, 6
  store i32 %69, i32* %5, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = and i32 %75, 63
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load i32, i32* %6, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @mk_wcwidth(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 -1, i32* %2, align 4
  br label %98

92:                                               ; preds = %82
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %21

96:                                               ; preds = %21
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %91, %53, %19, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @svn_utf__cstring_is_valid(i8*) #1

declare dso_local i32 @mk_wcwidth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
