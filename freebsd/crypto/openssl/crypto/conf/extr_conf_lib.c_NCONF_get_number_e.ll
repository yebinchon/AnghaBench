; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_lib.c_NCONF_get_number_e.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_lib.c_NCONF_get_number_e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)* }

@CONF_F_NCONF_GET_NUMBER_E = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@CONF_R_NUMBER_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NCONF_get_number_e(%struct.TYPE_9__* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (%struct.TYPE_9__*, i8)*, align 8
  %13 = alloca i32 (%struct.TYPE_9__*, i8)*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 (%struct.TYPE_9__*, i8)* @default_is_number, i32 (%struct.TYPE_9__*, i8)** %12, align 8
  store i32 (%struct.TYPE_9__*, i8)* @default_to_int, i32 (%struct.TYPE_9__*, i8)** %13, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @CONF_F_NCONF_GET_NUMBER_E, align 4
  %19 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %20 = call i32 @CONFerr(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %96

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @NCONF_get_string(%struct.TYPE_9__* %22, i8* %23, i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %96

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_9__*, i8)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)** %43, align 8
  store i32 (%struct.TYPE_9__*, i8)* %44, i32 (%struct.TYPE_9__*, i8)** %12, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_9__*, i8)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)** %56, align 8
  store i32 (%struct.TYPE_9__*, i8)* %57, i32 (%struct.TYPE_9__*, i8)** %13, align 8
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %29
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %90, %59
  %61 = load i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)** %12, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 %61(%struct.TYPE_9__* %62, i8 signext %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load i32 (%struct.TYPE_9__*, i8)*, i32 (%struct.TYPE_9__*, i8)** %13, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i32 %68(%struct.TYPE_9__* %69, i8 signext %71)
  store i32 %72, i32* %14, align 4
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* @LONG_MAX, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = sdiv i64 %77, 10
  %79 = icmp sgt i64 %73, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* @CONF_F_NCONF_GET_NUMBER_E, align 4
  %82 = load i32, i32* @CONF_R_NUMBER_TOO_LARGE, align 4
  %83 = call i32 @CONFerr(i32 %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %96

84:                                               ; preds = %67
  %85 = load i64, i64* %11, align 8
  %86 = mul nsw i64 %85, 10
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  br label %60

93:                                               ; preds = %60
  %94 = load i64, i64* %11, align 8
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %80, %28, %17
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @default_is_number(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @default_to_int(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i8* @NCONF_get_string(%struct.TYPE_9__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
