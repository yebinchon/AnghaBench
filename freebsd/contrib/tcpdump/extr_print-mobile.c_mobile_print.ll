; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mobile.c_mobile_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-mobile.c_mobile_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.mobile_ip = type { i32, i32, i32, i32 }
%struct.cksum_vec = type { i32, i32* }

@MOBILE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"[|mobile]\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mobile: \00", align 1
@OSRC_PRES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"[S] \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"[] \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"> %s \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"(oproto=%d)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" (bad checksum %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mobile_print(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mobile_ip*, align 8
  %8 = alloca [1 x %struct.cksum_vec], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.mobile_ip*
  store %struct.mobile_ip* %13, %struct.mobile_ip** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MOBILE_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.mobile_ip*, %struct.mobile_ip** %7, align 8
  %19 = bitcast %struct.mobile_ip* %18 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 4
  %24 = call i32 @ND_TTEST(i64 %21, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([10 x i8]* @.str to %struct.TYPE_5__*))
  br label %107

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([9 x i8]* @.str.1 to %struct.TYPE_5__*))
  %32 = load %struct.mobile_ip*, %struct.mobile_ip** %7, align 8
  %33 = getelementptr inbounds %struct.mobile_ip, %struct.mobile_ip* %32, i32 0, i32 3
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.mobile_ip*, %struct.mobile_ip** %7, align 8
  %36 = getelementptr inbounds %struct.mobile_ip, %struct.mobile_ip* %35, i32 0, i32 2
  %37 = call i32 @EXTRACT_16BITS(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @OSRC_PRES, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([5 x i8]* @.str.2 to %struct.TYPE_5__*))
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load %struct.mobile_ip*, %struct.mobile_ip** %7, align 8
  %57 = getelementptr inbounds %struct.mobile_ip, %struct.mobile_ip* %56, i32 0, i32 1
  %58 = call i32 @ipaddr_string(%struct.TYPE_5__* %55, i32* %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_5__*
  %61 = call i32 @ND_PRINT(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %53, %46
  br label %66

63:                                               ; preds = %43
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([4 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = load %struct.mobile_ip*, %struct.mobile_ip** %7, align 8
  %75 = getelementptr inbounds %struct.mobile_ip, %struct.mobile_ip* %74, i32 0, i32 0
  %76 = call i32 @ipaddr_string(%struct.TYPE_5__* %73, i32* %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.TYPE_5__*
  %79 = call i32 @ND_PRINT(%struct.TYPE_5__* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_5__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %71, %66
  %87 = load %struct.mobile_ip*, %struct.mobile_ip** %7, align 8
  %88 = bitcast %struct.mobile_ip* %87 to i8*
  %89 = bitcast i8* %88 to i32*
  %90 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %8, i64 0, i64 0
  %91 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 12, i32 8
  %96 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %8, i64 0, i64 0
  %97 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 16
  %98 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %8, i64 0, i64 0
  %99 = call i64 @in_cksum(%struct.cksum_vec* %98, i32 1)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %86
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_5__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_5__* %105)
  br label %107

107:                                              ; preds = %26, %101, %86
  ret void
}

declare dso_local i32 @ND_TTEST(i64, i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @in_cksum(%struct.cksum_vec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
