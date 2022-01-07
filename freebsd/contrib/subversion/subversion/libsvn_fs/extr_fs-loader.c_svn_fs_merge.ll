; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i8**, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_merge(i8** %0, %struct.TYPE_10__* %1, i8* %2, %struct.TYPE_10__* %3, i8* %4, %struct.TYPE_10__* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i8** %0, i8*** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32 (i8**, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, i32*)*, i32 (i8**, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, i32*)** %20, align 8
  %22 = load i8**, i8*** %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 %21(i8** %22, %struct.TYPE_10__* %23, i8* %24, %struct.TYPE_10__* %25, i8* %26, %struct.TYPE_10__* %27, i8* %28, i32* %29)
  %31 = call i32* @svn_error_trace(i32 %30)
  ret i32* %31
}

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
