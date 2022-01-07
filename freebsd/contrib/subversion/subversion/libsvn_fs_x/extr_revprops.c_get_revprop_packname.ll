; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_get_revprop_packname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_get_revprop_packname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@PATH_MANIFEST = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Revprop manifest for r%ld is empty\00", align 1
@manifest_entry_t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Revprop manifest for r%ld contains out-of-range revision r%ld\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Entries in revprop manifest for r%ld are not ordered\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)* @get_revprop_packname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_revprop_packname(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_15__, align 8
  %20 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %10, align 8
  store i32* null, i32** %11, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %16, align 4
  %34 = srem i32 %32, %33
  %35 = sub nsw i32 %29, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i64, i64* %17, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %17, align 8
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %39, %4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @svn_fs_x__path_pack_shard(%struct.TYPE_12__* %45, i32 %48, i32* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PATH_MANIFEST, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i8* @svn_dirent_join(i32 %55, i32 %56, i32* %57)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @svn_fs_x__read_content(i32** %11, i8* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @read_manifest(%struct.TYPE_14__** %64, i32* %65, i32 %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %44
  %80 = load i32, i32* @SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %80, i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %83)
  store i32* %84, i32** %5, align 8
  br label %156

85:                                               ; preds = %44
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %133, %85
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %136

94:                                               ; preds = %86
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @manifest_entry_t, align 4
  %100 = call i64 @APR_ARRAY_IDX(%struct.TYPE_14__* %97, i32 %98, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %18, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %17, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %94
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = icmp sge i64 %108, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %107, %94
  %115 = load i32, i32* @SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %18, align 8
  %120 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %115, i32* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %118, i64 %119)
  store i32* %120, i32** %5, align 8
  br label %156

121:                                              ; preds = %107
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %14, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* @SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %126, i32* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  store i32* %130, i32** %5, align 8
  br label %156

131:                                              ; preds = %121
  %132 = load i64, i64* %18, align 8
  store i64 %132, i64* %14, align 8
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %86

136:                                              ; preds = %86
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @get_entry(%struct.TYPE_14__* %139, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @manifest_entry_t, align 4
  %151 = call i64 @APR_ARRAY_IDX(%struct.TYPE_14__* %148, i32 %149, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = bitcast %struct.TYPE_15__* %145 to i8*
  %154 = bitcast %struct.TYPE_15__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 8, i1 false)
  %155 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %155, i32** %5, align 8
  br label %156

156:                                              ; preds = %136, %125, %114, %79
  %157 = load i32*, i32** %5, align 8
  ret i32* %157
}

declare dso_local i32 @svn_fs_x__path_pack_shard(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__read_content(i32**, i8*, i32*) #1

declare dso_local i32 @read_manifest(%struct.TYPE_14__**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32, ...) #1

declare dso_local i64 @APR_ARRAY_IDX(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @get_entry(%struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
