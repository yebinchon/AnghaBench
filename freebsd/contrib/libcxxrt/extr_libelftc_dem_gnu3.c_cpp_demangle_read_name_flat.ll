; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_name_flat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_name_flat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i64, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8**)* @cpp_demangle_read_name_flat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_name_flat(%struct.cpp_demangle_data* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.vector_str*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %13 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %18 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %17, i32 0, i32 2
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %21 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %20, i32 0, i32 1
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.vector_str* [ %18, %16 ], [ %21, %19 ]
  store %struct.vector_str* %23, %struct.vector_str** %6, align 8
  %24 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %25 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %28 = call i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %65

31:                                               ; preds = %22
  %32 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %35 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 1
  %38 = trunc i64 %37 to i32
  %39 = call i8* @vector_str_substr(%struct.vector_str* %32, i64 %33, i32 %38, i64* %10)
  store i8* %39, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %65

42:                                               ; preds = %31
  %43 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %44 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %59, %42
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %53 = call i32 @vector_str_pop(%struct.vector_str* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @free(i8* %56)
  store i32 0, i32* %3, align 4
  br label %65

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %47

62:                                               ; preds = %47
  %63 = load i8*, i8** %11, align 8
  %64 = load i8**, i8*** %5, align 8
  store i8* %63, i8** %64, align 8
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %55, %41, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @cpp_demangle_read_name(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.vector_str*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
