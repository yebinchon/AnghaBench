; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_get_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, i32* }

@.str = private unnamed_addr constant [32 x i8] c"Malformed attribute in response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_get_attr(%struct.rad_handle* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rad_handle*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %10 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %13 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %19 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %23 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %28 = call i32 @generr(%struct.rad_handle* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

29:                                               ; preds = %17
  %30 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %31 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %34 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds i32, i32* %32, i64 %35
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %40 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %43 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %44
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  %51 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %52 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %60 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %29
  %64 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %65 = call i32 @generr(%struct.rad_handle* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

66:                                               ; preds = %29
  %67 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %68 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %71 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = bitcast i32* %73 to i8*
  %75 = load i8**, i8*** %6, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %79 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %66, %63, %26, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
