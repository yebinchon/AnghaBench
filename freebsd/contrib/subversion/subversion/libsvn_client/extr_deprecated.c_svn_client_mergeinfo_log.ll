; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_mergeinfo_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_mergeinfo_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }

@svn_opt_revision_unspecified = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_mergeinfo_log(i32 %0, i8* %1, %struct.TYPE_8__* %2, i8* %3, %struct.TYPE_8__* %4, i32 %5, i8* %6, i32 %7, i32 %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_8__, align 8
  %26 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %14, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %15, align 8
  store i8* %3, i8** %16, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %27 = load i8*, i8** @svn_opt_revision_unspecified, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** @svn_opt_revision_unspecified, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %36 = load i32, i32* %18, align 4
  %37 = load i8*, i8** %19, align 8
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %21, align 4
  %40 = load i32*, i32** %22, align 8
  %41 = load i32*, i32** %23, align 8
  %42 = load i32*, i32** %24, align 8
  %43 = call i32* @svn_client_mergeinfo_log2(i32 %31, i8* %32, %struct.TYPE_8__* %33, i8* %34, %struct.TYPE_8__* %35, %struct.TYPE_8__* %25, %struct.TYPE_8__* %26, i32 %36, i8* %37, i32 %38, i32 %39, i32* %40, i32* %41, i32* %42)
  ret i32* %43
}

declare dso_local i32* @svn_client_mergeinfo_log2(i32, i8*, %struct.TYPE_8__*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i8*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
