; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_c.c_kadm5_c_get_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_c.c_kadm5_c_get_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_get_principal(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @_kadm5_connect(i8* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %5, align 8
  br label %91

24:                                               ; preds = %4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %26 = call i32* @krb5_storage_from_mem(i8* %25, i32 1024)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @krb5_clear_error_message(i32 %32)
  %34 = load i64, i64* @ENOMEM, align 8
  store i64 %34, i64* %5, align 8
  br label %91

35:                                               ; preds = %24
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @kadm_get, align 4
  %38 = call i32 @krb5_store_int32(i32* %36, i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @krb5_store_principal(i32* %39, i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @krb5_store_int32(i32* %42, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i64 @_kadm5_client_send(%struct.TYPE_4__* %45, i32* %46)
  store i64 %47, i64* %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @krb5_storage_free(i32* %48)
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %5, align 8
  br label %91

54:                                               ; preds = %35
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = call i64 @_kadm5_client_recv(%struct.TYPE_4__* %55, i32* %15)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %5, align 8
  br label %91

61:                                               ; preds = %54
  %62 = call i32* @krb5_storage_from_data(i32* %15)
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @krb5_clear_error_message(i32 %68)
  %70 = call i32 @krb5_data_free(i32* %15)
  %71 = load i64, i64* @ENOMEM, align 8
  store i64 %71, i64* %5, align 8
  br label %91

72:                                               ; preds = %61
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @krb5_ret_int32(i32* %73, i64* %14)
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %11, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @krb5_clear_error_message(i32 %78)
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @kadm5_ret_principal_ent(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @krb5_storage_free(i32* %87)
  %89 = call i32 @krb5_data_free(i32* %15)
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %86, %65, %59, %52, %29, %22
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i64 @_kadm5_connect(i8*) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_store_principal(i32*, i32) #1

declare dso_local i64 @_kadm5_client_send(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i64 @_kadm5_client_recv(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @krb5_storage_from_data(i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @krb5_ret_int32(i32*, i64*) #1

declare dso_local i32 @kadm5_ret_principal_ent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
