; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_lstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_lstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.stat = type { i32 }

@FILEARGS_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fileargs_lstat(%struct.TYPE_6__* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FILEARGS_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %79

27:                                               ; preds = %3
  %28 = load %struct.stat*, %struct.stat** %7, align 8
  %29 = icmp eq %struct.stat* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EFAULT, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %79

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %38, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %79

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.stat*, %struct.stat** %7, align 8
  %43 = call i32 @fileargs_get_lstat_cache(%struct.TYPE_6__* %40, i8* %41, %struct.stat* %42)
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %79

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32* @fileargs_fetch(%struct.TYPE_6__* %47, i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %79

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  %55 = call i8* @nvlist_get_binary(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  store i8* %55, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.stat*, %struct.stat** %7, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @memcpy(%struct.stat* %60, i8* %61, i64 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call i8* @nvlist_take_string(i32* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @fileargs_set_cache(%struct.TYPE_6__* %70, i32* %71)
  br label %76

73:                                               ; preds = %53
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @nvlist_destroy(i32* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @free(i8* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %52, %45, %37, %30, %25
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fileargs_get_lstat_cache(%struct.TYPE_6__*, i8*, %struct.stat*) #1

declare dso_local i32* @fileargs_fetch(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @memcpy(%struct.stat*, i8*, i64) #1

declare dso_local i8* @nvlist_take_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fileargs_set_cache(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
