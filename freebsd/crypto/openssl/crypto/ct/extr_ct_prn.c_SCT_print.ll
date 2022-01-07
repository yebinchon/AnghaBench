; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_prn.c_SCT_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_prn.c_SCT_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%*sSigned Certificate Timestamp:\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0A%*sVersion   : \00", align 1
@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"unknown\0A%*s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"v1 (0x0)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0A%*sLog       : %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0A%*sLog ID    : \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0A%*sTimestamp : \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\0A%*sExtensions: \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\0A%*sSignature : \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0A%*s            \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCT_print(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32*, i32** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32* @CTLOG_STORE_get0_log_by_id(i32* %13, i32 %16, i64 %19)
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %12, %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 4
  %28 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SCT_VERSION_V1, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %21
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 16
  %38 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 16
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BIO_hex_string(i32* %39, i32 %41, i32 16, i32 %44, i64 %47)
  br label %129

49:                                               ; preds = %21
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @CTLOG_get0_name(i32* %58)
  %60 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 4
  %65 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 16
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @BIO_hex_string(i32* %66, i32 %68, i32 16, i32 %71, i64 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 4
  %79 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @timestamp_print(i32 %82, i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 4
  %88 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %61
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %107

96:                                               ; preds = %61
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 16
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @BIO_hex_string(i32* %97, i32 %99, i32 16, i32 %102, i64 %105)
  br label %107

107:                                              ; preds = %96, %93
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 4
  %111 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @SCT_signature_algorithms_print(%struct.TYPE_4__* %112, i32* %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 4
  %118 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 16
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @BIO_hex_string(i32* %119, i32 %121, i32 16, i32 %124, i64 %127)
  br label %129

129:                                              ; preds = %107, %34
  ret void
}

declare dso_local i32* @CTLOG_STORE_get0_log_by_id(i32*, i32, i64) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @BIO_hex_string(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @CTLOG_get0_name(i32*) #1

declare dso_local i32 @timestamp_print(i32, i32*) #1

declare dso_local i32 @SCT_signature_algorithms_print(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
