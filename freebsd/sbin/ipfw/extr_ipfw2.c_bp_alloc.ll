; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_bp_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_bp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i64, i64, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bp_alloc(%struct.buf_pr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf_pr*, align 8
  %5 = alloca i64, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %7 = call i32 @memset(%struct.buf_pr* %6, i32 0, i32 32)
  %8 = load i64, i64* %5, align 8
  %9 = call i32* @calloc(i32 1, i64 %8)
  %10 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %11 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = icmp eq i32* %9, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %17 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %20 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %23 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %25 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %28 = getelementptr inbounds %struct.buf_pr, %struct.buf_pr* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %15, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @memset(%struct.buf_pr*, i32, i32) #1

declare dso_local i32* @calloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
