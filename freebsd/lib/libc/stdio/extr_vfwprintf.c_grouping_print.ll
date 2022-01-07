; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c_grouping_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c_grouping_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouping_state = type { i64, i64, i32*, i32, i32 }
%struct.io_state = type { i32 }

@zeroes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grouping_state*, %struct.io_state*, i32*, i32*, i32)* @grouping_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grouping_print(%struct.grouping_state* %0, %struct.io_state* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grouping_state*, align 8
  %8 = alloca %struct.io_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.grouping_state* %0, %struct.grouping_state** %7, align 8
  store %struct.io_state* %1, %struct.io_state** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %9, align 8
  store i32* %13, i32** %12, align 8
  %14 = load %struct.io_state*, %struct.io_state** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %18 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @zeroes, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @io_printandpad(%struct.io_state* %14, i32* %15, i32* %16, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %106

25:                                               ; preds = %5
  %26 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %27 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %84, %25
  %33 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %34 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %39 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ true, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %92

44:                                               ; preds = %42
  %45 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %46 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %51 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  br label %63

54:                                               ; preds = %44
  %55 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %56 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %56, align 8
  %59 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %60 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %54, %49
  %64 = load %struct.io_state*, %struct.io_state** %8, align 8
  %65 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %66 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %65, i32 0, i32 3
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @io_print(%struct.io_state* %64, i32* %66, i32 1, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %106

71:                                               ; preds = %63
  %72 = load %struct.io_state*, %struct.io_state** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %76 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @zeroes, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @io_printandpad(%struct.io_state* %72, i32* %73, i32* %74, i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %106

84:                                               ; preds = %71
  %85 = load %struct.grouping_state*, %struct.grouping_state** %7, align 8
  %86 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %9, align 8
  br label %32

92:                                               ; preds = %42
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ugt i32* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32*, i32** %10, align 8
  store i32* %97, i32** %9, align 8
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32*, i32** %9, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %98, %83, %70, %24
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i64 @io_printandpad(%struct.io_state*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @io_print(%struct.io_state*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
