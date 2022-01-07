; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32, i8*, i32*, i32*, i8**)* }

@svn_delta_noop_window_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.file_baton*, align 8
  %13 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.file_baton*
  store %struct.file_baton* %15, %struct.file_baton** %12, align 8
  %16 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %17 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %16, i32 0, i32 2
  %18 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  store %struct.edit_baton* %18, %struct.edit_baton** %13, align 8
  %19 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %20 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* @svn_delta_noop_window_handler, align 4
  %25 = load i32*, i32** %10, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i8**, i8*** %11, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %6, align 8
  br label %42

28:                                               ; preds = %5
  %29 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %30 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32* (i32, i8*, i32*, i32*, i8**)*, i32* (i32, i8*, i32*, i32*, i8**)** %32, align 8
  %34 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = call i32* %33(i32 %36, i8* %37, i32* %38, i32* %39, i8** %40)
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %28, %23
  %43 = load i32*, i32** %6, align 8
  ret i32* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
