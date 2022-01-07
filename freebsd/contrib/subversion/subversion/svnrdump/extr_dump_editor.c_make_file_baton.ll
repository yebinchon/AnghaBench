; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_make_file_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_make_file_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32*, i32, i8*, i8*, i32, i32*, i32 }
%struct.dir_baton = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_action_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_baton* (i8*, %struct.dir_baton*, i32*)* @make_file_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_baton* @make_file_baton(i8* %0, %struct.dir_baton* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dir_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call %struct.file_baton* @apr_pcalloc(i32* %8, i32 64)
  store %struct.file_baton* %9, %struct.file_baton** %7, align 8
  %10 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %11 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %14 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %17 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %16, i32 0, i32 7
  store i32* %15, i32** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @svn_relpath_canonicalize(i8* %18, i32* %19)
  %21 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %22 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @apr_hash_make(i32* %23)
  %25 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %26 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @apr_hash_make(i32* %27)
  %29 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %30 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %33 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %37 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %38 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @svn_node_action_change, align 4
  %40 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %41 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  ret %struct.file_baton* %42
}

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
