; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_limit_buckets.c_serf_limit_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_limit_buckets.c_serf_limit_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@APR_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32, i32*, i8**, i64*)* @serf_limit_readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serf_limit_readline(%struct.TYPE_4__* %0, i32 %1, i32* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64*, i64** %11, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @APR_EOF, align 8
  store i64 %23, i64* %6, align 8
  br label %55

24:                                               ; preds = %5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = call i64 @serf_bucket_readline(i32 %27, i32 %28, i32* %29, i8** %30, i64* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @SERF_BUCKET_READ_ERROR(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %36, %24
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @APR_EOF, align 8
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %51, %48, %43
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %53, %21
  %56 = load i64, i64* %6, align 8
  ret i64 %56
}

declare dso_local i64 @serf_bucket_readline(i32, i32, i32*, i8**, i64*) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
