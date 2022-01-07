; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_subjectKeyIdentifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_subjectKeyIdentifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cert_status = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Decoding SubjectKeyIdentifier failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Decoding SKI ahve extra bits on the end\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SKI is too short (0 bytes)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SKI is too long\00", align 1
@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"\09subject key id: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cert_status*, i32, %struct.TYPE_10__*)* @check_subjectKeyIdentifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_subjectKeyIdentifier(i32 %0, %struct.cert_status* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cert_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cert_status* %1, %struct.cert_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %14 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %15 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = call i32 @check_Null(i32 %16, %struct.cert_status* %17, i32 %18, %struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @decode_SubjectKeyIdentifier(i32 %24, i64 %28, %struct.TYPE_9__* %10, i64* %11)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %33, i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 1, i32* %5, align 4
  br label %81

37:                                               ; preds = %4
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %47 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %45, i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %81

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %55 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %53, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 20
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %63 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %61, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @hex_encode(i32 %66, i32 %68, i8** %13)
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %73, i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %72, %64
  %80 = call i32 @free_SubjectKeyIdentifier(%struct.TYPE_9__* %10)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %44, %32
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @check_Null(i32, %struct.cert_status*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @decode_SubjectKeyIdentifier(i32, i64, %struct.TYPE_9__*, i64*) #1

declare dso_local i32 @validate_print(i32, i32, i8*, ...) #1

declare dso_local i32 @hex_encode(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_SubjectKeyIdentifier(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
