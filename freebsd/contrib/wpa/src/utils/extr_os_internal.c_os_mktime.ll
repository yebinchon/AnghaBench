; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_internal.c_os_mktime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_internal.c_os_mktime.c"
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
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 1970
  br i1 %18, label %49, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 12
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 31
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 23
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %41, 59
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = icmp sgt i32 %47, 60
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %7
  store i32 -1, i32* %8, align 4
  br label %68

50:                                               ; preds = %46
  %51 = call i32 @os_memset(%struct.tm* %16, i32 0, i32 24)
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1900
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  %66 = call i64 @mktime(%struct.tm* %16)
  %67 = load i64*, i64** %15, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %50, %49
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @os_memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
