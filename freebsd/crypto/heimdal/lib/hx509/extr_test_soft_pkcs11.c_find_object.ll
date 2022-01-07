; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_test_soft_pkcs11.c_find_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_test_soft_pkcs11.c_find_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32, %struct.TYPE_4__*, i64)*, i64 (i32, i32, i32, i64*)*, i64 (i32)* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@CKA_ID = common dso_local global i32 0, align 4
@CKA_CLASS = common dso_local global i32 0, align 4
@func = common dso_local global %struct.TYPE_5__* null, align 8
@CKR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"found no object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i8, i32)* @find_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_object(i32 %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x %struct.TYPE_4__], align 16
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @CKA_ID, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %20 = load i8*, i8** %7, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @CKA_CLASS, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %30 = ptrtoint i8* %8 to i32
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 0, i32* %32, align 8
  store i64 2, i64* %13, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @func, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64 (i32, %struct.TYPE_4__*, i64)*, i64 (i32, %struct.TYPE_4__*, i64)** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %42 = load i64, i64* %13, align 8
  %43 = call i64 %39(i32 %40, %struct.TYPE_4__* %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @CKR_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %5, align 8
  br label %79

49:                                               ; preds = %4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @func, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64 (i32, i32, i32, i64*)*, i64 (i32, i32, i32, i64*)** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 %52(i32 %53, i32 %54, i32 1, i64* %10)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @CKR_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %5, align 8
  br label %79

61:                                               ; preds = %49
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %5, align 8
  br label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @func, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64 (i32)*, i64 (i32)** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 %69(i32 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @CKR_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %5, align 8
  br label %79

77:                                               ; preds = %66
  %78 = load i64, i64* @CKR_OK, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77, %75, %64, %59, %47
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
