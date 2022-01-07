; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* (i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32*, i32*, i8*, i32*)* @wrap_4to3_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_4to3_file_added(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i8* %8, i8* %9, i8* %10, i32 %11, i32* %12, i32* %13, i8* %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  store i32* %0, i32** %17, align 8
  store i32* %1, i32** %18, align 8
  store i32* %2, i32** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i8* %5, i8** %22, align 8
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i8* %8, i8** %25, align 8
  store i8* %9, i8** %26, align 8
  store i8* %10, i8** %27, align 8
  store i32 %11, i32* %28, align 4
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store i8* %14, i8** %31, align 8
  store i32* %15, i32** %32, align 8
  %36 = load i8*, i8** %31, align 8
  %37 = bitcast i8* %36 to %struct.diff_callbacks3_wrapper_baton*
  store %struct.diff_callbacks3_wrapper_baton* %37, %struct.diff_callbacks3_wrapper_baton** %33, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = load i32*, i32** %32, align 8
  %40 = call i8* @svn_relpath_dirname(i8* %38, i32* %39)
  store i8* %40, i8** %35, align 8
  %41 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %33, align 8
  %42 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %33, align 8
  %45 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %35, align 8
  %48 = load i32*, i32** %32, align 8
  %49 = call i32 @svn_dirent_join(i32 %46, i8* %47, i32* %48)
  %50 = load i32*, i32** %32, align 8
  %51 = call i32* @svn_wc__adm_retrieve_internal2(i32 %43, i32 %49, i32* %50)
  store i32* %51, i32** %34, align 8
  %52 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %33, align 8
  %53 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32* (i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i32)*, i32* (i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i32)** %55, align 8
  %57 = load i32*, i32** %34, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %33, align 8
  %62 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %20, align 8
  %65 = load i32*, i32** %32, align 8
  %66 = call i32 @svn_dirent_join(i32 %63, i8* %64, i32* %65)
  %67 = load i8*, i8** %21, align 8
  %68 = load i8*, i8** %22, align 8
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %24, align 4
  %71 = load i8*, i8** %25, align 8
  %72 = load i8*, i8** %26, align 8
  %73 = load i32*, i32** %29, align 8
  %74 = load i32*, i32** %30, align 8
  %75 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %33, align 8
  %76 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32* %56(i32* %57, i32* %58, i32* %59, i32* %60, i32 %66, i8* %67, i8* %68, i32 %69, i32 %70, i8* %71, i8* %72, i32* %73, i32* %74, i32 %77)
  ret i32* %78
}

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
