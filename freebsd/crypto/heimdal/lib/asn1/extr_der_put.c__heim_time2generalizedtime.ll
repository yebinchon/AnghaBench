; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c__heim_time2generalizedtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c__heim_time2generalizedtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ASN1_BAD_TIMEFORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%04d%02d%02d%02d%02d%02dZ\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%02d%02d%02d%02d%02d%02dZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_heim_time2generalizedtime(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 15, i32 13
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, 1
  %17 = call i32* @malloc(i64 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32* @_der_gmtime(i32 %30, %struct.tm* %8)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ASN1_BAD_TIMEFORMAT, align 4
  store i32 %34, i32* %4, align 4
  br label %81

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1900
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snprintf(i32* %41, i64 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57)
  br label %80

59:                                               ; preds = %35
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %66, 100
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snprintf(i32* %62, i64 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %59, %38
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %33, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @_der_gmtime(i32, %struct.tm*) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
