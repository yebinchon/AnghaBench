; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_check_non_ascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_check_non_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Safe data '%s' was followed by non-ASCII byte %d: unable to convert to/from UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Non-ASCII character (code %d) detected, and unable to convert to/from UTF-8\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i32*)* @check_non_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_non_ascii(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %61, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @svn_ctype_isascii(i8 signext %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @svn_ctype_isspace(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @svn_ctype_iscntrl(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24, %14
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @apr_pstrndup(i32* %37, i8* %38, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* @APR_EINVAL, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %46, i32* null, i32 %47, i8* %48, i32 %51)
  store i32* %52, i32** %4, align 8
  br label %68

53:                                               ; preds = %29
  %54 = load i32, i32* @APR_EINVAL, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %54, i32* null, i32 %55, i32 %58)
  store i32* %59, i32** %4, align 8
  br label %68

60:                                               ; preds = %24, %19
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %6, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %11

66:                                               ; preds = %11
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %66, %53, %36
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @svn_ctype_isascii(i8 signext) #1

declare dso_local i32 @svn_ctype_isspace(i8 signext) #1

declare dso_local i64 @svn_ctype_iscntrl(i8 signext) #1

declare dso_local i8* @apr_pstrndup(i32*, i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
