; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_tcs_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_tcs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs = type { i32, i32, i32, i32, i32, i64*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcs*)* @sgx_tcs_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_tcs_validate(%struct.tcs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcs*, align 8
  %4 = alloca i32, align 4
  store %struct.tcs* %0, %struct.tcs** %3, align 8
  %5 = load %struct.tcs*, %struct.tcs** %3, align 8
  %6 = getelementptr inbounds %struct.tcs, %struct.tcs* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = load %struct.tcs*, %struct.tcs** %3, align 8
  %11 = getelementptr inbounds %struct.tcs, %struct.tcs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %9
  %18 = load %struct.tcs*, %struct.tcs** %3, align 8
  %19 = getelementptr inbounds %struct.tcs, %struct.tcs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %17
  %26 = load %struct.tcs*, %struct.tcs** %3, align 8
  %27 = getelementptr inbounds %struct.tcs, %struct.tcs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %25
  %34 = load %struct.tcs*, %struct.tcs** %3, align 8
  %35 = getelementptr inbounds %struct.tcs, %struct.tcs* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 4095
  %38 = icmp ne i32 %37, 4095
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.tcs*, %struct.tcs** %3, align 8
  %41 = getelementptr inbounds %struct.tcs, %struct.tcs* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 4095
  %44 = icmp ne i32 %43, 4095
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33, %25, %17, %9, %1
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.tcs*, %struct.tcs** %3, align 8
  %51 = getelementptr inbounds %struct.tcs, %struct.tcs* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @nitems(i64* %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load %struct.tcs*, %struct.tcs** %3, align 8
  %57 = getelementptr inbounds %struct.tcs, %struct.tcs* %56, i32 0, i32 5
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %48

70:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %64, %45
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
