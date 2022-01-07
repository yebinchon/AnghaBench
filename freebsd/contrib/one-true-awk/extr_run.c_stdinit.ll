; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_stdinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_stdinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@FOPEN_MAX = common dso_local global i32 0, align 4
@nfiles = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"can't allocate file memory for %u files\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1
@LT = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@GT = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"/dev/stderr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stdinit() #0 {
  %1 = load i32, i32* @FOPEN_MAX, align 4
  store i32 %1, i32* @nfiles, align 4
  %2 = load i32, i32* @nfiles, align 4
  %3 = call %struct.TYPE_3__* @calloc(i32 %2, i32 24)
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** @files, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @nfiles, align 4
  %8 = call i32 @FATAL(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @stdin, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = load i8*, i8** @LT, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @stdout, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  %28 = load i8*, i8** @GT, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* @stderr, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %38, align 8
  %39 = load i8*, i8** @GT, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @files, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i32 @FATAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
