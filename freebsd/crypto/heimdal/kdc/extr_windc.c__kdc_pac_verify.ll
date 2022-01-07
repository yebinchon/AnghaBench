; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_windc.c__kdc_pac_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_windc.c__kdc_pac_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32, i32, i32, i32*, i32*, i32*, i32*)* }

@windcft = common dso_local global %struct.TYPE_2__* null, align 8
@windcctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kdc_pac_verify(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @windcft, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store i64 0, i64* %9, align 8
  br label %41

22:                                               ; preds = %8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @windcft, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (i32, i32, i32, i32, i32*, i32*, i32*, i32*)*, i64 (i32, i32, i32, i32, i32*, i32*, i32*, i32*)** %24, align 8
  %26 = load i32, i32* @windcctx, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i64 %25(i32 %26, i32 %27, i32 %28, i32 %29, i32* %30, i32* %31, i32* %32, i32* %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32*, i32** %17, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %22
  %40 = load i64, i64* %18, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i64, i64* %9, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
