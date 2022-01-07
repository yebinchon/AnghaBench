; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_chpass_c.c_kadm5_c_chpass_principal_with_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_chpass_c.c_kadm5_c_chpass_principal_with_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_chpass_with_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_chpass_principal_with_key(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @_kadm5_connect(i8* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %5, align 8
  br label %99

25:                                               ; preds = %4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %27 = call i32* @krb5_storage_from_mem(i8* %26, i32 1024)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @krb5_clear_error_message(i32 %33)
  %35 = load i64, i64* @ENOMEM, align 8
  store i64 %35, i64* %5, align 8
  br label %99

36:                                               ; preds = %25
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* @kadm_chpass_with_key, align 4
  %39 = call i32 @krb5_store_int32(i32* %37, i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @krb5_store_principal(i32* %40, i32 %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @krb5_store_int32(i32* %43, i32 %44)
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %57, %36
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @kadm5_store_key_data(i32* %51, i32* %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %46

60:                                               ; preds = %46
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i64 @_kadm5_client_send(%struct.TYPE_4__* %61, i32* %62)
  store i64 %63, i64* %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @krb5_storage_free(i32* %64)
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %5, align 8
  br label %99

70:                                               ; preds = %60
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = call i64 @_kadm5_client_recv(%struct.TYPE_4__* %71, i32* %15)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %5, align 8
  br label %99

77:                                               ; preds = %70
  %78 = call i32* @krb5_storage_from_data(i32* %15)
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @krb5_clear_error_message(i32 %84)
  %86 = call i32 @krb5_data_free(i32* %15)
  %87 = load i64, i64* @ENOMEM, align 8
  store i64 %87, i64* %5, align 8
  br label %99

88:                                               ; preds = %77
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @krb5_ret_int32(i32* %89, i64* %14)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @krb5_clear_error_message(i32 %93)
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @krb5_storage_free(i32* %95)
  %97 = call i32 @krb5_data_free(i32* %15)
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %88, %81, %75, %68, %30, %23
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local i64 @_kadm5_connect(i8*) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_store_principal(i32*, i32) #1

declare dso_local i32 @kadm5_store_key_data(i32*, i32*) #1

declare dso_local i64 @_kadm5_client_send(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i64 @_kadm5_client_recv(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @krb5_storage_from_data(i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @krb5_ret_int32(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
