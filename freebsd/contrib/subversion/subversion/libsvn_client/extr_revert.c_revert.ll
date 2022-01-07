; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_revert.c_revert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_revert.c_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.revert_with_write_lock_baton = type { %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 (i32, %struct.TYPE_14__*, i32*)*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc_notify_skip = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i8*, i32*, i32*)* @revert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @revert(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.revert_with_write_lock_baton*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.revert_with_write_lock_baton*
  store %struct.revert_with_write_lock_baton* %12, %struct.revert_with_write_lock_baton** %8, align 8
  %13 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %14 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %19 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %22 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %25 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %28 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %31 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %34 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %37 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %42 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %47 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %49, align 8
  %51 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %52 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call %struct.TYPE_15__* @svn_wc_revert5(i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %40, i32 %45, i32 (i32, %struct.TYPE_14__*, i32*)* %50, i32 %55, i32* %56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %9, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %115

60:                                               ; preds = %3
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SVN_ERR_ENTRY_NOT_FOUND, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SVN_ERR_UNVERSIONED_RESOURCE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %72, %66, %60
  %79 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %80 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %82, align 8
  %84 = icmp ne i32 (i32, %struct.TYPE_14__*, i32*)* %83, null
  br i1 %84, label %85, label %108

85:                                               ; preds = %78
  %86 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %87 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @svn_wc_notify_skip, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call %struct.TYPE_14__* @svn_wc_create_notify(i32 %88, i32 %89, i32* %90)
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %10, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %94, align 8
  %95 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %96 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %98, align 8
  %100 = load %struct.revert_with_write_lock_baton*, %struct.revert_with_write_lock_baton** %8, align 8
  %101 = getelementptr inbounds %struct.revert_with_write_lock_baton, %struct.revert_with_write_lock_baton* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 %99(i32 %104, %struct.TYPE_14__* %105, i32* %106)
  br label %108

108:                                              ; preds = %85, %78
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = call i32 @svn_error_clear(%struct.TYPE_15__* %109)
  br label %114

111:                                              ; preds = %72
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %112)
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %4, align 8
  br label %117

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %3
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %4, align 8
  br label %117

117:                                              ; preds = %115, %111
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %118
}

declare dso_local %struct.TYPE_15__* @svn_wc_revert5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (i32, %struct.TYPE_14__*, i32*)*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
