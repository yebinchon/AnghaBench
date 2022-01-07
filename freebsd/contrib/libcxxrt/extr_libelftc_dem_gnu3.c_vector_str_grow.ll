; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i64, i64, i8** }

@BUFFER_GROWFACTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_str*)* @vector_str_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_str_grow(%struct.vector_str* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_str*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  store %struct.vector_str* %0, %struct.vector_str** %3, align 8
  %7 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %8 = icmp eq %struct.vector_str* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %12 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %18 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BUFFER_GROWFACTOR, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %24 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call i8** @malloc(i32 %31)
  store i8** %32, i8*** %6, align 8
  %33 = icmp eq i8** %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %66

35:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %39 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %44 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %48, i8** %51, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %57 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = call i32 @free(i8** %58)
  %60 = load i8**, i8*** %6, align 8
  %61 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %62 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %61, i32 0, i32 2
  store i8** %60, i8*** %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.vector_str*, %struct.vector_str** %3, align 8
  %65 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %34, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
