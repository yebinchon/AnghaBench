; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c_unsetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c_unsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@envVars = common dso_local global %struct.TYPE_2__* null, align 8
@envVarsTotal = common dso_local global i32 0, align 4
@envActive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unsetenv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @__strleneq(i8* %10)
  store i64 %11, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %63

15:                                               ; preds = %9
  %16 = call i32 (...) @__merge_environ()
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 (...) @__build_env()
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %15
  store i32 -1, i32* %2, align 4
  br label %63

25:                                               ; preds = %21, %18
  %26 = load i32, i32* @envVarsTotal, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @envActive, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %50, %25
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32* @__findenv(i8* %30, i64 %31, i32* %4, i32 1)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @__remove_putenv(i32 %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @envActive, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @__rebuild_environ(i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %24, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @__strleneq(i8*) #1

declare dso_local i32 @__merge_environ(...) #1

declare dso_local i32 @__build_env(...) #1

declare dso_local i32* @__findenv(i8*, i64, i32*, i32) #1

declare dso_local i32 @__remove_putenv(i32) #1

declare dso_local i32 @__rebuild_environ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
