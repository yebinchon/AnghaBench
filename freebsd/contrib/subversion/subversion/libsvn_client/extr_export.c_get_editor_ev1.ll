; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_get_editor_ev1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_get_editor_ev1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edit_baton = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@set_target_revision = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__**, i8**, %struct.edit_baton*, %struct.TYPE_9__*, i32*, i32*)* @get_editor_ev1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_editor_ev1(%struct.TYPE_8__** %0, i8** %1, %struct.edit_baton* %2, %struct.TYPE_9__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = call %struct.TYPE_8__* @svn_delta_default_editor(i32* %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %13, align 8
  %16 = load i32, i32* @set_target_revision, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @open_root, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @add_directory, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @add_file, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @apply_textdelta, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @close_file, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @change_file_prop, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @change_dir_prop, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @svn_delta_get_cancellation_editor(i32 %42, i32 %45, %struct.TYPE_8__* %46, %struct.edit_baton* %47, %struct.TYPE_8__** %48, i8** %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local %struct.TYPE_8__* @svn_delta_default_editor(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i32, %struct.TYPE_8__*, %struct.edit_baton*, %struct.TYPE_8__**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
