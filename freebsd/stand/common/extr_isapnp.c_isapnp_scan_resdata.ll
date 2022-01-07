; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_scan_resdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_isapnp.c_isapnp_scan_resdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnpinfo = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnpinfo*)* @isapnp_scan_resdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_scan_resdata(%struct.pnpinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnpinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.pnpinfo* %0, %struct.pnpinfo** %3, align 8
  store i32 1000, i32* %6, align 4
  br label %9

9:                                                ; preds = %99, %1
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i64 @isapnp_get_resource_info(i64* %4, i32 1)
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %100

19:                                               ; preds = %17
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @PNP_RES_TYPE(i64 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @PNP_SRES_NUM(i64 %24)
  switch i32 %25, label %39 [
    i32 130, label %26
    i32 129, label %38
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @PNP_SRES_LEN(i64 %28)
  %30 = call i64 @isapnp_get_resource_info(i64* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %101

33:                                               ; preds = %26
  %34 = load %struct.pnpinfo*, %struct.pnpinfo** %3, align 8
  %35 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %36 = call i32 @pnp_eisaformat(i64* %35)
  %37 = call i32 @pnp_addident(%struct.pnpinfo* %34, i32 %36)
  br label %38

38:                                               ; preds = %23, %33
  store i32 0, i32* %2, align 4
  br label %101

39:                                               ; preds = %23
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @PNP_SRES_LEN(i64 %40)
  %42 = call i64 @isapnp_get_resource_info(i64* null, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %101

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %99

47:                                               ; preds = %19
  %48 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %49 = call i64 @isapnp_get_resource_info(i64* %48, i32 2)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %101

52:                                               ; preds = %47
  %53 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = shl i64 %55, 8
  %57 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %58 = load i64, i64* %57, align 16
  %59 = add i64 %56, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @PNP_LRES_NUM(i64 %60)
  switch i32 %61, label %91 [
    i32 128, label %62
  ]

62:                                               ; preds = %52
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  %65 = call i64* @malloc(i64 %64)
  store i64* %65, i64** %8, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i64 @isapnp_get_resource_info(i64* %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64*, i64** %8, align 8
  %73 = call i32 @free(i64* %72)
  store i32 1, i32* %2, align 4
  br label %101

74:                                               ; preds = %62
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 0, i64* %77, align 8
  %78 = load %struct.pnpinfo*, %struct.pnpinfo** %3, align 8
  %79 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i64*, i64** %8, align 8
  %84 = bitcast i64* %83 to i8*
  %85 = load %struct.pnpinfo*, %struct.pnpinfo** %3, align 8
  %86 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %90

87:                                               ; preds = %74
  %88 = load i64*, i64** %8, align 8
  %89 = call i32 @free(i64* %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %98

91:                                               ; preds = %52
  %92 = load i64, i64* %7, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @isapnp_get_resource_info(i64* null, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  br label %101

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %90
  br label %99

99:                                               ; preds = %98, %46
  br label %9

100:                                              ; preds = %17
  store i32 1, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %96, %71, %51, %44, %38, %32
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @isapnp_get_resource_info(i64*, i32) #1

declare dso_local i64 @PNP_RES_TYPE(i64) #1

declare dso_local i32 @PNP_SRES_NUM(i64) #1

declare dso_local i32 @PNP_SRES_LEN(i64) #1

declare dso_local i32 @pnp_addident(%struct.pnpinfo*, i32) #1

declare dso_local i32 @pnp_eisaformat(i64*) #1

declare dso_local i32 @PNP_LRES_NUM(i64) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
