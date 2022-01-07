; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_make_file_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_make_file_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32*, i32, i32, i32, i64, i32, %struct.edit_baton*, %struct.dir_baton*, i32*, i32 }
%struct.edit_baton = type { i32 }
%struct.dir_baton = type { %struct.edit_baton* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_baton* (%struct.dir_baton*, i8*, i32*)* @make_file_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_baton* @make_file_baton(%struct.dir_baton* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.dir_baton*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dir_baton*, align 8
  %8 = alloca %struct.edit_baton*, align 8
  %9 = alloca %struct.file_baton*, align 8
  store %struct.dir_baton* %0, %struct.dir_baton** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  store %struct.dir_baton* %10, %struct.dir_baton** %7, align 8
  %11 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %12 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %11, i32 0, i32 0
  %13 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  store %struct.edit_baton* %13, %struct.edit_baton** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.file_baton* @apr_pcalloc(i32* %14, i32 72)
  store %struct.file_baton* %15, %struct.file_baton** %9, align 8
  %16 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @svn_dirent_join(i32 %18, i8* %19, i32* %20)
  %22 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %23 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %25 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @svn_dirent_basename(i32 %26, i32* null)
  %28 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %29 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %32 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %31, i32 0, i32 8
  store i32* %30, i32** %32, align 8
  %33 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %34 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 7
  store %struct.dir_baton* %33, %struct.dir_baton** %35, align 8
  %36 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %37 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %38 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %37, i32 0, i32 6
  store %struct.edit_baton* %36, %struct.edit_baton** %38, align 8
  %39 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %40 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %41 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %43 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @find_dir_repos_relpath(%struct.dir_baton* %44, i32* %45)
  %47 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %48 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @svn_relpath_join(i32 %46, i32 %49, i32* %50)
  %52 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %53 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @svn_node_file, align 4
  %55 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %56 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %58 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  ret %struct.file_baton* %59
}

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i32, i32*) #1

declare dso_local i32 @svn_relpath_join(i32, i32, i32*) #1

declare dso_local i32 @find_dir_repos_relpath(%struct.dir_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
