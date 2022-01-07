; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_json.c_parse_json.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_json.c_parse_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@JSMN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s: json error %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_json(i8* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = call i8* @mapfile(i8* %14, i64* %15)
  %17 = load i8**, i8*** %7, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %70

22:                                               ; preds = %4
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %24, 16
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32* @malloc(i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %64

32:                                               ; preds = %22
  %33 = call i32 @jsmn_init(%struct.TYPE_4__* %10)
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @jsmn_parse(%struct.TYPE_4__* %10, i8* %35, i64 %37, i32* %38, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @JSMN_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @jsmn_strerror(i64 %49)
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %50)
  br label %61

52:                                               ; preds = %32
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32*, i32** %11, align 8
  store i32* %60, i32** %5, align 8
  br label %70

61:                                               ; preds = %47
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @free(i32* %62)
  br label %64

64:                                               ; preds = %61, %31
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @unmapfile(i8* %66, i64 %68)
  store i32* null, i32** %5, align 8
  br label %70

70:                                               ; preds = %64, %59, %21
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i8* @mapfile(i8*, i64*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @jsmn_init(%struct.TYPE_4__*) #1

declare dso_local i64 @jsmn_parse(%struct.TYPE_4__*, i8*, i64, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i32 @jsmn_strerror(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @unmapfile(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
