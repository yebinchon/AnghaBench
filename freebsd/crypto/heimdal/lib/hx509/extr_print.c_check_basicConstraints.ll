; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_basicConstraints.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_basicConstraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cert_status = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64*, i32* }

@.str = private unnamed_addr constant [43 x i8] c"\09ret = %d while decoding BasicConstraints\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\09length of der data isn't same as extension\0A\00", align 1
@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"\09is %sa CA\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\09pathLenConstraint: %d\0A\00", align 1
@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Is a CA and not BasicConstraints CRITICAL\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"cA is FALSE, not allowed to be\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cert_status*, i32, %struct.TYPE_9__*)* @check_basicConstraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_basicConstraints(i32 %0, %struct.cert_status* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cert_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.cert_status* %1, %struct.cert_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = call i32 @check_Null(i32 %13, %struct.cert_status* %14, i32 %15, %struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @decode_BasicConstraints(i32 %21, i64 %25, %struct.TYPE_10__* %10, i64* %11)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %5, align 4
  br label %95

32:                                               ; preds = %4
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ false, %41 ], [ %51, %47 ]
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %56 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %42, i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %61, i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %52
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %84 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %82, i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %87 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %92

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %91 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %89, i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %67
  %94 = call i32 @free_BasicConstraints(%struct.TYPE_10__* %10)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %29
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @check_Null(i32, %struct.cert_status*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @decode_BasicConstraints(i32, i64, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @validate_print(i32, i32, i8*, ...) #1

declare dso_local i32 @free_BasicConstraints(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
