; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_sync.c_svnsync_get_sync_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_sync.c_svnsync_get_sync_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32*, i8*, i8*, i32, i32, i8*, %struct.TYPE_7__* }

@set_target_revision = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@close_directory = common dso_local global i32 0, align 4
@absent_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@absent_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@abort_edit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SVNSYNC_UNSUPPORTED_STRIP_MERGEINFO\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SVNSYNC_UNSUPPORTED_MIGRATE_SVNMERGE\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svnsync_get_sync_editor(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, %struct.TYPE_7__** %6, i8** %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.TYPE_7__** %6, %struct.TYPE_7__*** %17, align 8
  store i8** %7, i8*** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load i32*, i32** %20, align 8
  %24 = call %struct.TYPE_7__* @svn_delta_default_editor(i32* %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %21, align 8
  %25 = load i32*, i32** %20, align 8
  %26 = call %struct.TYPE_8__* @apr_pcalloc(i32* %25, i32 64)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %22, align 8
  %27 = load i32, i32* @set_target_revision, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @open_root, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @delete_entry, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @add_directory, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @open_directory, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @change_dir_prop, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @close_directory, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @absent_directory, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @add_file, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @open_file, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @apply_textdelta, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @change_file_prop, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @close_file, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @absent_file, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @close_edit, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @abort_edit, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %77, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  %96 = call i64 @getenv(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %10
  %99 = load i8*, i8** @TRUE, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %10
  %103 = call i64 @getenv(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i8*, i8** @TRUE, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @TRUE, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %102
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %114 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %17, align 8
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %116 = bitcast %struct.TYPE_8__* %115 to i8*
  %117 = load i8**, i8*** %18, align 8
  store i8* %116, i8** %117, align 8
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %118
}

declare dso_local %struct.TYPE_7__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
