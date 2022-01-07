; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__commit_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32* }
%struct.get_root_args = type { i64, %struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i8* }
%struct.merge_args = type { i64, %struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32*, i32*, i32* }
%struct.commit_args = type { i64, %struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32*, i32*, i32* }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@txn_body_get_root = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@txn_body_merge = common dso_local global i32 0, align 4
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@txn_body_commit = common dso_local global i32 0, align 4
@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_fs_base__commit_txn(i8** %0, i64* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.get_root_args, align 8
  %14 = alloca %struct.merge_args, align 8
  %15 = alloca %struct.commit_args, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i8**, i8*** %6, align 8
  store i8* null, i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %4
  br label %33

33:                                               ; preds = %32, %139
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_pool_clear(i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call %struct.TYPE_15__* @svn_fs_base__youngest_rev(i64* %16, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(%struct.TYPE_15__* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call %struct.TYPE_15__* @svn_fs_base__revision_root(i32** %17, i32* %40, i64 %41, i32* %42)
  %44 = call i32 @SVN_ERR(%struct.TYPE_15__* %43)
  %45 = load i32*, i32** %17, align 8
  %46 = getelementptr inbounds %struct.get_root_args, %struct.get_root_args* %13, i32 0, i32 6
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @txn_body_get_root, align 4
  %49 = bitcast %struct.get_root_args* %13 to %struct.merge_args*
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call %struct.TYPE_15__* @svn_fs_base__retry_txn(i32* %47, i32 %48, %struct.merge_args* %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(%struct.TYPE_15__* %52)
  %54 = getelementptr inbounds %struct.get_root_args, %struct.get_root_args* %13, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %18, align 8
  %56 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %14, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %14, i32 0, i32 3
  store i32* %57, i32** %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %14, i32 0, i32 1
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %60, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call %struct.TYPE_16__* @svn_stringbuf_create_empty(i32* %61)
  %63 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %14, i32 0, i32 2
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %63, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* @txn_body_merge, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = call %struct.TYPE_15__* @svn_fs_base__retry_txn(i32* %64, i32 %65, %struct.merge_args* %14, i32 %66, i32* %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %10, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %33
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i8**, i8*** %6, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %14, i32 0, i32 2
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %6, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %80, %77, %71
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %87)
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %5, align 8
  br label %144

89:                                               ; preds = %33
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.commit_args, %struct.commit_args* %15, i32 0, i32 1
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %91, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* @txn_body_commit, align 4
  %94 = bitcast %struct.commit_args* %15 to %struct.merge_args*
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = call %struct.TYPE_15__* @svn_fs_base__retry_txn(i32* %92, i32 %93, %struct.merge_args* %94, i32 %95, i32* %96)
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %10, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = icmp ne %struct.TYPE_15__* %98, null
  br i1 %99, label %100, label %129

100:                                              ; preds = %89
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %100
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call %struct.TYPE_15__* @svn_fs_base__youngest_rev(i64* %19, i32* %107, i32* %108)
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %20, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = call i32 @svn_error_clear(%struct.TYPE_15__* %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %116 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %115)
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %5, align 8
  br label %144

117:                                              ; preds = %106
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* %16, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %123 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %122)
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %5, align 8
  br label %144

124:                                              ; preds = %117
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %126 = call i32 @svn_error_clear(%struct.TYPE_15__* %125)
  br label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127
  br label %139

129:                                              ; preds = %100, %89
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = icmp ne %struct.TYPE_15__* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %134 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %133)
  store %struct.TYPE_15__* %134, %struct.TYPE_15__** %5, align 8
  br label %144

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.commit_args, %struct.commit_args* %15, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %7, align 8
  store i64 %137, i64* %138, align 8
  br label %140

139:                                              ; preds = %128
  br label %33

140:                                              ; preds = %135
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @svn_pool_destroy(i32* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %5, align 8
  br label %144

144:                                              ; preds = %140, %132, %121, %112, %86
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %145
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_base__youngest_rev(i64*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_base__revision_root(i32**, i32*, i64, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_base__retry_txn(i32*, i32, %struct.merge_args*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
