; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32, i32, i32 }
%struct.handler_baton = type { i32, i32, i32, i32* }

@svn_io_file_del_none = common dso_local global i32 0, align 4
@window_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.file_baton*, align 8
  %12 = alloca %struct.handler_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.file_baton*
  store %struct.file_baton* %14, %struct.file_baton** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.handler_baton* @apr_palloc(i32* %15, i32 24)
  store %struct.handler_baton* %16, %struct.handler_baton** %12, align 8
  %17 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %18 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %17, i32 0, i32 1
  %19 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %20 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %19, i32 0, i32 2
  %21 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %22 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @svn_dirent_dirname(i32 %23, i32* %24)
  %26 = load i32, i32* @svn_io_file_del_none, align 4
  %27 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %31 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @svn_stream_open_unique(i32* %18, i32* %20, i32 %25, i32 %26, i32 %29, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.handler_baton*, %struct.handler_baton** %12, align 8
  %37 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %39 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.handler_baton*, %struct.handler_baton** %12, align 8
  %42 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @svn_stream_empty(i32* %43)
  %45 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %46 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @svn_stream_disown(i32 %47, i32* %48)
  %50 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %51 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.handler_baton*, %struct.handler_baton** %12, align 8
  %55 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %54, i32 0, i32 1
  %56 = load %struct.handler_baton*, %struct.handler_baton** %12, align 8
  %57 = getelementptr inbounds %struct.handler_baton, %struct.handler_baton* %56, i32 0, i32 0
  %58 = call i32 @svn_txdelta_apply(i32 %44, i32 %49, i32 %52, i32* null, i32* %53, i32* %55, i32* %57)
  %59 = load %struct.handler_baton*, %struct.handler_baton** %12, align 8
  %60 = bitcast %struct.handler_baton* %59 to i8*
  %61 = load i8**, i8*** %10, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @window_handler, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local %struct.handler_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @svn_dirent_dirname(i32, i32*) #1

declare dso_local i32 @svn_txdelta_apply(i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_stream_disown(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
