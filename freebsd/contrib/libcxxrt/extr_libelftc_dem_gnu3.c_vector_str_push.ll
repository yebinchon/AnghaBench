; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i64, i64, i32** }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_str*, i8*, i64)* @vector_str_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_str_push(%struct.vector_str* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vector_str*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.vector_str* %0, %struct.vector_str** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %9 = icmp eq %struct.vector_str* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %59

14:                                               ; preds = %10
  %15 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %16 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %19 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %24 = call i32 @vector_str_grow(%struct.vector_str* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %59

27:                                               ; preds = %22, %14
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  %30 = mul i64 1, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32* @malloc(i32 %31)
  %33 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %34 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %37 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  store i32* %32, i32** %39, align 8
  %40 = icmp eq i32* %32, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %59

42:                                               ; preds = %27
  %43 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %44 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %47 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @snprintf(i32* %50, i64 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load %struct.vector_str*, %struct.vector_str** %5, align 8
  %56 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %42, %41, %26, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @vector_str_grow(%struct.vector_str*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
