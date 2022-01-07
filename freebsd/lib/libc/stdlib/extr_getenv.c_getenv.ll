; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c_getenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@environ = common dso_local global i32** null, align 8
@envVars = common dso_local global i32* null, align 8
@intEnviron = common dso_local global i32** null, align 8
@envVarsTotal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getenv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @__strleneq(i8* %9)
  store i64 %10, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %40

14:                                               ; preds = %8
  %15 = load i32**, i32*** @environ, align 8
  %16 = icmp eq i32** %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32**, i32*** @environ, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i8* null, i8** %2, align 8
  br label %40

23:                                               ; preds = %17
  %24 = load i32*, i32** @envVars, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32**, i32*** @environ, align 8
  %28 = load i32**, i32*** @intEnviron, align 8
  %29 = icmp ne i32** %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %23
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i8* @__findenv_environ(i8* %31, i64 %32)
  store i8* %33, i8** %2, align 8
  br label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @envVarsTotal, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i8* @__findenv(i8* %37, i64 %38, i32* %4, i32 1)
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %34, %30, %22, %12
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i64 @__strleneq(i8*) #1

declare dso_local i8* @__findenv_environ(i8*, i64) #1

declare dso_local i8* @__findenv(i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
