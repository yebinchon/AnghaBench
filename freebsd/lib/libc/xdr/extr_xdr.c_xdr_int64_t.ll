; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr.c_xdr_int64_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr.c_xdr_int64_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_int64_t(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %60 [
    i32 129, label %10
    i32 130, label %31
    i32 128, label %58
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 32
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %20 = bitcast i32* %19 to i64*
  %21 = call i32 @XDR_PUTLONG(%struct.TYPE_5__* %18, i64* %20)
  %22 = load i32, i32* @FALSE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %10
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %29 = bitcast i32* %28 to i64*
  %30 = call i32 @XDR_PUTLONG(%struct.TYPE_5__* %27, i64* %29)
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %34 = bitcast i32* %33 to i64*
  %35 = call i32 @XDR_GETLONG(%struct.TYPE_5__* %32, i64* %34)
  %36 = load i32, i32* @FALSE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %43 = bitcast i32* %42 to i64*
  %44 = call i32 @XDR_GETLONG(%struct.TYPE_5__* %41, i64* %43)
  %45 = load i32, i32* @FALSE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %40
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 32
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %52, %54
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %2
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %2
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %49, %47, %38, %26, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @XDR_PUTLONG(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @XDR_GETLONG(%struct.TYPE_5__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
