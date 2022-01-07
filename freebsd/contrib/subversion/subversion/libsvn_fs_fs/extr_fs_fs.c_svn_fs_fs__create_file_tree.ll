; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__create_file_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__create_file_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i32 }

@SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@PATH_REVPROPS_DIR = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_CONFIG_FILE = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACKED_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@SVN_FS_FS__MIN_TXN_CURRENT_FORMAT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__create_file_tree(%struct.TYPE_19__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %13, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @apr_pstrdup(i32 %19, i8* %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %6
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @svn_fs_fs__path_rev_shard(%struct.TYPE_19__* %55, i32 0, i32* %56)
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @svn_io_make_dir_recursively(i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %69

61:                                               ; preds = %49
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @PATH_REVS_DIR, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @svn_dirent_join(i8* %62, i32 %63, i32* %64)
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @svn_io_make_dir_recursively(i32 %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @svn_fs_fs__path_revprops_shard(%struct.TYPE_19__* %75, i32 0, i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @svn_io_make_dir_recursively(i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %89

81:                                               ; preds = %69
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @PATH_REVPROPS_DIR, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @svn_dirent_join(i8* %82, i32 %83, i32* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @svn_io_make_dir_recursively(i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @svn_fs_fs__path_txns_dir(%struct.TYPE_19__* %90, i32* %91)
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @svn_io_make_dir_recursively(i32 %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @svn_fs_fs__path_txn_proto_revs(%struct.TYPE_19__* %100, i32* %101)
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @svn_io_make_dir_recursively(i32 %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %106

106:                                              ; preds = %99, %89
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @svn_fs_fs__path_current(%struct.TYPE_19__* %107, i32* %108)
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @svn_io_file_create_empty(i32 %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @svn_fs_fs__write_current(%struct.TYPE_19__* %113, i32 0, i32 1, i32 1, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @svn_fs_fs__path_lock(%struct.TYPE_19__* %117, i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @svn_io_file_create_empty(i32 %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @svn_fs_fs__set_uuid(%struct.TYPE_19__* %123, i32* null, i32* null, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SVN_FS_FS__MIN_CONFIG_FILE, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %106
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @write_config(%struct.TYPE_19__* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  br label %137

137:                                              ; preds = %132, %106
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @read_config(%struct.TYPE_20__* %138, i32 %141, i32 %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %149 = call i32 @read_global_config(%struct.TYPE_19__* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @write_revision_zero(%struct.TYPE_19__* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SVN_FS_FS__MIN_PACKED_FORMAT, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %137
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = call i32 @svn_fs_fs__path_min_unpacked_rev(%struct.TYPE_19__* %161, i32* %162)
  %164 = load i32*, i32** %12, align 8
  %165 = call i32 @svn_io_file_create(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  br label %167

167:                                              ; preds = %160, %137
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @SVN_FS_FS__MIN_TXN_CURRENT_FORMAT, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @svn_fs_fs__path_txn_current(%struct.TYPE_19__* %172, i32* %173)
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @svn_io_file_create(i32 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @svn_fs_fs__path_txn_current_lock(%struct.TYPE_19__* %178, i32* %179)
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @svn_io_file_create_empty(i32 %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  br label %184

184:                                              ; preds = %171, %167
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  %187 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %187
}

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_make_dir_recursively(i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_rev_shard(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_revprops_shard(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txns_dir(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_revs(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_io_file_create_empty(i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_current(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__write_current(%struct.TYPE_19__*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_lock(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__set_uuid(%struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @write_config(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @read_config(%struct.TYPE_20__*, i32, i32, i32*) #1

declare dso_local i32 @read_global_config(%struct.TYPE_19__*) #1

declare dso_local i32 @write_revision_zero(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_io_file_create(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_min_unpacked_rev(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_current(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_current_lock(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
