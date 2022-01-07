; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_diff_deleted_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_diff_deleted_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_6__*, i32, i32, i32, i32* (i32)* }
%struct.TYPE_6__ = type { i32* (i8*, i32*, i32*, i32, %struct.TYPE_6__*, i32*)*, i32* (i32*, i64*, i64*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32*, i32*)* }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.dir_baton*, i32*)* @diff_deleted_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_deleted_dir(i8* %0, %struct.dir_baton* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dir_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.edit_baton*, align 8
  %8 = alloca %struct.dir_baton*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 1
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @svn_pool_create(i32* %22)
  store i32* %23, i32** %9, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %26 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @svn_diff__source_create(i32 %28, i32* %29)
  store i32* %30, i32** %14, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %33 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 1
  %35 = load %struct.edit_baton*, %struct.edit_baton** %34, align 8
  %36 = load i64, i64* @FALSE, align 8
  %37 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.dir_baton* @make_dir_baton(i8* %31, %struct.dir_baton* %32, %struct.edit_baton* %35, i64 %36, i32 %37, i32* %38)
  store %struct.dir_baton* %39, %struct.dir_baton** %8, align 8
  %40 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @SVN_IS_VALID_REVNUM(i32 %42)
  %44 = call i32 @SVN_ERR_ASSERT(i32 %43)
  %45 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %46 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %45, i32 0, i32 4
  %47 = load i32* (i32)*, i32* (i32)** %46, align 8
  %48 = icmp ne i32* (i32)* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %3
  %50 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %51 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %50, i32 0, i32 4
  %52 = load i32* (i32)*, i32* (i32)** %51, align 8
  %53 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %54 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32* %52(i32 %55)
  %57 = call i32 @SVN_ERR(i32* %56)
  br label %58

58:                                               ; preds = %49, %3
  %59 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %60 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32* (i32*, i64*, i64*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32*, i32*)*, i32* (i32*, i64*, i64*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_6__*, i32*, i32*)** %62, align 8
  %64 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %65 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %64, i32 0, i32 0
  %66 = load i8*, i8** %4, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %69 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %72 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* %63(i32* %65, i64* %10, i64* %11, i8* %66, i32* %67, i32* null, i32* null, i32 %70, %struct.TYPE_6__* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32* %76)
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %80, %58
  %84 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %85 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %89
  %92 = phi i32** [ null, %89 ], [ %12, %90 ]
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %97

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %95
  %98 = phi i32** [ null, %95 ], [ %13, %96 ]
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %101 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = call i32* @svn_ra_get_dir2(i32 %86, i32** %92, i32* null, i32** %98, i8* %99, i32 %102, i32 %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32* %105)
  br label %107

107:                                              ; preds = %97, %80
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %157, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32* @apr_hash_first(i32* %111, i32* %112)
  store i32* %113, i32** %15, align 8
  br label %114

114:                                              ; preds = %153, %110
  %115 = load i32*, i32** %15, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %156

117:                                              ; preds = %114
  %118 = load i32*, i32** %15, align 8
  %119 = call i8* @apr_hash_this_key(i32* %118)
  store i8* %119, i8** %17, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = call %struct.TYPE_5__* @apr_hash_this_val(i32* %120)
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %18, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @svn_pool_clear(i32* %122)
  %124 = load i8*, i8** %4, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i8* @svn_relpath_join(i8* %124, i8* %125, i32* %126)
  store i8* %127, i8** %16, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @svn_node_file, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %117
  %134 = load i8*, i8** %16, align 8
  %135 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32* @diff_deleted_file(i8* %134, %struct.dir_baton* %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32* %137)
  br label %152

139:                                              ; preds = %117
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @svn_node_dir, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i8*, i8** %16, align 8
  %147 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32* @diff_deleted_dir(i8* %146, %struct.dir_baton* %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32* %149)
  br label %151

151:                                              ; preds = %145, %139
  br label %152

152:                                              ; preds = %151, %133
  br label %153

153:                                              ; preds = %152
  %154 = load i32*, i32** %15, align 8
  %155 = call i32* @apr_hash_next(i32* %154)
  store i32* %155, i32** %15, align 8
  br label %114

156:                                              ; preds = %114
  br label %157

157:                                              ; preds = %156, %107
  %158 = load i64, i64* %10, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %157
  %161 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %162 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32* (i8*, i32*, i32*, i32, %struct.TYPE_6__*, i32*)*, i32* (i8*, i32*, i32*, i32, %struct.TYPE_6__*, i32*)** %164, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %170 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %173 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = call i32* %165(i8* %166, i32* %167, i32* %168, i32 %171, %struct.TYPE_6__* %174, i32* %175)
  %177 = call i32 @SVN_ERR(i32* %176)
  br label %178

178:                                              ; preds = %160, %157
  %179 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %180 = call i32* @release_dir(%struct.dir_baton* %179)
  %181 = call i32 @SVN_ERR(i32* %180)
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @svn_pool_destroy(i32* %182)
  %184 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %184
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local %struct.dir_baton* @make_dir_baton(i8*, %struct.dir_baton*, %struct.edit_baton*, i64, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_get_dir2(i32, i32**, i32*, i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_5__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32* @diff_deleted_file(i8*, %struct.dir_baton*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @release_dir(%struct.dir_baton*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
