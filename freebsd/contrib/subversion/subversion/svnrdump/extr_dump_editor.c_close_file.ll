; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i8*, i64, i32, i32, i64, i32, i32, i32, i32, i32, %struct.dump_edit_baton* }
%struct.dump_edit_baton = type { i32, i32 }

@SVN_REPOS_DUMPFILE_TEXT_DELTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5 = common dso_local global i32 0, align 4
@SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@APR_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.file_baton*, align 8
  %8 = alloca %struct.dump_edit_baton*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.file_baton*
  store %struct.file_baton* %15, %struct.file_baton** %7, align 8
  %16 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %17 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %16, i32 0, i32 10
  %18 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %17, align 8
  store %struct.dump_edit_baton* %18, %struct.dump_edit_baton** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %19 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @dump_pending_dir(%struct.dump_edit_baton* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %24 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %25 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %28 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %29 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %32 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %35 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %38 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @dump_node(i32** %11, %struct.dump_edit_baton* %23, i32 %26, i32* null, %struct.file_baton* %27, i32 %30, i32 %33, i32 %36, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %44 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %3
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %50 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %53 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @get_props_content(i32* %48, i32** %10, i32 %51, i32 %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %47, %3
  %60 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %61 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA, align 4
  %67 = call i32 @svn_repos__dumpfile_header_push(i32* %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %69 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @svn_io_file_size_get(i32* %9, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %75 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %64
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5, align 4
  %81 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %82 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @svn_repos__dumpfile_header_push(i32* %79, i32 %80, i8* %83)
  br label %85

85:                                               ; preds = %78, %64
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* @SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @svn_repos__dumpfile_header_push(i32* %86, i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %59
  %91 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %92 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %97 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i64, i64* @FALSE, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @svn_repos__dump_node_record(i32 %93, i32* %94, i32* %95, i64 %98, i32 %99, i64 %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %105 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %90
  %109 = load i64, i64* @FALSE, align 8
  %110 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %111 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %113 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @apr_hash_clear(i32 %114)
  %116 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %117 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @apr_hash_clear(i32 %118)
  br label %120

120:                                              ; preds = %108, %90
  %121 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %122 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  %126 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %127 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @APR_SET, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @svn_io_file_seek(i32 %128, i32 %129, i32* %13, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %134 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = call i32* @svn_stream_from_aprfile2(i32 %135, i32 %136, i32* %137)
  store i32* %138, i32** %12, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %141 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @svn_stream_copy3(i32* %139, i32 %142, i32* null, i32* null, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @svn_stream_close(i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %150 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @svn_io_file_trunc(i32 %151, i32 0, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  br label %155

155:                                              ; preds = %125, %120
  %156 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %8, align 8
  %157 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @svn_stream_puts(i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %160 = call i32 @SVN_ERR(i32 %159)
  %161 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %161
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_pending_dir(%struct.dump_edit_baton*, i32*) #1

declare dso_local i32 @dump_node(i32**, %struct.dump_edit_baton*, i32, i32*, %struct.file_baton*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_props_content(i32*, i32**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_repos__dumpfile_header_push(i32*, i32, i8*) #1

declare dso_local i32 @svn_io_file_size_get(i32*, i32, i32*) #1

declare dso_local i32 @svn_repos__dump_node_record(i32, i32*, i32*, i64, i32, i64, i32*) #1

declare dso_local i32 @apr_hash_clear(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32, i32, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_io_file_trunc(i32, i32, i32*) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
