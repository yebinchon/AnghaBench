; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i32, i32, i32*, i8*, i32*, i32*)* }
%struct.reporter_3in2_baton = type { i32, i32 }

@reporter_3in2_wrapper = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_do_update(%struct.TYPE_6__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i32* %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.reporter_3in2_baton*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i32*, i32** %18, align 8
  %21 = call %struct.reporter_3in2_baton* @apr_palloc(i32* %20, i32 8)
  store %struct.reporter_3in2_baton* %21, %struct.reporter_3in2_baton** %19, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i64 @svn_path_is_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %9
  %26 = load i8*, i8** %14, align 8
  %27 = call i64 @svn_path_is_single_path_component(i8* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i1 [ true, %9 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load i32**, i32*** %11, align 8
  store i32* @reporter_3in2_wrapper, i32** %33, align 8
  %34 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %19, align 8
  %35 = bitcast %struct.reporter_3in2_baton* %34 to i8*
  %36 = load i8**, i8*** %12, align 8
  store i8* %35, i8** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i32, i32, i32*, i8*, i32*, i32*)*, i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i32, i32, i32*, i8*, i32*, i32*)** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %19, align 8
  %44 = getelementptr inbounds %struct.reporter_3in2_baton, %struct.reporter_3in2_baton* %43, i32 0, i32 1
  %45 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %19, align 8
  %46 = getelementptr inbounds %struct.reporter_3in2_baton, %struct.reporter_3in2_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %13, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i32 %49)
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32* %41(%struct.TYPE_6__* %42, i32* %44, i32* %46, i32 %47, i8* %48, i32 %50, i32 %51, i32 %52, i32* %53, i8* %54, i32* %55, i32* %56)
  ret i32* %57
}

declare dso_local %struct.reporter_3in2_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i64 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32 @SVN_DEPTH_INFINITY_OR_FILES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
