; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_humanize_number_test.c_str_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_humanize_number_test.c_str_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@MAX_STR_FLAGS_RESULT = common dso_local global i32 0, align 4
@flags = common dso_local global %struct.TYPE_2__* null, align 8
@separator = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @str_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @str_flags(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @MAX_STR_FLAGS_RESULT, align 4
  %8 = call i8* @malloc(i32 %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flags, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** @separator, align 8
  %31 = load i32, i32* @MAX_STR_FLAGS_RESULT, align 4
  %32 = call i32 @strlcat(i8* %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flags, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @MAX_STR_FLAGS_RESULT, align 4
  %41 = call i32 @strlcat(i8* %34, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @MAX_STR_FLAGS_RESULT, align 4
  %54 = call i32 @strlcat(i8* %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
