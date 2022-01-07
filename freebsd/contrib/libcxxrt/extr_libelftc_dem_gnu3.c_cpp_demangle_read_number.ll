; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i64*)* @cpp_demangle_read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_number(%struct.cpp_demangle_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %9 = icmp eq %struct.cpp_demangle_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %75

14:                                               ; preds = %10
  store i64 1, i64* %7, align 8
  %15 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %16 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 110
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  store i64 -1, i64* %7, align 8
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %23 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %28 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @ELFTC_ISDIGIT(i8 signext %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %75

34:                                               ; preds = %26
  store i64 0, i64* @errno, align 8
  %35 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %36 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strtol(i8* %37, i8** null, i32 10)
  store i64 %38, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @errno, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %75

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %52, %44
  %46 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %47 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @ELFTC_ISDIGIT(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %54 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  br label %45

57:                                               ; preds = %45
  %58 = load i64, i64* %6, align 8
  %59 = icmp sge i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %65, -1
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i1 [ true, %57 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = mul nsw i64 %71, %72
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %43, %33, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
