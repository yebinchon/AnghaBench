; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_physmem.c_insert_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_physmem.c_insert_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.region*, i64, i64, i64, i64)* @insert_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_region(%struct.region* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.region*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.region*, align 8
  %14 = alloca %struct.region*, align 8
  store %struct.region* %0, %struct.region** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.region*, %struct.region** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.region, %struct.region* %15, i64 %16
  store %struct.region* %17, %struct.region** %13, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.region*, %struct.region** %7, align 8
  store %struct.region* %18, %struct.region** %14, align 8
  br label %19

19:                                               ; preds = %100, %5
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %105

23:                                               ; preds = %19
  %24 = load %struct.region*, %struct.region** %14, align 8
  %25 = getelementptr inbounds %struct.region, %struct.region* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.region*, %struct.region** %14, align 8
  %31 = getelementptr inbounds %struct.region, %struct.region* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %6, align 8
  br label %118

37:                                               ; preds = %29, %23
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.region*, %struct.region** %14, align 8
  %40 = getelementptr inbounds %struct.region, %struct.region* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.region*, %struct.region** %14, align 8
  %48 = getelementptr inbounds %struct.region, %struct.region* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.region*, %struct.region** %14, align 8
  %54 = getelementptr inbounds %struct.region, %struct.region* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.region*, %struct.region** %14, align 8
  %57 = getelementptr inbounds %struct.region, %struct.region* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %6, align 8
  br label %118

61:                                               ; preds = %43
  %62 = load %struct.region*, %struct.region** %14, align 8
  %63 = getelementptr inbounds %struct.region, %struct.region* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.region*, %struct.region** %14, align 8
  %66 = getelementptr inbounds %struct.region, %struct.region* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.region*, %struct.region** %14, align 8
  %74 = getelementptr inbounds %struct.region, %struct.region* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %6, align 8
  br label %118

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.region*, %struct.region** %14, align 8
  %83 = getelementptr inbounds %struct.region, %struct.region* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.region*, %struct.region** %14, align 8
  %88 = load %struct.region*, %struct.region** %14, align 8
  %89 = getelementptr inbounds %struct.region, %struct.region* %88, i64 1
  %90 = load %struct.region*, %struct.region** %13, align 8
  %91 = load %struct.region*, %struct.region** %14, align 8
  %92 = ptrtoint %struct.region* %90 to i64
  %93 = ptrtoint %struct.region* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 24
  %96 = mul i64 %95, 24
  %97 = trunc i64 %96 to i32
  %98 = call i32 @bcopy(%struct.region* %87, %struct.region* %89, i32 %97)
  br label %105

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %12, align 8
  %103 = load %struct.region*, %struct.region** %14, align 8
  %104 = getelementptr inbounds %struct.region, %struct.region* %103, i32 1
  store %struct.region* %104, %struct.region** %14, align 8
  br label %19

105:                                              ; preds = %86, %19
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.region*, %struct.region** %14, align 8
  %108 = getelementptr inbounds %struct.region, %struct.region* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.region*, %struct.region** %14, align 8
  %111 = getelementptr inbounds %struct.region, %struct.region* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.region*, %struct.region** %14, align 8
  %114 = getelementptr inbounds %struct.region, %struct.region* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %105, %71, %51, %35
  %119 = load i64, i64* %6, align 8
  ret i64 %119
}

declare dso_local i32 @bcopy(%struct.region*, %struct.region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
