; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_fetch_base_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_fetch_base_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i32 }

@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@RESTRUCTURE_ADD = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)*, i8*, i32*, i32*)* @fetch_base_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_base_props(i32** %0, i32* %1, i8* %2, i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)* %3, i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call %struct.TYPE_3__* @svn_hash_gets(i32* %21, i8* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %15, align 8
  store i8* null, i8** %16, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32**, i32*** %8, align 8
  store i32* null, i32** %30, align 8
  br label %89

31:                                               ; preds = %7
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RESTRUCTURE_ADD, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %13, align 8
  %44 = call i32* @apr_hash_make(i32* %43)
  %45 = load i32**, i32*** %8, align 8
  store i32* %44, i32** %45, align 8
  br label %88

46:                                               ; preds = %37, %31
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %16, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %17, align 4
  br label %87

58:                                               ; preds = %46
  %59 = load i32*, i32** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i8* @find_enclosing_copy(i32* %59, i8* %60, i32* %61)
  store i8* %62, i8** %18, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load i32*, i32** %9, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = call %struct.TYPE_3__* @svn_hash_gets(i32* %66, i8* %67)
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %19, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i8* @svn_relpath_skip_ancestor(i8* %69, i8* %70)
  store i8* %71, i8** %20, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i8* @svn_relpath_join(i8* %74, i8* %75, i32* %76)
  store i8* %77, i8** %16, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %17, align 4
  br label %86

81:                                               ; preds = %58
  %82 = load i8*, i8** %10, align 8
  store i8* %82, i8** %16, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %81, %65
  br label %87

87:                                               ; preds = %86, %51
  br label %88

88:                                               ; preds = %87, %42
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i8*, i8** %16, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)*, i32 (i32*, i32**, i32*, i32*, i8*, i8*, i32, i32*, i32*)** %11, align 8
  %94 = load i32**, i32*** %8, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 %93(i32* null, i32** %94, i32* null, i32* null, i8* %95, i8* %96, i32 %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %92, %89
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @find_enclosing_copy(i32*, i8*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
