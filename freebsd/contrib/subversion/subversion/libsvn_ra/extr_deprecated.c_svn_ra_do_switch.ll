; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)* }
%struct.reporter_3in2_baton = type { i32, i32 }

@reporter_3in2_wrapper = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_do_switch(%struct.TYPE_6__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7, i8* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.reporter_3in2_baton*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i8** %2, i8*** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %22 = load i32*, i32** %20, align 8
  %23 = call %struct.reporter_3in2_baton* @apr_palloc(i32* %22, i32 8)
  store %struct.reporter_3in2_baton* %23, %struct.reporter_3in2_baton** %21, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = call i64 @svn_path_is_empty(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %10
  %28 = load i8*, i8** %15, align 8
  %29 = call i64 @svn_path_is_single_path_component(i8* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi i1 [ true, %10 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i32**, i32*** %12, align 8
  store i32* @reporter_3in2_wrapper, i32** %35, align 8
  %36 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %21, align 8
  %37 = bitcast %struct.reporter_3in2_baton* %36 to i8*
  %38 = load i8**, i8*** %13, align 8
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)*, i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %21, align 8
  %46 = getelementptr inbounds %struct.reporter_3in2_baton, %struct.reporter_3in2_baton* %45, i32 0, i32 1
  %47 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %21, align 8
  %48 = getelementptr inbounds %struct.reporter_3in2_baton, %struct.reporter_3in2_baton* %47, i32 0, i32 0
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i32 %51)
  %53 = load i8*, i8** %17, align 8
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i32*, i32** %20, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32* %43(%struct.TYPE_6__* %44, i32* %46, i32* %48, i32 %49, i8* %50, i32 %52, i8* %53, i32 %54, i32 %55, i32* %56, i8* %57, i32* %58, i32* %59)
  ret i32* %60
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
