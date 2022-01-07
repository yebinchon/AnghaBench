; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.edit_baton*, i64, i32 }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i8*, i32*, i32, i32*, i32, %struct.TYPE_2__*, i32, i32)* }
%struct.file_baton = type { i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.dir_baton*
  store %struct.dir_baton* %18, %struct.dir_baton** %14, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 1
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %15, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.file_baton* @make_file_baton(i8* %22, %struct.dir_baton* %23, i32 %24, i32 %27)
  store %struct.file_baton* %28, %struct.file_baton** %16, align 8
  %29 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %30 = bitcast %struct.file_baton* %29 to i8*
  %31 = load i8**, i8*** %13, align 8
  store i8* %30, i8** %31, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load i32, i32* @TRUE, align 4
  %38 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %39 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %7, align 8
  br label %86

41:                                               ; preds = %6
  %42 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %43 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %42, i32 0, i32 1
  %44 = load %struct.edit_baton*, %struct.edit_baton** %43, align 8
  %45 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %48 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %50 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %53 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @svn_diff__source_create(i32 %51, i32 %54)
  %56 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %57 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %59 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (i32*, i32*, i8*, i32*, i32, i32*, i32, %struct.TYPE_2__*, i32, i32)*, i32 (i32*, i32*, i8*, i32*, i32, i32*, i32, %struct.TYPE_2__*, i32, i32)** %61, align 8
  %63 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %64 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %63, i32 0, i32 3
  %65 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %66 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %65, i32 0, i32 2
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %69 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %72 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %75 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %78 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %81 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %62(i32* %64, i32* %66, i8* %67, i32* null, i32 %70, i32* null, i32 %73, %struct.TYPE_2__* %76, i32 %79, i32 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %7, align 8
  br label %86

86:                                               ; preds = %41, %36
  %87 = load i32*, i32** %7, align 8
  ret i32* %87
}

declare dso_local %struct.file_baton* @make_file_baton(i8*, %struct.dir_baton*, i32, i32) #1

declare dso_local i32 @svn_diff__source_create(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
