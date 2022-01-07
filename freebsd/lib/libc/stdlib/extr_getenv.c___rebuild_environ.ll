; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___rebuild_environ.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___rebuild_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@environSize = common dso_local global i32 0, align 4
@intEnviron = common dso_local global i8** null, align 8
@envActive = common dso_local global i32 0, align 4
@envVarsTotal = common dso_local global i32 0, align 4
@envVars = common dso_local global %struct.TYPE_2__* null, align 8
@environ = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__rebuild_environ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rebuild_environ(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @environSize, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %7, align 4
  %14 = load i8**, i8*** @intEnviron, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i8** @reallocarray(i8** %14, i32 %16, i32 8)
  store i8** %17, i8*** %4, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %61

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* @environSize, align 4
  %23 = load i8**, i8*** %4, align 8
  store i8** %23, i8*** @intEnviron, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @envActive, align 4
  %26 = load i32, i32* @envVarsTotal, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %52, %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @envVars, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** @intEnviron, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %39, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  br label %28

55:                                               ; preds = %28
  %56 = load i8**, i8*** @intEnviron, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  store i8* null, i8** %59, align 8
  %60 = load i8**, i8*** @intEnviron, align 8
  store i8** %60, i8*** @environ, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8** @reallocarray(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
