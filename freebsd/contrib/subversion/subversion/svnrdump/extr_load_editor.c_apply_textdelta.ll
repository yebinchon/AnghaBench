; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.svn_delta_editor_t* }
%struct.svn_delta_editor_t = type { i32 (i32, i32, i32*, i32*, i8**)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8*)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.node_baton*, align 8
  %8 = alloca %struct.svn_delta_editor_t*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.node_baton*
  store %struct.node_baton* %11, %struct.node_baton** %7, align 8
  %12 = load %struct.node_baton*, %struct.node_baton** %7, align 8
  %13 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.svn_delta_editor_t*, %struct.svn_delta_editor_t** %17, align 8
  store %struct.svn_delta_editor_t* %18, %struct.svn_delta_editor_t** %8, align 8
  %19 = load %struct.node_baton*, %struct.node_baton** %7, align 8
  %20 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load %struct.svn_delta_editor_t*, %struct.svn_delta_editor_t** %8, align 8
  %25 = getelementptr inbounds %struct.svn_delta_editor_t, %struct.svn_delta_editor_t* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i32*, i32*, i8**)*, i32 (i32, i32, i32*, i32*, i8**)** %25, align 8
  %27 = load %struct.node_baton*, %struct.node_baton** %7, align 8
  %28 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.node_baton*, %struct.node_baton** %7, align 8
  %31 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 %26(i32 %29, i32 %32, i32* %33, i32* %34, i8** %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %38
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
