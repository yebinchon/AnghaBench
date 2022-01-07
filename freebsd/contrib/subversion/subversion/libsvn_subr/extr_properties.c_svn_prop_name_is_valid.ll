; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_prop_name_is_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_prop_name_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_CTYPE_ASCII_COLON = common dso_local global i8 0, align 1
@SVN_CTYPE_ASCII_UNDERSCORE = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_CTYPE_ASCII_MINUS = common dso_local global i8 0, align 1
@SVN_CTYPE_ASCII_DOT = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_prop_name_is_valid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = call i64 @svn_ctype_isalpha(i8 signext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @SVN_CTYPE_ASCII_COLON, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @SVN_CTYPE_ASCII_UNDERSCORE, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %17, %10, %1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %69, %26
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @svn_ctype_isalnum(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @SVN_CTYPE_ASCII_MINUS, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %68, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @SVN_CTYPE_ASCII_DOT, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @SVN_CTYPE_ASCII_COLON, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @SVN_CTYPE_ASCII_UNDERSCORE, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %59, %52, %45, %38, %33
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %29

72:                                               ; preds = %29
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %66, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @svn_ctype_isalpha(i8 signext) #1

declare dso_local i64 @svn_ctype_isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
