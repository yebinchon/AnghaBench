; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_svn_ra_serf__get_commit_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_svn_ra_serf__get_commit_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32, i64, i32*, i8*, i32, i32, %struct.TYPE_14__* }

@SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS = common dso_local global i32 0, align 4
@SVN_PROP_TXN_CLIENT_COMPAT_VERSION = common dso_local global i32 0, align 4
@SVN_VER_NUMBER = common dso_local global i32 0, align 4
@SVN_PROP_TXN_USER_AGENT = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@close_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@abort_edit = common dso_local global i32 0, align 4
@apply_textdelta_stream = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_commit_editor(%struct.TYPE_13__* %0, %struct.TYPE_15__** %1, i8** %2, i32* %3, i32 %4, i8* %5, i32* %6, i64 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %19, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = call %struct.TYPE_16__* @apr_pcalloc(i32* %28, i32 56)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %21, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 7
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %35, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 @svn_prop_hash_dup(i32* %36, i32* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = load i32, i32* @SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @svn_ra_serf__has_capability(%struct.TYPE_13__* %41, i64* %24, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %24, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %9
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* @SVN_PROP_TXN_CLIENT_COMPAT_VERSION, align 4
  %54 = call i32 @apr_pstrdup(i32* %52, i32 %53)
  %55 = load i32, i32* @SVN_VER_NUMBER, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @svn_string_create(i32 %55, i32* %56)
  %58 = call i32 @svn_hash_sets(i32 %51, i32 %54, i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* @SVN_PROP_TXN_USER_AGENT, align 4
  %64 = call i32 @apr_pstrdup(i32* %62, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @svn_string_create(i32 %67, i32* %68)
  %70 = call i32 @svn_hash_sets(i32 %61, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %48, %9
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load i32*, i32** %16, align 8
  %82 = call i64 @apr_hash_count(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32*, i32** %16, align 8
  br label %87

86:                                               ; preds = %80, %71
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32* [ %85, %84 ], [ null, %86 ]
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @apr_hash_make(i32* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = call %struct.TYPE_15__* @svn_delta_default_editor(i32* %100)
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %20, align 8
  %102 = load i32, i32* @open_root, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @delete_entry, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 12
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @add_directory, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @open_directory, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @change_dir_prop, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @close_directory, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @add_file, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @open_file, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @apply_textdelta, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @change_file_prop, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @close_file, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @close_edit, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @abort_edit, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %87
  %146 = load i32, i32* @apply_textdelta_stream, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %87
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %151 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %153 = bitcast %struct.TYPE_16__* %152 to i8*
  %154 = load i8**, i8*** %12, align 8
  store i8* %153, i8** %154, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @svn_ra_serf__get_repos_root(%struct.TYPE_13__* %155, i8** %22, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i8*, i8** %22, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %18, align 8
  %164 = call i8* @svn_uri_skip_ancestor(i8* %159, i32 %162, i32* %163)
  store i8* %164, i8** %23, align 8
  %165 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %166 = load i8**, i8*** %12, align 8
  %167 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = load i8**, i8*** %12, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %22, align 8
  %172 = load i8*, i8** %23, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %18, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = call i32 @svn_editor__insert_shims(%struct.TYPE_15__** %165, i8** %166, %struct.TYPE_15__* %168, i8* %170, i8* %171, i8* %172, i32 %175, i32* %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %180
}

declare dso_local %struct.TYPE_16__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_prop_hash_dup(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__has_capability(%struct.TYPE_13__*, i64*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_delta_default_editor(i32*) #1

declare dso_local i32 @svn_ra_serf__get_repos_root(%struct.TYPE_13__*, i8**, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i32, i32*) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_15__**, i8**, %struct.TYPE_15__*, i8*, i8*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
