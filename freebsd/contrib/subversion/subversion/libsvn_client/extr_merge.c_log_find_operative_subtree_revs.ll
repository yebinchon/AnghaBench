; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_log_find_operative_subtree_revs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_log_find_operative_subtree_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i8 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_6__*, i32*)* @log_find_operative_subtree_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_find_operative_subtree_revs(i8* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %4, align 8
  br label %155

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @apr_hash_first(i32* %29, i32 %32)
  store i32* %33, i32** %9, align 8
  br label %34

34:                                               ; preds = %148, %26
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %151

37:                                               ; preds = %34
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @apr_hash_this_key(i32* %38)
  store i8* %39, i8** %11, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call %struct.TYPE_7__* @apr_hash_this_val(i32* %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %12, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @svn_fspath__skip_ancestor(i32 %44, i8* %45)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %37
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %37
  br label %148

56:                                               ; preds = %49
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @svn_pool_clear(i32* %57)
  %59 = load i8*, i8** %15, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i8* @svn_relpath_dirname(i8* %59, i32* %60)
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %56
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @svn_node_unknown, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i8* @svn_dirent_join(i32 %76, i8* %77, i32* %78)
  store i8* %79, i8** %17, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @svn_wc_read_kind2(i64* %16, i32 %82, i8* %83, i32 %84, i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %93

89:                                               ; preds = %67
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %16, align 8
  br label %93

93:                                               ; preds = %89, %73
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @svn_depth_files, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* @svn_node_dir, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %148

104:                                              ; preds = %99, %93
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @svn_depth_immediates, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %148

111:                                              ; preds = %104
  %112 = load i8*, i8** %15, align 8
  store i8* %112, i8** %13, align 8
  br label %113

113:                                              ; preds = %111, %56
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = call i8* @svn_dirent_join(i32 %116, i8* %117, i32* %118)
  store i8* %119, i8** %14, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i8, i8* %121, align 8
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 65
  br i1 %124, label %132, label %125

125:                                              ; preds = %113
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @svn_hash_gets(i32 %128, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %125, %113
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @apr_pstrdup(i32 %138, i8* %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @apr_pstrdup(i32 %143, i8* %144)
  %146 = call i32 @svn_hash_sets(i32 %135, i32 %140, i32 %145)
  br label %147

147:                                              ; preds = %132, %125
  br label %148

148:                                              ; preds = %147, %110, %103, %55
  %149 = load i32*, i32** %9, align 8
  %150 = call i32* @apr_hash_next(i32* %149)
  store i32* %150, i32** %9, align 8
  br label %34

151:                                              ; preds = %34
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @svn_pool_destroy(i32* %152)
  %154 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %154, i32** %4, align 8
  br label %155

155:                                              ; preds = %151, %24
  %156 = load i32*, i32** %4, align 8
  ret i32* %156
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_7__* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
