; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_try_process_file_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_try_process_file_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_try_process_file_contents(i32* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)*, i32 (i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)** %17, align 8
  %19 = icmp eq i32 (i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %23, i32** %7, align 8
  br label %38

24:                                               ; preds = %6
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)*, i32 (i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)** %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 %29(i32* %30, %struct.TYPE_6__* %31, i8* %32, i32 %33, i8* %34, i32* %35)
  %37 = call i32* @svn_error_trace(i32 %36)
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %24, %20
  %39 = load i32*, i32** %7, align 8
  ret i32* %39
}

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
