; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_build_keywords.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_build_keywords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32* }

@SVN_KEYWORD_REVISION_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_DATE_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_AUTHOR_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_URL_LONG = common dso_local global i32 0, align 4
@SVN_KEYWORD_ID = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_build_keywords(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @svn_subst_build_keywords2(i32** %15, i8* %17, i8* %18, i8* %19, i32 %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* @SVN_KEYWORD_REVISION_LONG, align 4
  %27 = call i32* @svn_hash_gets(i32* %25, i32 %26)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32*, i32** %16, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %30, %7
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* @SVN_KEYWORD_DATE_LONG, align 4
  %37 = call i32* @svn_hash_gets(i32* %35, i32 %36)
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32*, i32** %16, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @SVN_KEYWORD_AUTHOR_LONG, align 4
  %47 = call i32* @svn_hash_gets(i32* %45, i32 %46)
  store i32* %47, i32** %16, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* @SVN_KEYWORD_URL_LONG, align 4
  %57 = call i32* @svn_hash_gets(i32* %55, i32 %56)
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32*, i32** %16, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* @SVN_KEYWORD_ID, align 4
  %67 = call i32* @svn_hash_gets(i32* %65, i32 %66)
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32*, i32** %16, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_subst_build_keywords2(i32**, i8*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
