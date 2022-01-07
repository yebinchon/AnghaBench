; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_hotcopy.c_hotcopy_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_hotcopy.c_hotcopy_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 (i8*)*, i8*, i32, i64, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@PATH_CONFIG = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [138 x i8] c"The hotcopy destination already contains more revisions (%lu) than the hotcopy source contains (%lu); are source and destination swapped?\00", align 1
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@PATH_LOCKS_DIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@REP_CACHE_DB_NAME = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PATH_TXN_CURRENT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @hotcopy_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %11, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32 (i8*)*, i32 (i8*)** %39, align 8
  store i32 (i8*)* %40, i32 (i8*)** %12, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %13, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PATH_CONFIG, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @svn_io_dir_file_copy(i32 %46, i32 %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %55 = icmp ne i32 (i8*)* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %2
  %57 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 %57(i8* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %56, %2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @svn_fs_x__read_current(i64* %14, %struct.TYPE_11__* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @svn_fs_x__youngest_rev(i64* %15, %struct.TYPE_11__* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %78 = call i32 @_(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0))
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32* @svn_error_createf(i32 %77, i32* null, i32 %78, i64 %79, i64 %80)
  store i32* %81, i32** %3, align 8
  br label %223

82:                                               ; preds = %68
  br label %84

83:                                               ; preds = %61
  store i64 0, i64* %15, align 8
  br label %84

84:                                               ; preds = %83, %82
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PATH_REVS_DIR, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i8* @svn_dirent_join(i32 %87, i32 %88, i32* %89)
  store i8* %90, i8** %16, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PATH_REVS_DIR, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = call i8* @svn_dirent_join(i32 %93, i32 %94, i32* %95)
  store i8* %96, i8** %17, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @svn_io_make_dir_recursively(i8* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %102 = icmp ne i32 (i8*)* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %84
  %104 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 %104(i8* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  br label %108

108:                                              ; preds = %103, %84
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @hotcopy_revisions(%struct.TYPE_11__* %109, %struct.TYPE_11__* %110, i64 %111, i64 %112, i64 %113, i8* %114, i8* %115, i32 %116, i8* %117, i32 (i8*)* %118, i8* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @svn_fs_x__write_current(%struct.TYPE_11__* %123, i64 %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PATH_LOCKS_DIR, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = call i8* @svn_dirent_join(i32 %130, i32 %131, i32* %132)
  store i8* %133, i8** %19, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = load i32, i32* @TRUE, align 4
  %136 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @svn_io_remove_dir2(i8* %134, i32 %135, i32 (i8*)* %136, i8* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PATH_LOCKS_DIR, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = call i8* @svn_dirent_join(i32 %143, i32 %144, i32* %145)
  store i8* %146, i8** %18, align 8
  %147 = load i8*, i8** %18, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @svn_io_check_path(i8* %147, i64* %20, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* @svn_node_dir, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %108
  %155 = load i8*, i8** %18, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @PATH_LOCKS_DIR, align 4
  %160 = load i32, i32* @TRUE, align 4
  %161 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @svn_io_copy_dir_recursively(i8* %155, i32 %158, i32 %159, i32 %160, i32 (i8*)* %161, i8* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  br label %166

166:                                              ; preds = %154, %108
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @REP_CACHE_DB_NAME, align 4
  %171 = load i32*, i32** %5, align 8
  %172 = call i8* @svn_dirent_join(i32 %169, i32 %170, i32* %171)
  store i8* %172, i8** %18, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @REP_CACHE_DB_NAME, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = call i8* @svn_dirent_join(i32 %175, i32 %176, i32* %177)
  store i8* %178, i8** %19, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @svn_io_check_path(i8* %179, i64* %20, i32* %180)
  %182 = call i32 @SVN_ERR(i32 %181)
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* @svn_node_file, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %166
  %187 = load i8*, i8** %18, align 8
  %188 = load i8*, i8** %19, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @svn_sqlite__hotcopy(i8* %187, i8* %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i8*, i8** %19, align 8
  %193 = load i32, i32* @FALSE, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @svn_io_set_file_read_write(i8* %192, i32 %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32 %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %198 = load i64, i64* %14, align 8
  %199 = load i32*, i32** %5, align 8
  %200 = call i32 @svn_fs_x__del_rep_reference(%struct.TYPE_11__* %197, i64 %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  br label %202

202:                                              ; preds = %186, %166
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @PATH_TXN_CURRENT, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = call i32 @svn_io_dir_file_copy(i32 %205, i32 %208, i32 %209, i32* %210)
  %212 = call i32 @SVN_ERR(i32 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = call i32 @svn_fs_x__reset_revprop_generation_file(%struct.TYPE_11__* %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = load i32, i32* @TRUE, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = call i32 @svn_fs_x__write_format(%struct.TYPE_11__* %217, i32 %218, i32* %219)
  %221 = call i32 @SVN_ERR(i32 %220)
  %222 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %222, i32** %3, align 8
  br label %223

223:                                              ; preds = %202, %76
  %224 = load i32*, i32** %3, align 8
  ret i32* %224
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_dir_file_copy(i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__read_current(i64*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_fs_x__youngest_rev(i64*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local i32 @hotcopy_revisions(%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i64, i64, i8*, i8*, i32, i8*, i32 (i8*)*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__write_current(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32 (i8*)*, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_io_copy_dir_recursively(i8*, i32, i32, i32, i32 (i8*)*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__hotcopy(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_set_file_read_write(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__del_rep_reference(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @svn_fs_x__reset_revprop_generation_file(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_fs_x__write_format(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
