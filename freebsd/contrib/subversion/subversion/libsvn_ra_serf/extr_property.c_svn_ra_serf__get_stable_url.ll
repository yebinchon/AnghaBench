; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__get_stable_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__get_stable_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_stable_url(i8** %0, i32* %1, %struct.TYPE_7__* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  br label %25

25:                                               ; preds = %20, %7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @get_baseline_info(i8** %15, i32* %17, %struct.TYPE_7__* %26, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_ra_serf__get_relative_path(i8** %16, i8* %32, %struct.TYPE_7__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i8* @svn_path_url_add_component2(i8* %37, i8* %38, i32* %39)
  %41 = load i8**, i8*** %8, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* %17, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %25
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_baseline_info(i8**, i32*, %struct.TYPE_7__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__get_relative_path(i8**, i8*, %struct.TYPE_7__*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
