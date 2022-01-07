; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_probe_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_probe_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_LOCKED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_wc_adm_probe_retrieve(%struct.TYPE_17__** %0, %struct.TYPE_17__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_18__* @svn_dirent_get_absolute(i8** %11, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(%struct.TYPE_18__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.TYPE_18__* @svn_wc__db_read_kind(i64* %12, i32 %24, i8* %25, i32 %26, i32 %27, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(%struct.TYPE_18__* %30)
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @svn_node_dir, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i8*, i8** %8, align 8
  store i8* %36, i8** %10, align 8
  br label %54

37:                                               ; preds = %4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @svn_node_unknown, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i8* @svn_dirent_dirname(i8* %42, i32* %43)
  store i8* %44, i8** %10, align 8
  br label %53

45:                                               ; preds = %37
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call %struct.TYPE_18__* @probe(i32 %48, i8** %10, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(%struct.TYPE_18__* %51)
  br label %53

53:                                               ; preds = %45, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call %struct.TYPE_18__* @svn_wc_adm_retrieve(%struct.TYPE_17__** %55, %struct.TYPE_17__* %56, i8* %57, i32* %58)
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %13, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %61 = icmp ne %struct.TYPE_18__* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %54
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SVN_ERR_WC_NOT_LOCKED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %70 = call i32 @svn_error_clear(%struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call %struct.TYPE_18__* @probe(i32 %73, i8** %10, i8* %74, i32* %75)
  %77 = call i32 @SVN_ERR(%struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call %struct.TYPE_18__* @svn_wc_adm_retrieve(%struct.TYPE_17__** %78, %struct.TYPE_17__* %79, i8* %80, i32* %81)
  %83 = call i32 @SVN_ERR(%struct.TYPE_18__* %82)
  br label %87

84:                                               ; preds = %62, %54
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %86 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %85)
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %5, align 8
  br label %89

87:                                               ; preds = %68
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %5, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %90
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc__db_read_kind(i64*, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @probe(i32, i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc_adm_retrieve(%struct.TYPE_17__**, %struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
