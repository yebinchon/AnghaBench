; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_binary_diff.c_svn_diff__base85_decode_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_binary_diff.c_svn_diff__base85_decode_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_DIFF_UNEXPECTED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unexpected base85 line length\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_diff__base85_decode_line(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 3
  %19 = sdiv i32 %18, 4
  %20 = mul nsw i32 %19, 5
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @SVN_ERR_DIFF_UNEXPECTED_DATA, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @svn_error_create(i32 %25, i32* null, i32 %26)
  store i32* %27, i32** %6, align 8
  br label %87

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @base85_value(i32* %16, i8 signext %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = mul i32 %44, 85
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  store i32 24, i32* %15, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = lshr i32 %61, %62
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  br label %70

70:                                               ; preds = %60, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %74, 8
  store i32 %75, i32* %15, align 4
  br label %53

76:                                               ; preds = %53
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 5
  store i8* %78, i8** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 5
  store i32 %80, i32* %10, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 4
  store i32 %84, i32* %8, align 4
  br label %29

85:                                               ; preds = %29
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %6, align 8
  br label %87

87:                                               ; preds = %85, %24
  %88 = load i32*, i32** %6, align 8
  ret i32* %88
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @base85_value(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
