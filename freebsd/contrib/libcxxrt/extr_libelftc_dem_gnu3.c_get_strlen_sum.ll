; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_get_strlen_sum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_get_strlen_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vector_str*)* @get_strlen_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_strlen_sum(%struct.vector_str* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vector_str*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vector_str* %0, %struct.vector_str** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %7 = icmp eq %struct.vector_str* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %11 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %32, %9
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %19 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %24 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %35, %8
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
