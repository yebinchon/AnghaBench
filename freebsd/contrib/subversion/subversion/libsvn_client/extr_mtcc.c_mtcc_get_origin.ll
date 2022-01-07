; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_mtcc_get_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_mtcc_get_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No origin found for node at '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32, %struct.TYPE_3__*, i32*, i32*)* @mtcc_get_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mtcc_get_origin(i8** %0, i32* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i8**, i8*** %9, align 8
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @get_origin(i32* %16, i8** %21, i32* %22, i32 %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i8**, i8*** %9, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @apr_pstrdup(i32* %38, i8* %39)
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  br label %55

46:                                               ; preds = %34, %7
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %11, align 8
  %53 = call i32* @svn_error_createf(i32 %50, i32* null, i32 %51, i8* %52)
  store i32* %53, i32** %8, align 8
  br label %57

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %8, align 8
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32*, i32** %8, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_origin(i32*, i8**, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
