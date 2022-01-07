; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i32, i32*, i64 }

@VECTOR_DEF_CAPACITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_str*)* @vector_str_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_str_init(%struct.vector_str* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_str*, align 8
  store %struct.vector_str* %0, %struct.vector_str** %3, align 8
  %4 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %5 = icmp eq %struct.vector_str* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

7:                                                ; preds = %1
  %8 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %9 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @VECTOR_DEF_CAPACITY, align 4
  %11 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %12 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %14 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %20 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32* @malloc(i32 %24)
  %26 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %27 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = icmp eq i32* %25, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %37

30:                                               ; preds = %7
  %31 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %32 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %29, %6
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
