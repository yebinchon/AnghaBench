; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_check_file_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_check_file_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i8* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_opt_revision_number = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, i32*, i8*, i8*, i32*, i32*)* @check_file_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @check_file_external(%struct.TYPE_14__* %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call %struct.TYPE_15__* @svn_wc__db_external_read(i64* %14, i64* %15, i32* null, i32* null, i32* null, i8** %16, i8** %17, i8** %18, i32* %20, i8* %21, i8* %22, i32* %23, i32* %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %19, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %6
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %36 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %35)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %7, align 8
  br label %89

37:                                               ; preds = %28
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %39 = call i32 @svn_error_clear(%struct.TYPE_15__* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %7, align 8
  br label %89

41:                                               ; preds = %6
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @svn_wc__db_status_normal, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @svn_node_file, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = call i64 @SVN_IS_VALID_REVNUM(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i8*, i8** @svn_opt_revision_number, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = bitcast %struct.TYPE_13__* %67 to i8*
  %71 = bitcast %struct.TYPE_13__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  br label %72

72:                                               ; preds = %56, %49
  %73 = load i8*, i8** %18, align 8
  %74 = call i64 @SVN_IS_VALID_REVNUM(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i8*, i8** @svn_opt_revision_number, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  br label %86

86:                                               ; preds = %76, %72
  br label %87

87:                                               ; preds = %86, %45, %41
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %7, align 8
  br label %89

89:                                               ; preds = %87, %37, %34
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %90
}

declare dso_local %struct.TYPE_15__* @svn_wc__db_external_read(i64*, i64*, i32*, i32*, i32*, i8**, i8**, i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
