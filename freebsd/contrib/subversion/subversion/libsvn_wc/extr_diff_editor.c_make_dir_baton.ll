; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, i32, i32*, i32, i32, %struct.edit_baton_t*, i32, i32, i32, %struct.dir_baton_t* }
%struct.edit_baton_t = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_baton_t* (i8*, %struct.dir_baton_t*, %struct.edit_baton_t*, i32, i32, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_baton_t* @make_dir_baton(i8* %0, %struct.dir_baton_t* %1, %struct.edit_baton_t* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dir_baton_t*, align 8
  %9 = alloca %struct.edit_baton_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dir_baton_t*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.dir_baton_t* %1, %struct.dir_baton_t** %8, align 8
  store %struct.edit_baton_t* %2, %struct.edit_baton_t** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.dir_baton_t*, %struct.dir_baton_t** %8, align 8
  %16 = icmp ne %struct.dir_baton_t* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load %struct.dir_baton_t*, %struct.dir_baton_t** %8, align 8
  %19 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  br label %25

21:                                               ; preds = %6
  %22 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %23 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32* [ %20, %17 ], [ %24, %21 ]
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call %struct.dir_baton_t* @apr_pcalloc(i32* %28, i32 64)
  store %struct.dir_baton_t* %29, %struct.dir_baton_t** %14, align 8
  %30 = load %struct.dir_baton_t*, %struct.dir_baton_t** %8, align 8
  %31 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %32 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %31, i32 0, i32 10
  store %struct.dir_baton_t* %30, %struct.dir_baton_t** %32, align 8
  %33 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %34 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_dirent_join(i32 %35, i8* %36, i32* %37)
  %39 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %40 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %42 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %45 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @svn_dirent_skip_ancestor(i32 %43, i32 %46)
  %48 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %49 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %51 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @svn_dirent_basename(i32 %52, i32* null)
  %54 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %55 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %57 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %58 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %57, i32 0, i32 6
  store %struct.edit_baton_t* %56, %struct.edit_baton_t** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %61 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %64 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %67 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @apr_array_make(i32* %68, i32 8, i32 4)
  %70 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %71 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @apr_hash_make(i32* %72)
  %74 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %75 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dir_baton_t*, %struct.dir_baton_t** %8, align 8
  %77 = icmp ne %struct.dir_baton_t* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %25
  %79 = load %struct.dir_baton_t*, %struct.dir_baton_t** %8, align 8
  %80 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %25
  %84 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %85 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  ret %struct.dir_baton_t* %86
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.dir_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i32, i32) #1

declare dso_local i32 @svn_dirent_basename(i32, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
