; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32, %struct.dump_edit_baton* }
%struct.dump_edit_baton = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
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
  %12 = alloca %struct.dump_edit_baton*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.file_baton*
  store %struct.file_baton* %15, %struct.file_baton** %11, align 8
  %16 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %17 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %16, i32 0, i32 3
  %18 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %17, align 8
  store %struct.dump_edit_baton* %18, %struct.dump_edit_baton** %12, align 8
  %19 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %12, align 8
  %20 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @svn_stream_from_aprfile2(i32 %21, i32 %22, i32* %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @svn_txdelta_to_svndiff3(i32* %25, i8** %26, i32* %27, i32 0, i32 %28, i32* %29)
  %31 = load i32, i32* @TRUE, align 4
  %32 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %33 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @apr_pstrdup(i32 %36, i8* %37)
  %39 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %40 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i32* @svn_stream_from_aprfile2(i32, i32, i32*) #1

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i8**, i32*, i32, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
