; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_svn_repos_get_fs_build_parser6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_svn_repos_get_fs_build_parser6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.parse_baton = type { i32, i8*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i32, i32, i32*, i8*, i32, i8*, i8*, i32, i32* }

@uuid_record = common dso_local global i32 0, align 4
@new_revision_record = common dso_local global i32 0, align 4
@new_node_record = common dso_local global i32 0, align 4
@set_revision_property = common dso_local global i32 0, align 4
@set_node_property = common dso_local global i32 0, align 4
@remove_node_props = common dso_local global i32 0, align 4
@set_fulltext = common dso_local global i32 0, align 4
@close_node = common dso_local global i32 0, align 4
@close_revision = common dso_local global i32 0, align 4
@delete_node_property = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_get_fs_build_parser6(%struct.TYPE_3__** %0, i8** %1, i32* %2, i64 %3, i64 %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i32 %13, i8* %14, i32* %15) #0 {
  %17 = alloca %struct.TYPE_3__**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_3__*, align 8
  %34 = alloca %struct.parse_baton*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %17, align 8
  store i8** %1, i8*** %18, align 8
  store i32* %2, i32** %19, align 8
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i8* %5, i8** %22, align 8
  store i8* %6, i8** %23, align 8
  store i32 %7, i32* %24, align 4
  store i8* %8, i8** %25, align 8
  store i8* %9, i8** %26, align 8
  store i8* %10, i8** %27, align 8
  store i8* %11, i8** %28, align 8
  store i8* %12, i8** %29, align 8
  store i32 %13, i32* %30, align 4
  store i8* %14, i8** %31, align 8
  store i32* %15, i32** %32, align 8
  %35 = load i32*, i32** %32, align 8
  %36 = call i8* @apr_pcalloc(i32* %35, i32 56)
  %37 = bitcast i8* %36 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %33, align 8
  %38 = load i32*, i32** %32, align 8
  %39 = call i8* @apr_pcalloc(i32* %38, i32 144)
  %40 = bitcast i8* %39 to %struct.parse_baton*
  store %struct.parse_baton* %40, %struct.parse_baton** %34, align 8
  %41 = load i8*, i8** %25, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %16
  %44 = load i8*, i8** %25, align 8
  %45 = load i32*, i32** %32, align 8
  %46 = call i8* @svn_relpath_canonicalize(i8* %44, i32* %45)
  store i8* %46, i8** %25, align 8
  br label %47

47:                                               ; preds = %43, %16
  %48 = load i64, i64* %20, align 8
  %49 = call i64 @SVN_IS_VALID_REVNUM(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %21, align 8
  %53 = call i64 @SVN_IS_VALID_REVNUM(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %20, align 8
  %57 = call i64 @SVN_IS_VALID_REVNUM(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %21, align 8
  %61 = call i64 @SVN_IS_VALID_REVNUM(i64 %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br label %66

66:                                               ; preds = %64, %51
  %67 = phi i1 [ true, %51 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @SVN_ERR_ASSERT(i32 %68)
  %70 = load i64, i64* %20, align 8
  %71 = call i64 @SVN_IS_VALID_REVNUM(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %21, align 8
  %76 = icmp sle i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @SVN_ERR_ASSERT(i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 11
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @uuid_record, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @new_revision_record, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @new_node_record, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @set_revision_property, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @set_node_property, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @remove_node_props, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @set_fulltext, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @close_node, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @close_revision, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @delete_node_property, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @apply_textdelta, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %117 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %116, i32 0, i32 18
  store i32* %115, i32** %117, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = call i32 @svn_repos_fs(i32* %118)
  %120 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %121 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %120, i32 0, i32 17
  store i32 %119, i32* %121, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %124 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %123, i32 0, i32 16
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %23, align 8
  %126 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %127 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %126, i32 0, i32 15
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %30, align 4
  %129 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %130 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %129, i32 0, i32 14
  store i32 %128, i32* %130, align 8
  %131 = load i8*, i8** %31, align 8
  %132 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %133 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %132, i32 0, i32 13
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* %24, align 4
  %135 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %136 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** %25, align 8
  %138 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %139 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32*, i32** %32, align 8
  %141 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %142 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %141, i32 0, i32 12
  store i32* %140, i32** %142, align 8
  %143 = load i32*, i32** %32, align 8
  %144 = call i32 @svn_pool_create(i32* %143)
  %145 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %146 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %145, i32 0, i32 11
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %32, align 8
  %148 = call i32 @apr_hash_make(i32* %147)
  %149 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %150 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %149, i32 0, i32 10
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %152 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %153 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %152, i32 0, i32 9
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %155 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %156 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %155, i32 0, i32 8
  store i8* %154, i8** %156, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %159 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %158, i32 0, i32 7
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %162 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %161, i32 0, i32 6
  store i64 %160, i64* %162, align 8
  %163 = load i8*, i8** %26, align 8
  %164 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %165 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** %27, align 8
  %167 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %168 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %28, align 8
  %170 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %171 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** %29, align 8
  %173 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %174 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %176 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %17, align 8
  store %struct.TYPE_3__* %175, %struct.TYPE_3__** %176, align 8
  %177 = load %struct.parse_baton*, %struct.parse_baton** %34, align 8
  %178 = bitcast %struct.parse_baton* %177 to i8*
  %179 = load i8**, i8*** %18, align 8
  store i8* %178, i8** %179, align 8
  %180 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %180
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
