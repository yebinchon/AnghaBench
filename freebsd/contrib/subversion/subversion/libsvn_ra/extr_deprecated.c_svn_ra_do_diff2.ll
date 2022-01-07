; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_diff2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_diff2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)* }
%struct.reporter_3in2_baton = type { i32, i32 }

@reporter_3in2_wrapper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_do_diff2(%struct.TYPE_6__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.reporter_3in2_baton*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %26 = load i32*, i32** %24, align 8
  %27 = call %struct.reporter_3in2_baton* @apr_palloc(i32* %26, i32 8)
  store %struct.reporter_3in2_baton* %27, %struct.reporter_3in2_baton** %25, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = call i64 @svn_path_is_empty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %12
  %32 = load i8*, i8** %17, align 8
  %33 = call i64 @svn_path_is_single_path_component(i8* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %12
  %36 = phi i1 [ true, %12 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i32**, i32*** %14, align 8
  store i32* @reporter_3in2_wrapper, i32** %39, align 8
  %40 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %25, align 8
  %41 = bitcast %struct.reporter_3in2_baton* %40 to i8*
  %42 = load i8**, i8*** %15, align 8
  store i8* %41, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)*, i32* (%struct.TYPE_6__*, i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %49 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %25, align 8
  %50 = getelementptr inbounds %struct.reporter_3in2_baton, %struct.reporter_3in2_baton* %49, i32 0, i32 1
  %51 = load %struct.reporter_3in2_baton*, %struct.reporter_3in2_baton** %25, align 8
  %52 = getelementptr inbounds %struct.reporter_3in2_baton, %struct.reporter_3in2_baton* %51, i32 0, i32 0
  %53 = load i32, i32* %16, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i32 %55)
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i8*, i8** %21, align 8
  %60 = load i32*, i32** %22, align 8
  %61 = load i8*, i8** %23, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = call i32* %47(%struct.TYPE_6__* %48, i32* %50, i32* %52, i32 %53, i8* %54, i32 %56, i32 %57, i32 %58, i8* %59, i32* %60, i8* %61, i32* %62)
  ret i32* %63
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
