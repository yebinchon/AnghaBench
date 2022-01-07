; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rsocket*, i8*, i64)* @rs_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rs_peek(%struct.rsocket* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %108, %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %112

30:                                               ; preds = %28
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 6
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %31, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %9, align 8
  br label %61

43:                                               ; preds = %30
  %44 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 6
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %55 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %64, %66
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %61
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %74 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @memcpy(i8* %72, i32* %78, i64 %79)
  store i32 0, i32* %11, align 4
  %81 = load i64, i64* %8, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr i8, i8* %82, i64 %81
  store i8* %83, i8** %5, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %71, %61
  %91 = load i8*, i8** %5, align 8
  %92 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %93 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @memcpy(i8* %91, i32* %97, i64 %98)
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i64, i64* %9, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr i8, i8* %106, i64 %105
  store i8* %107, i8** %5, align 8
  br label %108

108:                                              ; preds = %90
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %7, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %19

112:                                              ; preds = %28
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = sub i64 %113, %114
  ret i64 %115
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
