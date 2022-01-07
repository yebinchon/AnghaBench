; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_get_flat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_str_get_flat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vector_str*, i64*)* @vector_str_get_flat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vector_str_get_flat(%struct.vector_str* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.vector_str* %0, %struct.vector_str** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %12 = icmp eq %struct.vector_str* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %15 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i8* null, i8** %3, align 8
  br label %79

19:                                               ; preds = %13
  %20 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %21 = call i32 @get_strlen_sum(%struct.vector_str* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %79

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 1, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %79

33:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %37 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %42 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %53 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memcpy(i8* %51, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %40
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %34

66:                                               ; preds = %34
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i64*, i64** %5, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i8*, i8** %10, align 8
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %77, %32, %23, %18
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

declare dso_local i32 @get_strlen_sum(%struct.vector_str*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
