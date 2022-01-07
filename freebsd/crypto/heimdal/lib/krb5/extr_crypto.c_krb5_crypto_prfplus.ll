; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_krb5_crypto_prfplus.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_krb5_crypto_prfplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_9__*, i64, %struct.TYPE_9__*)* @krb5_crypto_prfplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @krb5_crypto_prfplus(i32 %0, i32 %1, %struct.TYPE_9__* %2, i64 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  store i8 1, i8* %13, align 1
  %16 = call i32 @krb5_data_zero(%struct.TYPE_9__* %12)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = call i32 @krb5_data_zero(%struct.TYPE_9__* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @krb5_clear_error_message(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @krb5_data_alloc(%struct.TYPE_9__* %21, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %102

28:                                               ; preds = %5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = call i64 @krb5_data_alloc(%struct.TYPE_9__* %12, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %102

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @krb5_clear_error_message(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = call i32 @memcpy(i8* %42, i8* %45, i64 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %14, align 8
  br label %54

54:                                               ; preds = %94, %37
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  %58 = load i8, i8* %13, align 1
  %59 = add i8 %58, 1
  store i8 %59, i8* %13, align 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %58, i8* %62, align 1
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @krb5_crypto_prf(i32 %63, i32 %64, %struct.TYPE_9__* %12, %struct.TYPE_9__* %15)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %102

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load i8*, i8** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = call i32 @memcpy(i8* %76, i8* %78, i64 %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %94

88:                                               ; preds = %69
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @memcpy(i8* %89, i8* %91, i64 %92)
  store i64 0, i64* %9, align 8
  br label %94

94:                                               ; preds = %88, %75
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %14, align 8
  %100 = call i32 @krb5_data_free(%struct.TYPE_9__* %15)
  br label %54

101:                                              ; preds = %54
  br label %102

102:                                              ; preds = %101, %68, %36, %27
  %103 = call i32 @krb5_data_free(%struct.TYPE_9__* %12)
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = call i32 @krb5_data_free(%struct.TYPE_9__* %107)
  br label %109

109:                                              ; preds = %106, %102
  ret i64 0
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_9__*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @krb5_crypto_prf(i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
