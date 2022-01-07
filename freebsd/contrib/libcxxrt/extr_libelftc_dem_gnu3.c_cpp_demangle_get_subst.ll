; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_get_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_get_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i64)* @cpp_demangle_get_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_get_subst(%struct.cpp_demangle_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %8 = icmp eq %struct.cpp_demangle_data* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %11 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %9
  %18 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %19 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strlen(i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %29, i32 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %43 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %40, %27, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
