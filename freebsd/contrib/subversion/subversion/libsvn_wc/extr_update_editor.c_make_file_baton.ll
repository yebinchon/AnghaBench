; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_make_file_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_make_file_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i8*, %struct.dir_baton*, i32, i8*, i8*, i32, i32, i32, i32, i32*, i32, i32, i8* }
%struct.dir_baton = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.file_baton**, %struct.dir_baton*, i8*, i32, i32*)* @make_file_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_file_baton(%struct.file_baton** %0, %struct.dir_baton* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.file_baton**, align 8
  %7 = alloca %struct.dir_baton*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.file_baton*, align 8
  store %struct.file_baton** %0, %struct.file_baton*** %6, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %14 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @svn_pool_create(i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.file_baton* @apr_pcalloc(i32* %17, i32 88)
  store %struct.file_baton* %18, %struct.file_baton** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @SVN_ERR_ASSERT(i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @svn_dirent_basename(i8* %21, i32* %22)
  %24 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %25 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %27 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 13
  store i8* %26, i8** %28, align 8
  %29 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %30 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %29, i32 0, i32 12
  %31 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %32 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @path_join_under_root(i32* %30, i32 %33, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 10
  store i32* %40, i32** %42, align 8
  %43 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %44 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %47 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @apr_array_make(i32* %48, i32 1, i32 4)
  %50 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %51 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %53 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %56 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %59 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %62 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @FALSE, align 8
  %64 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %65 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %67 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %70 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %72 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %5
  %76 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %77 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %75, %5
  %81 = phi i1 [ true, %5 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %84 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %86 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %87 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %86, i32 0, i32 2
  store %struct.dir_baton* %85, %struct.dir_baton** %87, align 8
  %88 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %89 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %90 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %92 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %96 = load %struct.file_baton**, %struct.file_baton*** %6, align 8
  store %struct.file_baton* %95, %struct.file_baton** %96, align 8
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @path_join_under_root(i32*, i32, i32, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
