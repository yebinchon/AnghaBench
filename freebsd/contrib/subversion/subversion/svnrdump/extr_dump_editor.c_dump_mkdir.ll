; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_dump_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_dump_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_edit_baton = type { i32 }

@SVN_REPOS_DUMPFILE_NODE_PATH = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_NODE_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@SVN_REPOS_DUMPFILE_NODE_ACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dump_edit_baton*, i8*, i32*)* @dump_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dump_mkdir(%struct.dump_edit_baton* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.dump_edit_baton*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.dump_edit_baton* %0, %struct.dump_edit_baton** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32* @svn_repos__dumpfile_headers_create(i32* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_PATH, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @svn_repos__dumpfile_header_push(i32* %11, i32 %12, i8* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_KIND, align 4
  %17 = call i32 @svn_repos__dumpfile_header_push(i32* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SVN_REPOS_DUMPFILE_NODE_ACTION, align 4
  %20 = call i32 @svn_repos__dumpfile_header_push(i32* %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @apr_hash_make(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @apr_hash_make(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @get_props_content(i32* %21, i32** %7, i32 %23, i32 %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %4, align 8
  %31 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @svn_repos__dump_node_record(i32 %32, i32* %33, i32* %34, i32 %35, i32 0, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %4, align 8
  %41 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @svn_stream_puts(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %45
}

declare dso_local i32* @svn_repos__dumpfile_headers_create(i32*) #1

declare dso_local i32 @svn_repos__dumpfile_header_push(i32*, i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_props_content(i32*, i32**, i32, i32, i32*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_repos__dump_node_record(i32, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
