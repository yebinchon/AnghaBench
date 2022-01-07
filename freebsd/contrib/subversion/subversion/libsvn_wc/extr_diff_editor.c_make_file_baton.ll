; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_make_file_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_make_file_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton_t = type { i32, i32*, i32, i32, i32, i32, %struct.dir_baton_t*, %struct.edit_baton_t* }
%struct.edit_baton_t = type { i32 }
%struct.dir_baton_t = type { i32, %struct.edit_baton_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_baton_t* (i8*, i32, %struct.dir_baton_t*, i32*)* @make_file_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_baton_t* @make_file_baton(i8* %0, i32 %1, %struct.dir_baton_t* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dir_baton_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton_t*, align 8
  %11 = alloca %struct.edit_baton_t*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dir_baton_t* %2, %struct.dir_baton_t** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32* @svn_pool_create(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call %struct.file_baton_t* @apr_pcalloc(i32* %14, i32 48)
  store %struct.file_baton_t* %15, %struct.file_baton_t** %10, align 8
  %16 = load %struct.dir_baton_t*, %struct.dir_baton_t** %7, align 8
  %17 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %16, i32 0, i32 1
  %18 = load %struct.edit_baton_t*, %struct.edit_baton_t** %17, align 8
  store %struct.edit_baton_t* %18, %struct.edit_baton_t** %11, align 8
  %19 = load %struct.edit_baton_t*, %struct.edit_baton_t** %11, align 8
  %20 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %21 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %20, i32 0, i32 7
  store %struct.edit_baton_t* %19, %struct.edit_baton_t** %21, align 8
  %22 = load %struct.dir_baton_t*, %struct.dir_baton_t** %7, align 8
  %23 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %24 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %23, i32 0, i32 6
  store %struct.dir_baton_t* %22, %struct.dir_baton_t** %24, align 8
  %25 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %26 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %25, i32 0, i32 6
  %27 = load %struct.dir_baton_t*, %struct.dir_baton_t** %26, align 8
  %28 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.edit_baton_t*, %struct.edit_baton_t** %11, align 8
  %32 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @svn_dirent_join(i32 %33, i8* %34, i32* %35)
  %37 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %38 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.edit_baton_t*, %struct.edit_baton_t** %11, align 8
  %40 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %43 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_dirent_skip_ancestor(i32 %41, i32 %44)
  %46 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %47 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %49 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @svn_dirent_basename(i32 %50, i32* null)
  %52 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %53 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %56 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %59 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @apr_array_make(i32* %60, i32 8, i32 4)
  %62 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  %63 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.file_baton_t*, %struct.file_baton_t** %10, align 8
  ret %struct.file_baton_t* %64
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.file_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i32, i32) #1

declare dso_local i32 @svn_dirent_basename(i32, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
