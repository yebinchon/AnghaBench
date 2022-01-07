; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_svn_rdump__load_dumpstream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_svn_rdump__load_dumpstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.parse_baton = type { i8*, i8*, i32*, i8*, i8*, i32, i32, i32*, i32* }

@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@magic_header_record = common dso_local global i32 0, align 4
@uuid_record = common dso_local global i32 0, align 4
@new_revision_record = common dso_local global i32 0, align 4
@new_node_record = common dso_local global i32 0, align 4
@set_revision_property = common dso_local global i32 0, align 4
@set_node_property = common dso_local global i32 0, align 4
@delete_node_property = common dso_local global i32 0, align 4
@remove_node_props = common dso_local global i32 0, align 4
@set_fulltext = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@close_node = common dso_local global i32 0, align 4
@close_revision = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_CANCELLED = common dso_local global i64 0, align 8
@SVNRDUMP_PROP_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @svn_rdump__load_dumpstream(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.parse_baton*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @svn_ra_has_capability(i32* %25, i32* %20, i32 %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @get_lock(i32** %19, i32* %30, i32 %31, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @svn_ra_get_repos_root2(i32* %36, i8** %23, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @svn_ra_get_session_url(i32* %40, i8** %22, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %22, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @svn_ra_get_path_relative_to_root(i32* %44, i8** %24, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %16, align 8
  %50 = call i8* @apr_pcalloc(i32* %49, i32 48)
  %51 = bitcast i8* %50 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %17, align 8
  %52 = load i32, i32* @magic_header_record, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @uuid_record, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @new_revision_record, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @new_node_record, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @set_revision_property, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @set_node_property, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @delete_node_property, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @remove_node_props, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @set_fulltext, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @apply_textdelta, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @close_node, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @close_revision, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i8* @apr_pcalloc(i32* %88, i32 64)
  %90 = bitcast i8* %89 to %struct.parse_baton*
  store %struct.parse_baton* %90, %struct.parse_baton** %18, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %93 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %92, i32 0, i32 8
  store i32* %91, i32** %93, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %96 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %95, i32 0, i32 7
  store i32* %94, i32** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %99 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load i8*, i8** %23, align 8
  %101 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %102 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %24, align 8
  %104 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %105 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @apr_hash_make(i32* %106)
  %108 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %109 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %111 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %112 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %114 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %115 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %118 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %121 = load %struct.parse_baton*, %struct.parse_baton** %18, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i8*, i8** %15, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = call %struct.TYPE_9__* @svn_repos_parse_dumpstream3(i32* %119, %struct.TYPE_8__* %120, %struct.parse_baton* %121, i32 %122, i32 %123, i8* %124, i32* %125)
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %21, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %128 = icmp ne %struct.TYPE_9__* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %131 = icmp ne %struct.TYPE_9__* %130, null
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SVN_ERR_CANCELLED, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %132, %8
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* @SVNRDUMP_PROP_LOCK, align 4
  %141 = load i32*, i32** %19, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = call i32 @svn_ra__release_operational_lock(i32* %139, i32 %140, i32* %141, i32* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %145 = call %struct.TYPE_9__* @svn_error_compose_create(i32 %143, %struct.TYPE_9__* %144)
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %21, align 8
  br label %146

146:                                              ; preds = %138, %132, %129
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  ret %struct.TYPE_9__* %147
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i32*, i32, i32*) #1

declare dso_local i32 @get_lock(i32**, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_session_url(i32*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_path_relative_to_root(i32*, i8**, i8*, i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_repos_parse_dumpstream3(i32*, %struct.TYPE_8__*, %struct.parse_baton*, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_compose_create(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @svn_ra__release_operational_lock(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
