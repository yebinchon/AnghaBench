; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_filesizes_different_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_filesizes_different_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@APR_FINFO_MIN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_filesizes_different_p(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @cstring_from_utf8(i8** %13, i8* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @cstring_from_utf8(i8** %14, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i8*, i8** %13, align 8
  %24 = load i32, i32* @APR_FINFO_MIN, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @apr_stat(%struct.TYPE_3__* %10, i8* %23, i32 %24, i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %5, align 8
  br label %58

33:                                               ; preds = %4
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* @APR_FINFO_MIN, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @apr_stat(%struct.TYPE_3__* %11, i8* %34, i32 %35, i32* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %5, align 8
  br label %58

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %56, %40, %29
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_stat(%struct.TYPE_3__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
