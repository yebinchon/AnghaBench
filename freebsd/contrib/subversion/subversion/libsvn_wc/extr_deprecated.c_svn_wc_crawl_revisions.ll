; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crawl_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crawl_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrap_2to1_report_baton = type { i8*, i32* }
%struct.compat_notify_baton_t = type { i8*, i32 }

@wrap_2to1_reporter = common dso_local global i32 0, align 4
@compat_call_notify_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_crawl_revisions(i8* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.wrap_2to1_report_baton, align 8
  %24 = alloca %struct.compat_notify_baton_t, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = getelementptr inbounds %struct.wrap_2to1_report_baton, %struct.wrap_2to1_report_baton* %23, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = getelementptr inbounds %struct.wrap_2to1_report_baton, %struct.wrap_2to1_report_baton* %23, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %19, align 4
  %30 = getelementptr inbounds %struct.compat_notify_baton_t, %struct.compat_notify_baton_t* %24, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = getelementptr inbounds %struct.compat_notify_baton_t, %struct.compat_notify_baton_t* %24, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @compat_call_notify_func, align 4
  %39 = load i32*, i32** %21, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = call i32* @svn_wc_crawl_revisions2(i8* %33, i32* %34, i32* @wrap_2to1_reporter, %struct.wrap_2to1_report_baton* %23, i32 %35, i32 %36, i32 %37, i32 %38, %struct.compat_notify_baton_t* %24, i32* %39, i32* %40)
  ret i32* %41
}

declare dso_local i32* @svn_wc_crawl_revisions2(i8*, i32*, i32*, %struct.wrap_2to1_report_baton*, i32, i32, i32, i32, %struct.compat_notify_baton_t*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
