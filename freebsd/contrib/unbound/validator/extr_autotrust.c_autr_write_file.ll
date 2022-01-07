; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_write_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64 }
%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [45 x i8] c"autr_write_file: Module environment is NULL.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s.%d-%d\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"autotrust: write to disk: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"could not open autotrust file for writing, %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"could not completely write: %s\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"could not fflush(%s): %s\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"could not complete write: %s: %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"autotrust: replaced %s\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"rename(%s to %s): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autr_write_file(%struct.module_env* %0, %struct.trust_anchor* %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.trust_anchor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2048 x i8], align 16
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %4, align 8
  %8 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %9 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %14 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @log_assert(%struct.TYPE_2__* %15)
  %17 = load %struct.module_env*, %struct.module_env** %3, align 8
  %18 = icmp ne %struct.module_env* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %104

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 (...) @getpid()
  %25 = trunc i64 %24 to i32
  %26 = load %struct.module_env*, %struct.module_env** %3, align 8
  %27 = getelementptr inbounds %struct.module_env, %struct.module_env* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.module_env*, %struct.module_env** %3, align 8
  %32 = getelementptr inbounds %struct.module_env, %struct.module_env* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %35, %30 ], [ 0, %36 ]
  %39 = call i32 @snprintf(i8* %22, i32 2048, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25, i32 %38)
  %40 = load i32, i32* @VERB_ALGO, align 4
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %42 = call i32 @verbose(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 (i8*, i8*, ...) @fatal_exit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %48, i32 %50)
  br label %104

52:                                               ; preds = %37
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %55 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %56 = call i32 @autr_write_contents(i32* %53, i8* %54, %struct.trust_anchor* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @fclose(i32* %59)
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %62 = call i32 @unlink(i8* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, i8*, ...) @fatal_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %104

65:                                               ; preds = %52
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @fflush(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @strerror(i32 %71)
  %73 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @_fileno(i32* %75)
  %77 = call i64 @_get_osfhandle(i32 %76)
  %78 = trunc i64 %77 to i32
  %79 = call i32 @FlushFileBuffers(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @fclose(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 (i8*, i8*, ...) @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %84, i32 %86)
  %88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %89 = call i32 @unlink(i8* %88)
  br label %104

90:                                               ; preds = %74
  %91 = load i32, i32* @VERB_ALGO, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @verbose(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %92)
  %94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @rename(i8* %94, i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 @strerror(i32 %101)
  %103 = call i32 (i8*, i8*, ...) @fatal_exit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %99, i8* %100, i32 %102)
  br label %104

104:                                              ; preds = %19, %47, %58, %83, %98, %90
  ret void
}

declare dso_local i32 @log_assert(%struct.TYPE_2__*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fatal_exit(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @autr_write_contents(i32*, i8*, %struct.trust_anchor*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @FlushFileBuffers(i32) #1

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i32 @_fileno(i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
