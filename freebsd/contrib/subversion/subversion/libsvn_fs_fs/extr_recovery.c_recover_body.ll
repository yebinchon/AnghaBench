; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recover_baton = type { i32, i32 (i32)*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Expected current rev to be <= %ld but found %ld\00", align 1
@SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Revision %ld has a revs file but no revprops file\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Revision %ld has a revs file but the revprops file is inaccessible\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"Revision %ld has a non-file where its revprops file should be\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @recover_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recover_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.recover_baton*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.recover_baton*
  store %struct.recover_baton* %21, %struct.recover_baton** %6, align 8
  %22 = load %struct.recover_baton*, %struct.recover_baton** %6, align 8
  %23 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @svn_fs_fs__set_uuid(%struct.TYPE_13__* %28, i32 %31, i32* null, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @recover_get_largest_revision(%struct.TYPE_13__* %35, i64* %9, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @svn_fs_fs__youngest_rev(i64* %12, %struct.TYPE_13__* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %2
  %47 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %47, i32* null, i32 %48, i64 %49, i64 %50)
  store i32* %51, i32** %3, align 8
  br label %181

52:                                               ; preds = %2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %113

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  %60 = call i32* @svn_pool_create(i32* %59)
  store i32* %60, i32** %15, align 8
  store i64 0, i64* %14, align 8
  br label %61

61:                                               ; preds = %103, %58
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %61
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @svn_pool_clear(i32* %66)
  %68 = load %struct.recover_baton*, %struct.recover_baton** %6, align 8
  %69 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %68, i32 0, i32 1
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = icmp ne i32 (i32)* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.recover_baton*, %struct.recover_baton** %6, align 8
  %74 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %73, i32 0, i32 1
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = load %struct.recover_baton*, %struct.recover_baton** %6, align 8
  %77 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %75(i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %72, %65
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @svn_fs_fs__open_pack_or_rev_file(i32** %16, %struct.TYPE_13__* %82, i64 %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i64, i64* %14, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @recover_get_root_offset(i32* %17, i64 %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @recover_find_max_ids(%struct.TYPE_13__* %93, i64 %94, i32* %95, i32 %96, i64* %10, i64* %11, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @svn_fs_fs__close_revision_file(i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %81
  %104 = load i64, i64* %14, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %61

106:                                              ; preds = %61
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @svn_pool_destroy(i32* %107)
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %106, %52
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @svn_fs_fs__path_revprops(%struct.TYPE_13__* %114, i64 %115, i32* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @svn_io_check_path(i32 %117, i64* %13, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* @svn_node_none, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %113
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %18, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @svn_fs_fs__packed_revprop_available(i64* %18, %struct.TYPE_13__* %126, i64 %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %124
  %132 = load i64, i64* %18, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %136 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i64, i64* %9, align 8
  %138 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %135, i32* null, i32 %136, i64 %137)
  store i32* %138, i32** %3, align 8
  br label %181

139:                                              ; preds = %131
  %140 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %141 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i64, i64* %9, align 8
  %143 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %140, i32* null, i32 %141, i64 %142)
  store i32* %143, i32** %3, align 8
  br label %181

144:                                              ; preds = %124
  br label %155

145:                                              ; preds = %113
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @svn_node_file, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %151 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i64, i64* %9, align 8
  %153 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %150, i32* null, i32 %151, i64 %152)
  store i32* %153, i32** %3, align 8
  br label %181

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %144
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @svn_fs_fs__exists_rep_cache(i64* %19, %struct.TYPE_13__* %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i64, i64* %19, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @svn_fs_fs__del_rep_reference(%struct.TYPE_13__* %168, i64 %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  br label %173

173:                                              ; preds = %167, %160
  br label %174

174:                                              ; preds = %173, %155
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i32* @svn_fs_fs__write_current(%struct.TYPE_13__* %175, i64 %176, i64 %177, i64 %178, i32* %179)
  store i32* %180, i32** %3, align 8
  br label %181

181:                                              ; preds = %174, %149, %139, %134, %46
  %182 = load i32*, i32** %3, align 8
  ret i32* %182
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__set_uuid(%struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i32 @recover_get_largest_revision(%struct.TYPE_13__*, i64*, i32*) #1

declare dso_local i32 @svn_fs_fs__youngest_rev(i64*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_fs__open_pack_or_rev_file(i32**, %struct.TYPE_13__*, i64, i32*, i32*) #1

declare dso_local i32 @recover_get_root_offset(i32*, i64, i32*, i32*) #1

declare dso_local i32 @recover_find_max_ids(%struct.TYPE_13__*, i64, i32*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @svn_fs_fs__close_revision_file(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_revprops(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__packed_revprop_available(i64*, %struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__exists_rep_cache(i64*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_fs_fs__del_rep_reference(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32* @svn_fs_fs__write_current(%struct.TYPE_13__*, i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
