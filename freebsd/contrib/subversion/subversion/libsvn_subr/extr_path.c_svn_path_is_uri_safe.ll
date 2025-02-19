; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_is_uri_safe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_is_uri_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_uri__char_validity = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_path_is_uri_safe(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @skip_uri_scheme(i8* %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %72

18:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @svn_ctype_isxdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 2
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @svn_ctype_isxdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 2
  store i64 %50, i64* %4, align 8
  br label %67

51:                                               ; preds = %40, %32
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %2, align 4
  br label %72

53:                                               ; preds = %25
  %54 = load i32*, i32** @svn_uri__char_validity, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %19

70:                                               ; preds = %19
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %63, %51, %16, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @skip_uri_scheme(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @svn_ctype_isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
