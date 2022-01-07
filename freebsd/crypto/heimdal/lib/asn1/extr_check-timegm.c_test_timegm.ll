; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-timegm.c_test_timegm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-timegm.c_test_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"tmtime failes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_timegm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_timegm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @memset(%struct.tm* %2, i32 0, i32 32)
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  store i32 106, i32* %5, align 8
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1
  store i32 9, i32* %6, align 4
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3
  store i32 10, i32* %8, align 4
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  store i32 3, i32* %9, align 8
  %10 = call i32 @_der_timegm(%struct.tm* %2)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 1159696980
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = call i32 @_der_timegm(%struct.tm* %2)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = call i32 @_der_gmtime(i32 1159696980, %struct.tm* %2)
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 106
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 9
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 10
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %37, %33, %29, %24
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @_der_timegm(%struct.tm*) #1

declare dso_local i32 @_der_gmtime(i32, %struct.tm*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
