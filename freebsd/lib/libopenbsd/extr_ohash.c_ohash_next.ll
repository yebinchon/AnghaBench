; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@DELETED = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ohash_next(%struct.ohash* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ohash*, align 8
  %5 = alloca i32*, align 8
  store %struct.ohash* %0, %struct.ohash** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %6

6:                                                ; preds = %49, %2
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ohash*, %struct.ohash** %4, align 8
  %10 = getelementptr inbounds %struct.ohash, %struct.ohash* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %6
  %14 = load %struct.ohash*, %struct.ohash** %4, align 8
  %15 = getelementptr inbounds %struct.ohash, %struct.ohash* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** @DELETED, align 8
  %24 = icmp ne i32* %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %13
  %26 = load %struct.ohash*, %struct.ohash** %4, align 8
  %27 = getelementptr inbounds %struct.ohash, %struct.ohash* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %25
  %37 = load %struct.ohash*, %struct.ohash** %4, align 8
  %38 = getelementptr inbounds %struct.ohash, %struct.ohash* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %3, align 8
  br label %54

48:                                               ; preds = %25, %13
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %6

53:                                               ; preds = %6
  store i8* null, i8** %3, align 8
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
