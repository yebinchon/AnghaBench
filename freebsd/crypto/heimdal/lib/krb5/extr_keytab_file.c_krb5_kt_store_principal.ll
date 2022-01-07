; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_krb5_kt_store_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_krb5_kt_store_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS = common dso_local global i32 0, align 4
@KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_7__*)* @krb5_kt_store_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_kt_store_principal(i32 %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS, align 4
  %12 = call i64 @krb5_storage_is_flags(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = call i32 @krb5_store_int16(i32* %15, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @krb5_store_int16(i32* %24, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %23, %14
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @krb5_kt_store_string(i32* %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %93

46:                                               ; preds = %36
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %48, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %47
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @krb5_kt_store_string(i32* %57, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %93

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %47

75:                                               ; preds = %47
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE, align 4
  %78 = call i64 @krb5_storage_is_flags(i32* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @krb5_store_int32(i32* %81, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %93

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %75
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %89, %69, %44, %34
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @krb5_storage_is_flags(i32*, i32) #1

declare dso_local i32 @krb5_store_int16(i32*, i32) #1

declare dso_local i32 @krb5_kt_store_string(i32*, i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
