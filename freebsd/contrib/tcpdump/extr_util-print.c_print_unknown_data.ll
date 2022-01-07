; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_print_unknown_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_print_unknown_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [66 x i8] c"%sDissector error: print_unknown_data called with negative length\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"%sDissector error: print_unknown_data called with pointer past end of packet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_unknown_data(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  %16 = call i32 @ND_PRINT(%struct.TYPE_5__* %15)
  store i32 0, i32* %5, align 4
  br label %53

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %29, %17
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_5__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_5__* %45)
  store i32 0, i32* %5, align 4
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @hex_print(%struct.TYPE_5__* %48, i8* %49, i32* %50, i32 %51)
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %42, %12
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @hex_print(%struct.TYPE_5__*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
