; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_timegm.c__der_gmtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_timegm.c__der_gmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i32 }

@ASN1_MAX_YEAR = common dso_local global i32 0, align 4
@ndays = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @_der_gmtime(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tm* %1, %struct.tm** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 86400
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %12, 86400
  store i32 %13, i32* %7, align 4
  %14 = load %struct.tm*, %struct.tm** %5, align 8
  %15 = call i32 @memset(%struct.tm* %14, i32 0, i32 32)
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %16, 60
  %18 = load %struct.tm*, %struct.tm** %5, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 3600
  %22 = sdiv i32 %21, 60
  %23 = load %struct.tm*, %struct.tm** %5, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 3600
  %27 = load %struct.tm*, %struct.tm** %5, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ASN1_MAX_YEAR, align 4
  %31 = mul nsw i32 %30, 365
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store %struct.tm* null, %struct.tm** %3, align 8
  br label %91

34:                                               ; preds = %2
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  store i32 70, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %49
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_leap(i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 366, i32 365
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %57

49:                                               ; preds = %37
  %50 = load %struct.tm*, %struct.tm** %5, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %37

57:                                               ; preds = %48
  %58 = load %struct.tm*, %struct.tm** %5, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %77
  %61 = load i32**, i32*** @ndays, align 8
  %62 = load %struct.tm*, %struct.tm** %5, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @is_leap(i32 %64)
  %66 = getelementptr inbounds i32*, i32** %61, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.tm*, %struct.tm** %5, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %85

77:                                               ; preds = %60
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.tm*, %struct.tm** %5, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %60

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.tm*, %struct.tm** %5, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.tm*, %struct.tm** %5, align 8
  store %struct.tm* %90, %struct.tm** %3, align 8
  br label %91

91:                                               ; preds = %85, %33
  %92 = load %struct.tm*, %struct.tm** %3, align 8
  ret %struct.tm* %92
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @is_leap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
