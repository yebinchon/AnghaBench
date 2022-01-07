; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_2__*, i32, i32)* }
%struct.dir_baton = type { i32, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root(i8* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.edit_baton*
  store %struct.edit_baton* %12, %struct.edit_baton** %9, align 8
  %13 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.dir_baton* @make_dir_baton(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, %struct.edit_baton* %13, i32 %14, i32 %15, i32 %18)
  store %struct.dir_baton* %19, %struct.dir_baton** %10, align 8
  %20 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %21 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @svn_diff__source_create(i32 %22, i32 %25)
  %27 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %28 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %30 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @svn_diff__source_create(i32 %31, i32 %34)
  %36 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %37 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32*, i32*, i32*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_2__*, i32, i32)*, i32 (i32*, i32*, i32*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_2__*, i32, i32)** %41, align 8
  %43 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %44 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %43, i32 0, i32 5
  %45 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %46 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %45, i32 0, i32 4
  %47 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %48 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %47, i32 0, i32 3
  %49 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %50 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %53 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %56 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %59 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %62 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %42(i32* %44, i32* %46, i32* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %54, i32* null, i32* null, %struct.TYPE_2__* %57, i32 %60, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %67 = bitcast %struct.dir_baton* %66 to i8*
  %68 = load i8**, i8*** %8, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local %struct.dir_baton* @make_dir_baton(i8*, i32*, %struct.edit_baton*, i32, i32, i32) #1

declare dso_local i8* @svn_diff__source_create(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
