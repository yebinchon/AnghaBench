; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cleanup.c_do_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cleanup.c_do_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cleanup_status_walk_baton = type { %struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@svn_depth_infinity = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cleanup_status_walk = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_3__*, i32*)* @do_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_cleanup(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, %struct.TYPE_3__* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.cleanup_status_walk_baton, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = call i32 @svn_wc_cleanup4(i32 %25, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i32 %33, i32 %36, i32 %39, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %10
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @svn_io_sleep_for_timestamps(i8* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %10
  %53 = load i8*, i8** %16, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %17, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %18, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %109

61:                                               ; preds = %58, %55, %52
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 7
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 6
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 5
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %77 = getelementptr inbounds %struct.cleanup_status_walk_baton, %struct.cleanup_status_walk_baton* %21, i32 0, i32 0
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @svn_wc_get_default_ignores(i32** %22, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @svn_depth_infinity, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32*, i32** %22, align 8
  %93 = load i32, i32* @cleanup_status_walk, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @svn_wc_walk_status(i32 %86, i8* %87, i32 %88, i32 %89, i8* %90, i32 %91, i32* %92, i32 %93, %struct.cleanup_status_walk_baton* %21, i32 %96, i32 %99, i32* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = load i32*, i32** %20, align 8
  %108 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %101, i32 %104, i8* %105, i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %61, %58
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_cleanup4(i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32 @svn_wc_get_default_ignores(i32**, i32, i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc_walk_status(i32, i8*, i32, i32, i8*, i32, i32*, i32, %struct.cleanup_status_walk_baton*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
