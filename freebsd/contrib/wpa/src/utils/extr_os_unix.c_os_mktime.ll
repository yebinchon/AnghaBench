; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_mktime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_mktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_mktime(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.tm, align 4
  %17 = alloca %struct.tm*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 1970
  br i1 %23, label %54, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 12
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %54, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 31
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 23
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 59
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %52, 60
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %7
  store i32 -1, i32* %8, align 4
  br label %95

55:                                               ; preds = %51
  %56 = call i32 @memset(%struct.tm* %16, i32 0, i32 24)
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1900
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  store i32 %69, i32* %70, align 4
  %71 = call i64 @mktime(%struct.tm* %16)
  store i64 %71, i64* %18, align 8
  %72 = call %struct.tm* @localtime(i64* %18)
  store %struct.tm* %72, %struct.tm** %17, align 8
  %73 = load %struct.tm*, %struct.tm** %17, align 8
  %74 = icmp ne %struct.tm* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %55
  %76 = load %struct.tm*, %struct.tm** %17, align 8
  %77 = call i64 @mktime(%struct.tm* %76)
  store i64 %77, i64* %19, align 8
  %78 = call %struct.tm* @gmtime(i64* %18)
  store %struct.tm* %78, %struct.tm** %17, align 8
  %79 = load %struct.tm*, %struct.tm** %17, align 8
  %80 = icmp ne %struct.tm* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.tm*, %struct.tm** %17, align 8
  %83 = call i64 @mktime(%struct.tm* %82)
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* %19, align 8
  %86 = sub nsw i64 %84, %85
  store i64 %86, i64* %21, align 8
  br label %88

87:                                               ; preds = %75
  store i64 0, i64* %21, align 8
  br label %88

88:                                               ; preds = %87, %81
  br label %90

89:                                               ; preds = %55
  store i64 0, i64* %21, align 8
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %21, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load i64*, i64** %15, align 8
  store i64 %93, i64* %94, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %90, %54
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
