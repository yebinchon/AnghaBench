; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_lock-tokens-table.c_svn_fs_bdb__lock_token_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_lock-tokens-table.c_svn_fs_bdb__lock_token_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__*, i32, i32, i32, i32)* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"lock-tokens\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"reading lock token\00", align 1
@SVN_ERR_FS_LOCK_EXPIRED = common dso_local global i64 0, align 8
@SVN_ERR_FS_BAD_LOCK_TOKEN = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_31__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @svn_fs_bdb__lock_token_get(i8** %0, %struct.TYPE_30__* %1, i8* %2, %struct.TYPE_28__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_33__, align 4
  %14 = alloca %struct.TYPE_33__, align 4
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_31__*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  store %struct.TYPE_32__* %22, %struct.TYPE_32__** %12, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %24 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_28__* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_29__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_29__*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_33__* %13, i8* %36)
  %38 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_33__* %14)
  %39 = call i32 %29(%struct.TYPE_29__* %32, i32 %35, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %18, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_33__* %14, i32* %40)
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @DB_NOTFOUND, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %5
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call %struct.TYPE_31__* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_30__* %46, i8* %47)
  store %struct.TYPE_31__* %48, %struct.TYPE_31__** %6, align 8
  br label %106

49:                                               ; preds = %5
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %51 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @BDB_WRAP(%struct.TYPE_30__* %50, i32 %51, i32 %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @apr_pstrmemdup(i32* %55, i32 %57, i32 %59)
  store i8* %60, i8** %17, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call %struct.TYPE_31__* @svn_fs_bdb__lock_get(i32** %16, %struct.TYPE_30__* %61, i8* %62, %struct.TYPE_28__* %63, i32* %64)
  store %struct.TYPE_31__* %65, %struct.TYPE_31__** %15, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %67 = icmp ne %struct.TYPE_31__* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %49
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SVN_ERR_FS_LOCK_EXPIRED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74, %68
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call %struct.TYPE_31__* @svn_fs_bdb__lock_token_delete(%struct.TYPE_30__* %81, i8* %82, %struct.TYPE_28__* %83, i32* %84)
  store %struct.TYPE_31__* %85, %struct.TYPE_31__** %19, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %87 = icmp ne %struct.TYPE_31__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %91 = call i32 @svn_error_compose(%struct.TYPE_31__* %89, %struct.TYPE_31__* %90)
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %94 = call %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__* %93)
  store %struct.TYPE_31__* %94, %struct.TYPE_31__** %6, align 8
  br label %106

95:                                               ; preds = %74, %49
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %97 = icmp ne %struct.TYPE_31__* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %100 = call %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__* %99)
  store %struct.TYPE_31__* %100, %struct.TYPE_31__** %6, align 8
  br label %106

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %17, align 8
  %104 = load i8**, i8*** %7, align 8
  store i8* %103, i8** %104, align 8
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %105, %struct.TYPE_31__** %6, align 8
  br label %106

106:                                              ; preds = %102, %98, %92, %45
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  ret %struct.TYPE_31__* %107
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_33__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_31__* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_31__* @svn_fs_bdb__lock_get(i32**, %struct.TYPE_30__*, i8*, %struct.TYPE_28__*, i32*) #1

declare dso_local %struct.TYPE_31__* @svn_fs_bdb__lock_token_delete(%struct.TYPE_30__*, i8*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @svn_error_compose(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
