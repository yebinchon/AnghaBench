; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_memstream.c_memstream_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_memstream.c_memstream_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstream = type { i64, i8** }

@SSIZE_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstream*, i64)* @memstream_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memstream_grow(%struct.memstream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.memstream* %0, %struct.memstream** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @SSIZE_MAX, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i64, i64* @SSIZE_MAX, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %7, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.memstream*, %struct.memstream** %4, align 8
  %22 = getelementptr inbounds %struct.memstream, %struct.memstream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  %26 = load %struct.memstream*, %struct.memstream** %4, align 8
  %27 = getelementptr inbounds %struct.memstream, %struct.memstream* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i8* @realloc(i8* %29, i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %25
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.memstream*, %struct.memstream** %4, align 8
  %38 = getelementptr inbounds %struct.memstream, %struct.memstream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.memstream*, %struct.memstream** %4, align 8
  %44 = getelementptr inbounds %struct.memstream, %struct.memstream* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @memset(i8* %41, i32 0, i64 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.memstream*, %struct.memstream** %4, align 8
  %50 = getelementptr inbounds %struct.memstream, %struct.memstream* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  store i8* %48, i8** %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.memstream*, %struct.memstream** %4, align 8
  %54 = getelementptr inbounds %struct.memstream, %struct.memstream* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i32 1, i32* %3, align 4
  br label %57

55:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
