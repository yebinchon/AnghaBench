; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg-buffer.c_ibuf_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg-buffer.c_ibuf_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibuf = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ibuf_reserve(%struct.ibuf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ibuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
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
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ibuf_realloc(%struct.ibuf* %17, i64 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %37

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %25 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %28 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr i8, i8* %26, i64 %29
  store i8* %30, i8** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %33 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %23, %21
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @ibuf_realloc(%struct.ibuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
