; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_upgrade_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_upgrade_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgrade_baton_t = type { i32, i32, i32, i32 (i32, i32, i32, i32*)*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@PATH_CONFIG = common dso_local global i32 0, align 4
@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"'%s' is not a regular file. Please move it out of the way and try again\00", align 1
@SVN_FS_FS__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_FS__MIN_TXN_CURRENT_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACKED_FORMAT = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_fs_upgrade_format_bumped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @upgrade_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @upgrade_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.upgrade_baton_t*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.upgrade_baton_t*
  store %struct.upgrade_baton_t* %16, %struct.upgrade_baton_t** %6, align 8
  %17 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %18 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %17, i32 0, i32 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @path_format(%struct.TYPE_14__* %23, i32* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @read_format(i32* %9, i32* %10, i64* %11, i8* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PATH_CONFIG, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @svn_dirent_join(i32 %33, i32 %34, i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @svn_io_check_path(i32 %36, i32* %13, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32, i32* %13, align 4
  switch i32 %40, label %47 [
    i32 128, label %41
    i32 129, label %46
  ]

41:                                               ; preds = %2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @write_config(%struct.TYPE_14__* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %57

46:                                               ; preds = %2
  br label %57

47:                                               ; preds = %2
  %48 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PATH_CONFIG, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @svn_dirent_join(i32 %52, i32 %53, i32* %54)
  %56 = call i32* @svn_error_createf(i32 %48, i32* null, i32 %49, i32 %55)
  store i32* %56, i32** %3, align 8
  br label %195

57:                                               ; preds = %46, %41
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %3, align 8
  br label %195

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SVN_FS_FS__MIN_TXN_CURRENT_FORMAT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @svn_fs_fs__path_txn_current(%struct.TYPE_14__* %68, i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @create_file_ignore_eexist(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @svn_fs_fs__path_txn_current_lock(%struct.TYPE_14__* %74, i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @create_file_ignore_eexist(i32 %76, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %67, %63
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @svn_fs_fs__path_txn_proto_revs(%struct.TYPE_14__* %85, i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @svn_io_make_dir_recursively(i32 %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @SVN_FS_FS__MIN_PACKED_FORMAT, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @svn_fs_fs__path_min_unpacked_rev(%struct.TYPE_14__* %96, i32* %97)
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @svn_io_file_create(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @SVN_FS_FS__MIN_PACKED_FORMAT, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = load i64, i64* @TRUE, align 8
  store i64 %114, i64* %14, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %117 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %116, i32 0, i32 3
  %118 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %117, align 8
  %119 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %120 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %123 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %126 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @svn_fs_fs__upgrade_pack_revprops(%struct.TYPE_14__* %115, i32 (i32, i32, i32, i32*)* %118, i32 %121, i32 %124, i32 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %113, %110, %106, %102
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @read_uuid(%struct.TYPE_14__* %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i64, i64* %11, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @svn_fs_fs__set_uuid(%struct.TYPE_14__* %145, i32 %148, i32* null, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = load i64, i64* @TRUE, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @svn_fs_fs__write_format(%struct.TYPE_14__* %152, i64 %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %158 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %157, i32 0, i32 3
  %159 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %158, align 8
  %160 = icmp ne i32 (i32, i32, i32, i32*)* %159, null
  br i1 %160, label %161, label %173

161:                                              ; preds = %131
  %162 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %163 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %162, i32 0, i32 3
  %164 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %163, align 8
  %165 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %166 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  %169 = load i32, i32* @svn_fs_upgrade_format_bumped, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 %164(i32 %167, i32 %168, i32 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  br label %173

173:                                              ; preds = %161, %131
  %174 = load i64, i64* %14, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %178 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %179 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %178, i32 0, i32 3
  %180 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %179, align 8
  %181 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %182 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %185 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.upgrade_baton_t*, %struct.upgrade_baton_t** %6, align 8
  %188 = getelementptr inbounds %struct.upgrade_baton_t, %struct.upgrade_baton_t* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @svn_fs_fs__upgrade_cleanup_pack_revprops(%struct.TYPE_14__* %177, i32 (i32, i32, i32, i32*)* %180, i32 %183, i32 %186, i32 %189, i32* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %193

193:                                              ; preds = %176, %173
  %194 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %194, i32** %3, align 8
  br label %195

195:                                              ; preds = %193, %61, %47
  %196 = load i32*, i32** %3, align 8
  ret i32* %196
}

declare dso_local i8* @path_format(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_format(i32*, i32*, i64*, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @write_config(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @create_file_ignore_eexist(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_current(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_current_lock(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_io_make_dir_recursively(i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_revs(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_io_file_create(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_min_unpacked_rev(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_fs_fs__upgrade_pack_revprops(%struct.TYPE_14__*, i32 (i32, i32, i32, i32*)*, i32, i32, i32, i32*) #1

declare dso_local i32 @read_uuid(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_fs_fs__set_uuid(%struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__write_format(%struct.TYPE_14__*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__upgrade_cleanup_pack_revprops(%struct.TYPE_14__*, i32 (i32, i32, i32, i32*)*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
