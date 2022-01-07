; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_generalizedtime2time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_generalizedtime2time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%04d%02d%02d%02d%02d%02dZ\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%02d%02d%02d%02d%02d%02dZ\00", align 1
@ASN1_BAD_TIMEFORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @generalizedtime2time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generalizedtime2time(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tm, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 @memset(%struct.tm* %6, i32 0, i32 24)
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %15 = call i32 @sscanf(i8* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %25 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 6
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @ASN1_BAD_TIMEFORMAT, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 50
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2000
  store i32 %36, i32* %34, align 4
  br label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1900
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %2
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1900
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = call i32 @_der_timegm(%struct.tm* %6)
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_der_timegm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
