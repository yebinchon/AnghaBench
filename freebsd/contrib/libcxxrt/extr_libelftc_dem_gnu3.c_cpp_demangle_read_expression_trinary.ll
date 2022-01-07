; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_expression_trinary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_expression_trinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8*, i64, i8*, i64)* @cpp_demangle_read_expression_trinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_expression_trinary(%struct.cpp_demangle_data* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpp_demangle_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %7, align 8
  %13 = icmp eq %struct.cpp_demangle_data* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %17, %14, %5
  store i32 0, i32* %6, align 4
  br label %54

27:                                               ; preds = %23
  %28 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %7, align 8
  %29 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %54

32:                                               ; preds = %27
  %33 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %33, i8* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %54

39:                                               ; preds = %32
  %40 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %7, align 8
  %41 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %54

44:                                               ; preds = %39
  %45 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %7, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %45, i8* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %7, align 8
  %53 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %50, %43, %38, %31, %26
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
