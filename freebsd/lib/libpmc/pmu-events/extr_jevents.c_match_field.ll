; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_match_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_match_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { i32, i64 }

@fields = common dso_local global %struct.field* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8**, i32*)* @match_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_field(i8* %0, i32* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.field*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.field*, %struct.field** @fields, align 8
  store %struct.field* %16, %struct.field** %12, align 8
  br label %17

17:                                               ; preds = %43, %5
  %18 = load %struct.field*, %struct.field** %12, align 8
  %19 = getelementptr inbounds %struct.field, %struct.field* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.field*, %struct.field** %12, align 8
  %26 = getelementptr inbounds %struct.field, %struct.field* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @json_streq(i8* %23, i32* %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @cut_comma(i8* %34, i32* %13)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = load %struct.field*, %struct.field** %12, align 8
  %39 = getelementptr inbounds %struct.field, %struct.field* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @addfield(i8* %36, i8** %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %40, i32* %13)
  store i32 1, i32* %6, align 4
  br label %47

42:                                               ; preds = %30, %22
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.field*, %struct.field** %12, align 8
  %45 = getelementptr inbounds %struct.field, %struct.field* %44, i32 1
  store %struct.field* %45, %struct.field** %12, align 8
  br label %17

46:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i64 @json_streq(i8*, i32*, i64) #1

declare dso_local i32 @cut_comma(i8*, i32*) #1

declare dso_local i32 @addfield(i8*, i8**, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
