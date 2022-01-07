; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_resolved.c_svn_client_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_resolved.c_svn_client_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_resolve(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @svn_path_is_url(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %20 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @svn_error_createf(i32 %19, i32* null, i32 %20, i8* %21)
  store i32* %22, i32** %6, align 8
  br label %77

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @svn_dirent_get_absolute(i8** %12, i8* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @svn_wc__acquire_write_lock_for_resolve(i8** %14, i32 %30, i8* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32* @svn_wc__resolve_conflicts(i32 %38, i8* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32* %62)
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @svn_wc__release_write_lock(i32 %67, i8* %68, i32* %69)
  %71 = call i32* @svn_error_compose_create(i32* %64, i32 %70)
  store i32* %71, i32** %13, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_io_sleep_for_timestamps(i8* %72, i32* %73)
  %75 = load i32*, i32** %13, align 8
  %76 = call i32* @svn_error_trace(i32* %75)
  store i32* %76, i32** %6, align 8
  br label %77

77:                                               ; preds = %23, %18
  %78 = load i32*, i32** %6, align 8
  ret i32* %78
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__resolve_conflicts(i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
