; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_getxml.c_geom_getxml.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_getxml.c_geom_getxml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"kern.geom.confxml\00", align 1
@GEOM_GETXML_SLACK = common dso_local global i64 0, align 8
@GEOM_GETXML_RETRIES = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @geom_getxml() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  store i64 3, i64* %5, align 8
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %8 = call i64 @sysctlnametomib(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %7, i64* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %57

11:                                               ; preds = %0
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @sysctl(i32* %12, i64 %13, i8* null, i64* %3, i32* null, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* null, i8** %1, align 8
  br label %57

17:                                               ; preds = %11
  %18 = load i64, i64* @GEOM_GETXML_SLACK, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %3, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %53, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GEOM_GETXML_RETRIES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %1, align 8
  br label %57

31:                                               ; preds = %25
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %33 = load i64, i64* %5, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @sysctl(i32* %32, i64 %33, i8* %34, i64* %3, i32* null, i32 0)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = call i8* @reallocf(i8* %38, i64 %41)
  store i8* %42, i8** %1, align 8
  br label %57

43:                                               ; preds = %31
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @ENOMEM, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8* null, i8** %1, align 8
  br label %57

50:                                               ; preds = %43
  %51 = load i64, i64* %3, align 8
  %52 = mul i64 %51, 2
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %21

56:                                               ; preds = %21
  store i8* null, i8** %1, align 8
  br label %57

57:                                               ; preds = %56, %49, %37, %30, %16, %10
  %58 = load i8*, i8** %1, align 8
  ret i8* %58
}

declare dso_local i64 @sysctlnametomib(i8*, i32*, i64*) #1

declare dso_local i64 @sysctl(i32*, i64, i8*, i64*, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
