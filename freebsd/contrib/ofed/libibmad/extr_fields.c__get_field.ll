; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_fields.c__get_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_fields.c__get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_3__*)* @_get_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_field(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 7
  %20 = sub nsw i32 8, %19
  %21 = and i32 %20, 7
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = and i32 %28, 7
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 8
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 8
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %11, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %72

54:                                               ; preds = %44
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = xor i32 3, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 7
  %65 = ashr i32 %60, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %65, %70
  store i32 %71, i32* %4, align 4
  br label %138

72:                                               ; preds = %44, %3
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = xor i32 3, %77
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 8, %83
  %85 = ashr i32 %82, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %75, %72
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = sdiv i32 %97, 8
  %99 = add nsw i32 %90, %98
  store i32 %99, i32* %15, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %15, align 4
  %102 = xor i32 3, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = shl i32 1, %106
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %105, %108
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %89, %86
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %129, %110
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %11, align 4
  %124 = xor i32 3, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %121, %127
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, -1
  store i32 %131, i32* %11, align 4
  br label %115

132:                                              ; preds = %115
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %14, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %132, %54
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
