; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_retry_checkout_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_retry_checkout_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@SVN_ERR_APMOD_BAD_BASELINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8**, i32*, i8*, i32*, i32*)* @retry_checkout_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @retry_checkout_node(i8** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %12, align 8
  store i32 5, i32* %13, align 4
  br label %15

15:                                               ; preds = %43, %5
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %17 = call i32 @svn_error_clear(%struct.TYPE_8__* %16)
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call %struct.TYPE_8__* @checkout_node(i8** %18, i32* %19, i8* %20, i32* %21, i32* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %12, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SVN_ERR_APMOD_BAD_BASELINE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %6, align 8
  br label %48

35:                                               ; preds = %26, %15
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %13, align 4
  %42 = icmp ne i32 %40, 0
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %15, label %45

45:                                               ; preds = %43
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %46)
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %6, align 8
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %49
}

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @checkout_node(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
