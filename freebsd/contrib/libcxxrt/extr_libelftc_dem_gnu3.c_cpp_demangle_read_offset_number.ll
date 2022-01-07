; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_offset_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_offset_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_offset_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_offset_number(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %6 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %7 = icmp eq %struct.cpp_demangle_data* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %10 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %81

16:                                               ; preds = %8
  %17 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %18 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 110
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %5, align 8
  br label %32

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %30 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %40, %32
  %34 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %35 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 95
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %42 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %42, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %50 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %81

53:                                               ; preds = %48, %45
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %61 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %58, i8* %59, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %81

71:                                               ; preds = %53
  %72 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %73 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %81

76:                                               ; preds = %71
  %77 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %78 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %78, align 8
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %75, %70, %52, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
