; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_entropypool_adddata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_entropy.c_entropypool_adddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i32)* @entropypool_adddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entropypool_adddata(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = and i64 %16, 3
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %45 [
    i32 3, label %21
    i32 2, label %27
    i32 1, label %36
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %21
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %11, align 8
  %32 = load i32, i32* %30, align 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %19, %27
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %39, align 4
  %42 = or i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %36, %19
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @entropypool_add_word(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %4
  br label %51

51:                                               ; preds = %63, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @entropypool_add_word(i32* %58, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32* %62, i32** %11, align 8
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = sub i32 %64, 4
  store i32 %65, i32* %7, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %89 [
    i32 3, label %71
    i32 2, label %75
    i32 1, label %82
  ]

71:                                               ; preds = %69
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  %74 = load i32, i32* %72, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %71
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 8
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %78, align 4
  %81 = or i32 %77, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %69, %75
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  %87 = load i32, i32* %85, align 4
  %88 = or i32 %84, %87
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %82, %69
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @entropypool_add_word(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %66
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @add_entropy(%struct.TYPE_5__* %95, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @subtract_pseudo(%struct.TYPE_5__* %98, i32 %99)
  ret void
}

declare dso_local i32 @entropypool_add_word(i32*, i32) #1

declare dso_local i32 @add_entropy(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @subtract_pseudo(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
