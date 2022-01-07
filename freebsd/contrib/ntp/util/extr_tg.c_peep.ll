; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg.c_peep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg.c_peep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFF = common dso_local global i32 0, align 4
@c6000 = common dso_local global i32* null, align 8
@buffer = common dso_local global i32* null, align 8
@bufcnt = common dso_local global i64 0, align 8
@c3000 = common dso_local global i32* null, align 8
@BUFLNG = common dso_local global i64 0, align 8
@fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peep(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @OFF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 10, i32* %7, align 4
  br label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 100
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %16
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 8
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %50 [
    i32 129, label %28
    i32 128, label %39
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** @c6000, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** @buffer, align 8
  %36 = load i64, i64* @bufcnt, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @bufcnt, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %38, align 4
  br label %55

39:                                               ; preds = %26
  %40 = load i32*, i32** @c3000, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** @buffer, align 8
  %47 = load i64, i64* @bufcnt, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* @bufcnt, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %49, align 4
  br label %55

50:                                               ; preds = %26
  %51 = load i32*, i32** @buffer, align 8
  %52 = load i64, i64* @bufcnt, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @bufcnt, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %39, %28
  %56 = load i64, i64* @bufcnt, align 8
  %57 = load i64, i64* @BUFLNG, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @fd, align 4
  %61 = load i32*, i32** @buffer, align 8
  %62 = load i64, i64* @BUFLNG, align 8
  %63 = call i32 @write(i32 %60, i32* %61, i64 %62)
  store i64 0, i64* @bufcnt, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %65, %66
  %68 = srem i32 %67, 80
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %21

72:                                               ; preds = %21
  ret void
}

declare dso_local i32 @write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
