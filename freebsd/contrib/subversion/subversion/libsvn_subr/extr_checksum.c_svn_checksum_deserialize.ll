; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_svn_checksum_deserialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_svn_checksum_deserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ckind_str = common dso_local global i8** null, align 8
@SVN_ERR_BAD_CHECKSUM_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid prefix in checksum '%s'\00", align 1
@svn_checksum_md5 = common dso_local global i64 0, align 8
@svn_checksum_fnv1a_32x4 = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown checksum kind in '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_checksum_deserialize(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8**, i8*** @ckind_str, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* %12, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_PARSE, align 4
  %23 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @svn_error_createf(i32 %22, i32* null, i8* %23, i8* %24)
  store i32* %25, i32** %5, align 8
  br label %60

26:                                               ; preds = %4
  %27 = load i64, i64* @svn_checksum_md5, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %53, %26
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @svn_checksum_fnv1a_32x4, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i8**, i8*** @ckind_str, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_checksum_parse_hex(i32** %11, i64 %42, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32**, i32*** %6, align 8
  store i32* %49, i32** %50, align 8
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %5, align 8
  br label %60

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %28

56:                                               ; preds = %28
  %57 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32* @svn_error_createf(i32 %57, i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %56, %41, %21
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
