; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg-buffer.c_ibuf_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg-buffer.c_ibuf_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibuf = type { i64, i64, i64, i32* }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibuf_realloc(%struct.ibuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.ibuf* %0, %struct.ibuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %8 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %9, %10
  %12 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %13 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ERANGE, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %20 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %23 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = call i32* @realloc(i32* %21, i64 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %42

31:                                               ; preds = %18
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %34 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %36 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %41 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %30, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @realloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
