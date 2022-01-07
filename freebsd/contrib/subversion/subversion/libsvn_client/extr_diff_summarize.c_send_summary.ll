; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_send_summary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_send_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.summarize_baton_t = type { i32, i32 (%struct.TYPE_4__*, i32, i32*)*, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@svn_client_diff_summarize_kind_normal = common dso_local global i64 0, align 8
@svn_client_diff_summarize_kind_modified = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.summarize_baton_t*, i8*, i64, i64, i32, i32*)* @send_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_summary(%struct.summarize_baton_t* %0, i8* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.summarize_baton_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store %struct.summarize_baton_t* %0, %struct.summarize_baton_t** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = call %struct.TYPE_4__* @apr_pcalloc(i32* %14, i32 32)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @svn_client_diff_summarize_kind_normal, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %19, %6
  %23 = phi i1 [ true, %6 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %7, align 8
  %27 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @svn_relpath_skip_ancestor(i32 %28, i8* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @svn_client_diff_summarize_kind_modified, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @svn_client_diff_summarize_kind_normal, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %22
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %7, align 8
  %52 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_4__*, i32, i32*)*, i32 (%struct.TYPE_4__*, i32, i32*)** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %7, align 8
  %56 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 %53(%struct.TYPE_4__* %54, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
