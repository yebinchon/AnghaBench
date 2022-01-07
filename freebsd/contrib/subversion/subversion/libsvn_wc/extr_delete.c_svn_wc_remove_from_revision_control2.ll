; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_svn_wc_remove_from_revision_control2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_svn_wc_remove_from_revision_control2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@remove_from_revision_status_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_remove_from_revision_control2(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %7
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @svn_depth_infinity, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @remove_from_revision_status_callback, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @svn_wc_walk_status(%struct.TYPE_4__* %18, i8* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32* null, i32 %24, i32* null, i32 %25, i8* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  br label %30

30:                                               ; preds = %17, %7
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @svn_wc__internal_remove_from_revision_control(i32 %33, i8* %34, i64 %35, i32 %36, i8* %37, i32* %38)
  %40 = call i32* @svn_error_trace(i32 %39)
  ret i32* %40
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_walk_status(%struct.TYPE_4__*, i8*, i32, i32, i32, i32, i32*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__internal_remove_from_revision_control(i32, i8*, i64, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
