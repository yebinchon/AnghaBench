; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_crld.c_i2r_idp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_crld.c_i2r_idp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"%*sOnly User Certificates\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%*sOnly CA Certificates\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%*sIndirect CRL\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Only Some Reasons\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%*sOnly Attribute Certificates\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%*s<EMPTY>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @i2r_idp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2r_idp(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %9, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @print_distpoint(i32* %17, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @BIO_printf(i32* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @BIO_printf(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @BIO_printf(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @print_reasons(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @BIO_printf(i32* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @BIO_printf(i32* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %96, %91, %86, %81, %76, %71
  ret i32 1
}

declare dso_local i32 @print_distpoint(i32*, i64, i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @print_reasons(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
