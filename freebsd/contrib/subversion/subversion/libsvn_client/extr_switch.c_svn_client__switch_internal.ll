; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_switch.c_svn_client__switch_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_switch.c_svn_client__switch_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_LOCKED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_client__switch_internal(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, %struct.TYPE_19__* %11, i32* %12) #0 {
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_19__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_18__*, align 8
  %32 = alloca %struct.TYPE_18__*, align 8
  %33 = alloca %struct.TYPE_18__*, align 8
  %34 = alloca i32*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %26, align 8
  store i32* %12, i32** %27, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %13
  %40 = load i32*, i32** %27, align 8
  %41 = call i32* @apr_hash_make(i32* %40)
  br label %43

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32* [ %41, %39 ], [ null, %42 ]
  store i32* %44, i32** %34, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @SVN_ERR_ASSERT(i8* %45)
  %47 = load i8*, i8** %16, align 8
  %48 = load i32*, i32** %27, align 8
  %49 = call i32 @svn_dirent_get_absolute(i8** %28, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %28, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32*, i32** %27, align 8
  %57 = load i32*, i32** %27, align 8
  %58 = call %struct.TYPE_18__* @svn_wc__acquire_write_lock(i8** %29, i32 %53, i8* %54, i32 %55, i32* %56, i32* %57)
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %31, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %60 = icmp ne %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %43
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SVN_ERR_WC_LOCKED, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %69 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %68)
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %14, align 8
  br label %121

70:                                               ; preds = %61, %43
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  %73 = icmp eq %struct.TYPE_18__* %71, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %30, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %76 = call i32 @svn_error_clear(%struct.TYPE_18__* %75)
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %34, align 8
  %79 = load i8*, i8** %28, align 8
  %80 = load i8*, i8** %29, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %24, align 4
  %89 = load i32*, i32** %25, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %91 = load i32*, i32** %27, align 8
  %92 = call %struct.TYPE_18__* @switch_internal(i32* %77, i32* %78, i8* %79, i8* %80, i8* %81, i32* %82, i32* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32* %89, %struct.TYPE_19__* %90, i32* %91)
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %32, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %94 = icmp ne %struct.TYPE_18__* %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %70
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32*, i32** %34, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %103 = load i32*, i32** %27, align 8
  %104 = call %struct.TYPE_18__* @svn_client__resolve_conflicts(i32* null, i32* %101, %struct.TYPE_19__* %102, i32* %103)
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %32, align 8
  br label %105

105:                                              ; preds = %100, %95, %70
  %106 = load i32, i32* %30, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %29, align 8
  %113 = load i32*, i32** %27, align 8
  %114 = call %struct.TYPE_18__* @svn_wc__release_write_lock(i32 %111, i8* %112, i32* %113)
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %33, align 8
  br label %117

115:                                              ; preds = %105
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %33, align 8
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %120 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %118, %struct.TYPE_18__* %119)
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %14, align 8
  br label %121

121:                                              ; preds = %117, %67
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  ret %struct.TYPE_18__* %122
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc__acquire_write_lock(i8**, i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @switch_internal(i32*, i32*, i8*, i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_client__resolve_conflicts(i32*, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
