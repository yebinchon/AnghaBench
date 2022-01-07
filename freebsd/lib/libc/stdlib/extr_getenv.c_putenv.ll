; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c_putenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c_putenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@envVars = common dso_local global %struct.TYPE_2__* null, align 8
@envVarsTotal = common dso_local global i32 0, align 4
@envActive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putenv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %10, %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %108

23:                                               ; preds = %14
  %24 = call i32 (...) @__merge_environ()
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = call i32 (...) @__build_env()
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %23
  store i32 -1, i32* %2, align 4
  br label %108

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @envVarsTotal, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @envActive, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32* @__findenv(i8* %37, i64 %38, i32* %5, i32 1)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load i32, i32* @envActive, align 4
  %57 = call i32 @__rebuild_environ(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %108

58:                                               ; preds = %41
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* @envVarsTotal, align 4
  store i32 %68, i32* %5, align 4
  %69 = call i32 (...) @__enlarge_env()
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %108

72:                                               ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i8* %73, i8** %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 -1, i32* %83, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i32 -1, i32* %93, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @__rebuild_environ(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %72, %71, %49, %32, %21
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @__merge_environ(...) #1

declare dso_local i32 @__build_env(...) #1

declare dso_local i32* @__findenv(i8*, i64, i32*, i32) #1

declare dso_local i32 @__rebuild_environ(i32) #1

declare dso_local i32 @__enlarge_env(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
