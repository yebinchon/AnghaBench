; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_extKeyUsage.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_extKeyUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cert_status = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32* }

@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Decoding ExtKeyUsage failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Padding data in EKU\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ExtKeyUsage length is 0\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09EKU: failed to print oid %d\00", align 1
@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"\09eku-%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cert_status*, i32, %struct.TYPE_9__*)* @check_extKeyUsage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_extKeyUsage(i32 %0, %struct.cert_status* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cert_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cert_status* %1, %struct.cert_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = call i32 @check_Null(i32 %15, %struct.cert_status* %16, i32 %17, %struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @decode_ExtKeyUsage(i32 %23, i64 %27, %struct.TYPE_10__* %10, i64* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %32, i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 1, i32* %5, align 4
  br label %89

36:                                               ; preds = %4
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %46 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %44, i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @free_ExtKeyUsage(%struct.TYPE_10__* %10)
  store i32 1, i32* %5, align 4
  br label %89

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %55 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %89

56:                                               ; preds = %48
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %84, %56
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @der_print_heim_oid(i32* %66, i8 signext 46, i8** %14)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %71, i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = call i32 @free_ExtKeyUsage(%struct.TYPE_10__* %10)
  store i32 1, i32* %5, align 4
  br label %89

76:                                               ; preds = %62
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %79 = load i64, i64* %12, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %77, i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %79, i8* %80)
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %12, align 8
  br label %57

87:                                               ; preds = %57
  %88 = call i32 @free_ExtKeyUsage(%struct.TYPE_10__* %10)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %70, %52, %43, %31
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @check_Null(i32, %struct.cert_status*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @decode_ExtKeyUsage(i32, i64, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @validate_print(i32, i32, i8*, ...) #1

declare dso_local i32 @free_ExtKeyUsage(%struct.TYPE_10__*) #1

declare dso_local i32 @der_print_heim_oid(i32*, i8 signext, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
