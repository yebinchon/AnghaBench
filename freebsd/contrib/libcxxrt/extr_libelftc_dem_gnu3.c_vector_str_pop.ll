; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_str*)* @vector_str_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_str_pop(%struct.vector_str* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_str*, align 8
  store %struct.vector_str* %0, %struct.vector_str** %3, align 8
  %4 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %5 = icmp eq %struct.vector_str* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %9 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %34

13:                                               ; preds = %7
  %14 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %15 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %19 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %22 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @free(i32* %25)
  %27 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %28 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %31 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* null, i32** %33, align 8
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %13, %12, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
