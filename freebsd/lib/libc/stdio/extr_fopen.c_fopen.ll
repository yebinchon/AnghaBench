; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopen.c_fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopen.c_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }

@DEFFILEMODE = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__sread = common dso_local global i32 0, align 4
@__swrite = common dso_local global i32 0, align 4
@__sseek = common dso_local global i32 0, align 4
@__sclose = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@__S2OAP = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @fopen(i8* noalias %0, i8* noalias %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @__sflags(i8* %10, i32* %9)
  store i32 %11, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %74

14:                                               ; preds = %2
  %15 = call %struct.TYPE_5__* (...) @__sfp()
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %74

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @DEFFILEMODE, align 4
  %22 = call i32 @_open(i8* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %74

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SHRT_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @_close(i32 %34)
  %36 = load i32, i32* @EMFILE, align 4
  store i32 %36, i32* @errno, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %74

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  %47 = load i32, i32* @__sread, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @__swrite, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @__sseek, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @__sclose, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @O_APPEND, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %37
  %64 = load i32, i32* @__S2OAP, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = load i32, i32* @SEEK_END, align 4
  %71 = call i32 @_sseek(%struct.TYPE_5__* %69, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %63, %37
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %3, align 8
  br label %74

74:                                               ; preds = %72, %31, %24, %17, %13
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %75
}

declare dso_local i32 @__sflags(i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @__sfp(...) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @_sseek(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
