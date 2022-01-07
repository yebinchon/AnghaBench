; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_do_status2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_do_status2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_do_status2(%struct.TYPE_6__* %0, i32** %1, i8** %2, i8* %3, i32 %4, i32 %5, i32* %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = call i64 @svn_path_is_empty(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %9
  %23 = load i8*, i8** %13, align 8
  %24 = call i64 @svn_path_is_single_path_component(i8* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %9
  %27 = phi i1 [ true, %9 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32* (%struct.TYPE_6__*, i32**, i8**, i8*, i32, i32, i32*, i8*, i32*)**
  %35 = load i32* (%struct.TYPE_6__*, i32**, i8**, i8*, i32, i32, i32*, i8*, i32*)*, i32* (%struct.TYPE_6__*, i32**, i8**, i8*, i32, i32, i32*, i8*, i32*)** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = load i32**, i32*** %11, align 8
  %38 = load i8**, i8*** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = call i32* %35(%struct.TYPE_6__* %36, i32** %37, i8** %38, i8* %39, i32 %40, i32 %41, i32* %42, i8* %43, i32* %44)
  ret i32* %45
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
