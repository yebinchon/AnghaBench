; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_txn_body_dag_init_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_txn_body_dag_init_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i8*, i32 }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_26__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Corrupt DB: initial transaction id not '0' in filesystem '%s'\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Corrupt DB: initial copy id not '0' in filesystem '%s'\00", align 1
@copy_kind_real = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Corrupt DB: initial revision number is not '0' in filesystem '%s'\00", align 1
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_25__*)* @txn_body_dag_init_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_dag_init_fs(i8* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_29__, align 8
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %14 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %9, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @svn_fs_base__id_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = call i32 @memset(%struct.TYPE_29__* %6, i32 0, i32 16)
  %23 = load i32, i32* @svn_node_dir, align 4
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @svn_fs_bdb__put_node_revision(%struct.TYPE_27__* %26, i32* %27, %struct.TYPE_29__* %6, %struct.TYPE_25__* %28, i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @svn_fs_bdb__create_txn(i8** %11, %struct.TYPE_27__* %34, i32* %35, %struct.TYPE_25__* %36, i32 %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @svn_error_createf(i32 %46, i32 0, i32 %47, i32 %50)
  store i32* %51, i32** %3, align 8
  br label %126

52:                                               ; preds = %2
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @svn_fs_bdb__reserve_copy_id(i8** %12, %struct.TYPE_27__* %53, %struct.TYPE_25__* %54, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @svn_error_createf(i32 %64, i32 0, i32 %65, i32 %68)
  store i32* %69, i32** %3, align 8
  br label %126

70:                                               ; preds = %52
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* @copy_kind_real, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @svn_fs_bdb__create_copy(%struct.TYPE_27__* %71, i8* %72, i32* null, i32* null, i32* %73, i32 %74, %struct.TYPE_25__* %75, i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @svn_fs_bdb__put_rev(i64* %8, %struct.TYPE_27__* %83, %struct.TYPE_28__* %7, %struct.TYPE_25__* %84, i32 %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %70
  %93 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %94 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @svn_error_createf(i32 %93, i32 0, i32 %94, i32 %97)
  store i32* %98, i32** %3, align 8
  br label %126

99:                                               ; preds = %70
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @svn_fs_base__txn_make_committed(%struct.TYPE_27__* %100, i8* %101, i64 %102, %struct.TYPE_25__* %103, i32 %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = call i32 (...) @apr_time_now()
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @svn_time_to_cstring(i32 %109, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @strlen(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %120 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32* @svn_fs_base__set_rev_prop(%struct.TYPE_27__* %119, i32 0, i32 %120, i32* null, %struct.TYPE_26__* %10, %struct.TYPE_25__* %121, i32 %124)
  store i32* %125, i32** %3, align 8
  br label %126

126:                                              ; preds = %99, %92, %63, %45
  %127 = load i32*, i32** %3, align 8
  ret i32* %127
}

declare dso_local i32* @svn_fs_base__id_create(i8*, i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__put_node_revision(%struct.TYPE_27__*, i32*, %struct.TYPE_29__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @svn_fs_bdb__create_txn(i8**, %struct.TYPE_27__*, i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_bdb__reserve_copy_id(i8**, %struct.TYPE_27__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @svn_fs_bdb__create_copy(%struct.TYPE_27__*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @svn_fs_bdb__put_rev(i64*, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @svn_fs_base__txn_make_committed(%struct.TYPE_27__*, i8*, i64, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32* @svn_fs_base__set_rev_prop(%struct.TYPE_27__*, i32, i32, i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
