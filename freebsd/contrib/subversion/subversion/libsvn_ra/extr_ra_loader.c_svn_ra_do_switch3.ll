; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_do_switch3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_do_switch3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_do_switch3(%struct.TYPE_6__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i32 %8, i32* %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %14, align 8
  store i32** %1, i32*** %15, align 8
  store i8** %2, i8*** %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = call i64 @svn_path_is_empty(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %13
  %31 = load i8*, i8** %18, align 8
  %32 = call i64 @svn_path_is_single_path_component(i8* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %13
  %35 = phi i1 [ true, %13 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @SVN_ERR_ASSERT(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32* (%struct.TYPE_6__*, i32**, i8**, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)**
  %43 = load i32* (%struct.TYPE_6__*, i32**, i8**, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)*, i32* (%struct.TYPE_6__*, i32**, i8**, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = load i32**, i32*** %15, align 8
  %46 = load i8**, i8*** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i8*, i8** %20, align 8
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i32*, i32** %23, align 8
  %54 = load i8*, i8** %24, align 8
  %55 = load i32*, i32** %25, align 8
  %56 = load i32*, i32** %26, align 8
  %57 = call i32* %43(%struct.TYPE_6__* %44, i32** %45, i8** %46, i32 %47, i8* %48, i32 %49, i8* %50, i32 %51, i32 %52, i32* %53, i8* %54, i32* %55, i32* %56)
  ret i32* %57
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i64 @svn_path_is_single_path_component(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
