; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_fill_copyfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_fill_copyfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8* }

@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8**, i32*, i8**, i32*, %struct.TYPE_3__*, i32 (i8**, i32*, i8*, i8*, i32*)*, i8*, i8*, i32*, i32*)* @fill_copyfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fill_copyfrom(i32** %0, i8** %1, i32* %2, i8** %3, i32* %4, %struct.TYPE_3__* %5, i32 (i8**, i32*, i8*, i8*, i32*)* %6, i8* %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32 (i8**, i32*, i8*, i8*, i32*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32** %0, i32*** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i32* %4, i32** %16, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %17, align 8
  store i32 (i8**, i32*, i8*, i8*, i32*)* %6, i32 (i8**, i32*, i8*, i8*, i32*)** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %11
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %16, align 8
  %33 = load i8*, i8** %20, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = call i32 @svn_fs_copied_from(i32* %29, i8** %31, i32* %32, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %27, %11
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %13, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %13, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %83

52:                                               ; preds = %40
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @SVN_IS_VALID_REVNUM(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load i32**, i32*** %12, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @svn_fs_root_fs(i32* %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %21, align 8
  %64 = call i32 @svn_fs_revision_root(i32** %58, i32 %60, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32 (i8**, i32*, i8*, i8*, i32*)*, i32 (i8**, i32*, i8*, i8*, i32*)** %18, align 8
  %67 = icmp ne i32 (i8**, i32*, i8*, i8*, i32*)* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = load i32 (i8**, i32*, i8*, i8*, i32*)*, i32 (i8**, i32*, i8*, i8*, i32*)** %18, align 8
  %70 = load i8**, i8*** %15, align 8
  %71 = load i32**, i32*** %12, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i8**, i8*** %13, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = call i32 %69(i8** %70, i32* %72, i8* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %82

79:                                               ; preds = %57
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load i8**, i8*** %15, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %79, %68
  br label %85

83:                                               ; preds = %52, %40
  %84 = load i32**, i32*** %12, align 8
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
