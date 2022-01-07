; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_sname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_sname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"_GLOBAL__N_1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@READ_TMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_sname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %6 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %7 = icmp eq %struct.cpp_demangle_data* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %10 = call i64 @cpp_demangle_read_number(%struct.cpp_demangle_data* %9, i64* %4)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %8, %1
  store i32 0, i32* %2, align 4
  br label %73

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 12
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %21 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @memcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %22, i32 12)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %27 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 21)
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %19, %16
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %29, i8* %32, i64 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %73

39:                                               ; preds = %35
  %40 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %41 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %48 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %47, i32 0, i32 3
  %49 = load i32, i32* @READ_TMPL, align 4
  %50 = call i64 @vector_read_cmd_find(i32* %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %39
  %53 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %54 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %58 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %66 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %52, %39
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %70 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %68
  store i8* %72, i8** %70, align 8
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %38, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @cpp_demangle_read_number(%struct.cpp_demangle_data*, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vector_read_cmd_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
