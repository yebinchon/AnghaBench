; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_get_file_revs_backwards.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_get_file_revs_backwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.send_baton = type { i32*, i32*, i32, i32*, i32*, i8* }
%struct.path_revision = type { i8*, i64, i8* }

@FALSE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"'%s' is not a file in revision %ld\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i64, i64, i32 (i32*, i32*, i8*, i8*, i32*)*, i8*, i32, i8*, i32*)* @get_file_revs_backwards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_file_revs_backwards(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64 %3, i32 (i32*, i32*, i8*, i8*, i32*)* %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32 (i32*, i32*, i8*, i8*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.send_baton, align 8
  %26 = alloca %struct.path_revision*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 (i32*, i32*, i8*, i8*, i32*)* %4, i32 (i32*, i32*, i8*, i8*, i32*)** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %32 = load i32*, i32** %19, align 8
  %33 = call i8* @svn_pool_create(i32* %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = call i8* @svn_pool_create(i32* %35)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %21, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = call i8* @svn_pool_create(i32* %38)
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = call i8* @svn_pool_create(i32* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 5
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @apr_hash_make(i32* %51)
  %53 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %14, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @svn_fs_revision_root(i32** %23, i32 %56, i64 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %23, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @svn_fs_check_path(i64* %24, i32* %61, i8* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %24, align 8
  %67 = load i64, i64* @svn_node_file, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %9
  %70 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %71 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32* @svn_error_createf(i32 %70, i32* null, i32 %71, i8* %72, i64 %73)
  store i32* %74, i32** %10, align 8
  br label %160

75:                                               ; preds = %9
  %76 = load i32*, i32** %23, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = load i32*, i32** %20, align 8
  %80 = call i32 @svn_fs_node_history2(i32** %22, i32* %76, i8* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %75, %144
  %83 = load i32*, i32** %20, align 8
  %84 = call i32 @svn_pool_clear(i32* %83)
  %85 = load i32*, i32** %22, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = load i32*, i32** %20, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = call i32 @svn_fs_history_prev2(i32** %22, i32* %85, i32 %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %22, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  br label %148

94:                                               ; preds = %82
  %95 = load i32*, i32** %22, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = call i32 @svn_fs_history_location(i8** %28, i64* %27, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %15, align 8
  %100 = icmp ne i32 (i32*, i32*, i8*, i8*, i32*)* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %94
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %27, align 8
  %106 = load i32*, i32** %20, align 8
  %107 = call i32 @svn_fs_revision_root(i32** %30, i32 %104, i64 %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i32 (i32*, i32*, i8*, i8*, i32*)*, i32 (i32*, i32*, i8*, i8*, i32*)** %15, align 8
  %110 = load i32*, i32** %30, align 8
  %111 = load i8*, i8** %28, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 %109(i32* %29, i32* %110, i8* %111, i8* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i32, i32* %29, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %101
  br label %148

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %94
  %121 = load i32*, i32** %20, align 8
  %122 = call %struct.path_revision* @apr_palloc(i32* %121, i32 24)
  store %struct.path_revision* %122, %struct.path_revision** %26, align 8
  %123 = load i8*, i8** %28, align 8
  %124 = load %struct.path_revision*, %struct.path_revision** %26, align 8
  %125 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %27, align 8
  %127 = load %struct.path_revision*, %struct.path_revision** %26, align 8
  %128 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load i8*, i8** @FALSE, align 8
  %130 = load %struct.path_revision*, %struct.path_revision** %26, align 8
  %131 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.path_revision*, %struct.path_revision** %26, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i8*, i8** %18, align 8
  %136 = call i32 @send_path_revision(%struct.path_revision* %132, %struct.TYPE_4__* %133, %struct.send_baton* %25, i32 %134, i8* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load %struct.path_revision*, %struct.path_revision** %26, align 8
  %139 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = icmp sle i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %120
  br label %148

144:                                              ; preds = %120
  %145 = load i32*, i32** %20, align 8
  store i32* %145, i32** %31, align 8
  %146 = load i32*, i32** %21, align 8
  store i32* %146, i32** %20, align 8
  %147 = load i32*, i32** %31, align 8
  store i32* %147, i32** %21, align 8
  br label %82

148:                                              ; preds = %143, %118, %93
  %149 = load i32*, i32** %20, align 8
  %150 = call i32 @svn_pool_destroy(i32* %149)
  %151 = load i32*, i32** %21, align 8
  %152 = call i32 @svn_pool_destroy(i32* %151)
  %153 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @svn_pool_destroy(i32* %154)
  %156 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %25, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @svn_pool_destroy(i32* %157)
  %159 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %159, i32** %10, align 8
  br label %160

160:                                              ; preds = %148, %69
  %161 = load i32*, i32** %10, align 8
  ret i32* %161
}

declare dso_local i8* @svn_pool_create(i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_node_history2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_history_prev2(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_location(i8**, i64*, i32*, i32*) #1

declare dso_local %struct.path_revision* @apr_palloc(i32*, i32) #1

declare dso_local i32 @send_path_revision(%struct.path_revision*, %struct.TYPE_4__*, %struct.send_baton*, i32, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
