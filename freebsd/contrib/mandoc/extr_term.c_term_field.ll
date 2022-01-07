; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64 (%struct.termp*, i8)*, i64, %struct.TYPE_2__*, i32 (%struct.termp*, i32)*, i32 (%struct.termp*, i64)* }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i64, i64, i64, i64)* @term_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @term_field(%struct.termp* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.termp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.termp*, %struct.termp** %6, align 8
  %16 = getelementptr inbounds %struct.termp, %struct.termp* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  br label %20

20:                                               ; preds = %142, %5
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %145

24:                                               ; preds = %20
  %25 = load %struct.termp*, %struct.termp** %6, align 8
  %26 = getelementptr inbounds %struct.termp, %struct.termp* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %55 [
    i32 10, label %33
    i32 129, label %33
    i32 9, label %34
    i32 32, label %43
    i32 128, label %43
  ]

33:                                               ; preds = %24, %24
  br label %142

34:                                               ; preds = %24
  %35 = load i64, i64* %12, align 8
  %36 = call i64 @term_tab_next(i64 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %12, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %12, align 8
  br label %142

43:                                               ; preds = %24, %24
  %44 = load %struct.termp*, %struct.termp** %6, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 0
  %46 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %45, align 8
  %47 = load %struct.termp*, %struct.termp** %6, align 8
  %48 = call i64 %46(%struct.termp* %47, i8 signext 32)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %12, align 8
  br label %142

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.termp*, %struct.termp** %6, align 8
  %61 = getelementptr inbounds %struct.termp, %struct.termp* %60, i32 0, i32 4
  %62 = load i32 (%struct.termp*, i64)*, i32 (%struct.termp*, i64)** %61, align 8
  %63 = load %struct.termp*, %struct.termp** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 %62(%struct.termp* %63, i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.termp*, %struct.termp** %6, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, %66
  store i64 %70, i64* %68, align 8
  store i64 0, i64* %7, align 8
  br label %71

71:                                               ; preds = %59, %56
  %72 = load %struct.termp*, %struct.termp** %6, align 8
  %73 = getelementptr inbounds %struct.termp, %struct.termp* %72, i32 0, i32 3
  %74 = load i32 (%struct.termp*, i32)*, i32 (%struct.termp*, i32)** %73, align 8
  %75 = load %struct.termp*, %struct.termp** %6, align 8
  %76 = load %struct.termp*, %struct.termp** %6, align 8
  %77 = getelementptr inbounds %struct.termp, %struct.termp* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %74(%struct.termp* %75, i32 %83)
  %85 = load %struct.termp*, %struct.termp** %6, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %94, label %118

94:                                               ; preds = %71
  %95 = load %struct.termp*, %struct.termp** %6, align 8
  %96 = getelementptr inbounds %struct.termp, %struct.termp* %95, i32 0, i32 0
  %97 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %96, align 8
  %98 = load %struct.termp*, %struct.termp** %6, align 8
  %99 = load %struct.termp*, %struct.termp** %6, align 8
  %100 = getelementptr inbounds %struct.termp, %struct.termp* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = sub i64 %104, 1
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = trunc i32 %107 to i8
  %109 = call i64 %97(%struct.termp* %98, i8 signext %108)
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.termp*, %struct.termp** %6, align 8
  %112 = getelementptr inbounds %struct.termp, %struct.termp* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %12, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %12, align 8
  br label %141

118:                                              ; preds = %71
  %119 = load %struct.termp*, %struct.termp** %6, align 8
  %120 = getelementptr inbounds %struct.termp, %struct.termp* %119, i32 0, i32 0
  %121 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %120, align 8
  %122 = load %struct.termp*, %struct.termp** %6, align 8
  %123 = load %struct.termp*, %struct.termp** %6, align 8
  %124 = getelementptr inbounds %struct.termp, %struct.termp* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = trunc i32 %130 to i8
  %132 = call i64 %121(%struct.termp* %122, i8 signext %131)
  store i64 %132, i64* %13, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.termp*, %struct.termp** %6, align 8
  %135 = getelementptr inbounds %struct.termp, %struct.termp* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %118, %94
  br label %142

142:                                              ; preds = %141, %43, %34, %33
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %20

145:                                              ; preds = %20
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.termp*, %struct.termp** %6, align 8
  %148 = getelementptr inbounds %struct.termp, %struct.termp* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i64 %146, i64* %150, align 8
  ret void
}

declare dso_local i64 @term_tab_next(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
