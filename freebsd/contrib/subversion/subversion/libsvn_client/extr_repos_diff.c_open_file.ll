; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i64, i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i8*, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)* }
%struct.file_baton = type { i32, i8*, i8*, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.dir_baton*, align 8
  %13 = alloca %struct.file_baton*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.dir_baton*
  store %struct.dir_baton* %16, %struct.dir_baton** %12, align 8
  %17 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %18 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %17, i32 0, i32 3
  %19 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  store %struct.edit_baton* %19, %struct.edit_baton** %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.file_baton* @make_file_baton(i8* %20, %struct.dir_baton* %21, i32 %22, i32 %25)
  store %struct.file_baton* %26, %struct.file_baton** %13, align 8
  %27 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %28 = bitcast %struct.file_baton* %27 to i8*
  %29 = load i8**, i8*** %11, align 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %31 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %37 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %6, align 8
  br label %92

39:                                               ; preds = %5
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %44 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %47 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @svn_diff__source_create(i32 %45, i32 %48)
  %50 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %51 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %53 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %56 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @svn_diff__source_create(i32 %54, i32 %57)
  %59 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %60 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %62 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (i32*, i32*, i8*, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)*, i32 (i32*, i32*, i8*, i8*, i8*, i32*, i32, %struct.TYPE_2__*, i32, i32)** %64, align 8
  %66 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %67 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %66, i32 0, i32 4
  %68 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %69 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %68, i32 0, i32 3
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %72 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %75 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %78 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %81 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %84 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %87 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %65(i32* %67, i32* %69, i8* %70, i8* %73, i8* %76, i32* null, i32 %79, %struct.TYPE_2__* %82, i32 %85, i32 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %6, align 8
  br label %92

92:                                               ; preds = %39, %34
  %93 = load i32*, i32** %6, align 8
  ret i32* %93
}

declare dso_local %struct.file_baton* @make_file_baton(i8*, %struct.dir_baton*, i32, i32) #1

declare dso_local i8* @svn_diff__source_create(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
