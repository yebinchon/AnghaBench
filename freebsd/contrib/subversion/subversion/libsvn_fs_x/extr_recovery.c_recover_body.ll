; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_recovery.c_recover_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_recovery.c_recover_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Expected current rev to be <= %ld but found %ld\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Revision %ld has a non-file where its revprops file should be\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Revision %ld has a revs file but no revprops file\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Revision %ld has a revs file but the revprops file is inaccessible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @recover_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recover_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %7, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %8, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @svn_fs_x__reset_revprop_generation_file(%struct.TYPE_17__* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @TRUE, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @svn_fs_x__set_uuid(%struct.TYPE_17__* %29, i32 %32, i32* null, i64 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @discard_transactions(%struct.TYPE_17__* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @reset_txn_number(%struct.TYPE_17__* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @recover_get_largest_revision(%struct.TYPE_17__* %45, i64* %9, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @svn_fs_x__youngest_rev(i64* %10, %struct.TYPE_17__* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %57, i32* null, i32 %58, i64 %59, i64 %60)
  store i32* %61, i32** %3, align 8
  br label %137

62:                                               ; preds = %2
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @svn_fs_x__is_packed_revprop(%struct.TYPE_17__* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @svn_fs_x__packed_revprop_available(i64* %11, %struct.TYPE_17__* %68, i64 %69, i32* %70)
  store i64 %71, i64* %12, align 8
  br label %97

72:                                               ; preds = %62
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @svn_fs_x__path_revprops(%struct.TYPE_17__* %73, i64 %74, i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @svn_io_check_path(i32 %76, i64* %13, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @svn_node_file, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %12, align 8
  br label %96

86:                                               ; preds = %72
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @svn_node_none, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %92 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i64, i64* %9, align 8
  %94 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %91, i32* null, i32 %92, i64 %93)
  store i32* %94, i32** %3, align 8
  br label %137

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %105 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i64, i64* %9, align 8
  %107 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %104, i32* null, i32 %105, i64 %106)
  store i32* %107, i32** %3, align 8
  br label %137

108:                                              ; preds = %100
  %109 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %110 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i64, i64* %9, align 8
  %112 = call i32* (i32, i32*, i32, i64, ...) @svn_error_createf(i32 %109, i32* null, i32 %110, i64 %111)
  store i32* %112, i32** %3, align 8
  br label %137

113:                                              ; preds = %97
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @svn_fs_x__exists_rep_cache(i64* %14, %struct.TYPE_17__* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i64, i64* %14, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @svn_fs_x__del_rep_reference(%struct.TYPE_17__* %126, i64 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %125, %118
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = call i32* @svn_fs_x__write_current(%struct.TYPE_17__* %133, i64 %134, i32* %135)
  store i32* %136, i32** %3, align 8
  br label %137

137:                                              ; preds = %132, %108, %103, %90, %56
  %138 = load i32*, i32** %3, align 8
  ret i32* %138
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__reset_revprop_generation_file(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_fs_x__set_uuid(%struct.TYPE_17__*, i32, i32*, i64, i32*) #1

declare dso_local i32 @discard_transactions(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @reset_txn_number(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @recover_get_largest_revision(%struct.TYPE_17__*, i64*, i32*) #1

declare dso_local i32 @svn_fs_x__youngest_rev(i64*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_fs_x__is_packed_revprop(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @svn_fs_x__packed_revprop_available(i64*, %struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_x__path_revprops(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @svn_fs_x__exists_rep_cache(i64*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_fs_x__del_rep_reference(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32* @svn_fs_x__write_current(%struct.TYPE_17__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
