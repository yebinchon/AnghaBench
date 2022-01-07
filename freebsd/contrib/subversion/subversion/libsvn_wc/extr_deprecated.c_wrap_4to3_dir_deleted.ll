; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_dir_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_dir_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* (i32*, i32*, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*, i32*)* @wrap_4to3_dir_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_4to3_dir_deleted(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.diff_callbacks3_wrapper_baton*
  store %struct.diff_callbacks3_wrapper_baton* %14, %struct.diff_callbacks3_wrapper_baton** %11, align 8
  %15 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %11, align 8
  %16 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %11, align 8
  %19 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_dirent_join(i32 %20, i8* %21, i32* %22)
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @svn_wc__adm_retrieve_internal2(i32 %17, i32 %23, i32* %24)
  store i32* %25, i32** %12, align 8
  %26 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %11, align 8
  %27 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32* (i32*, i32*, i32*, i32, i32)*, i32* (i32*, i32*, i32*, i32, i32)** %29, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %11, align 8
  %35 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @svn_dirent_join(i32 %36, i8* %37, i32* %38)
  %40 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %11, align 8
  %41 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32* %30(i32* %31, i32* %32, i32* %33, i32 %39, i32 %42)
  ret i32* %43
}

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
