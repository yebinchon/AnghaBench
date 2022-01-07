; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_tmpl_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i64, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %5 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %6 = icmp eq %struct.cpp_demangle_data* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %9 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 84
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %62

15:                                               ; preds = %7
  %16 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %17 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %17, align 8
  %20 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %21 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 95
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %28 = call i32 @cpp_demangle_get_tmpl_param(%struct.cpp_demangle_data* %27, i64 0)
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %15
  store i64 0, i64* @errno, align 8
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strtol(i8* %32, i8** null, i32 36)
  store i64 %33, i64* %4, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @errno, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %62

39:                                               ; preds = %35, %29
  %40 = load i64, i64* %4, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %49, %39
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %44 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 95
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  br label %42

54:                                               ; preds = %42
  %55 = load i64, i64* %4, align 8
  %56 = icmp sgt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @cpp_demangle_get_tmpl_param(%struct.cpp_demangle_data* %59, i64 %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %54, %38, %26, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @cpp_demangle_get_tmpl_param(%struct.cpp_demangle_data*, i64) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
