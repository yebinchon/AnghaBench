; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_c.c_kadm5_c_create_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_create_c.c_kadm5_c_create_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_create = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_create_principal(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
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
  br label %86

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
  br label %86

35:                                               ; preds = %24
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @kadm_create, align 4
  %38 = call i32 @krb5_store_int32(i32* %36, i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @kadm5_store_principal_ent(i32* %39, i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @krb5_store_int32(i32* %42, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @krb5_store_string(i32* %45, i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @_kadm5_client_send(%struct.TYPE_4__* %48, i32* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @krb5_storage_free(i32* %51)
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %35
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %5, align 8
  br label %86

57:                                               ; preds = %35
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = call i64 @_kadm5_client_recv(%struct.TYPE_4__* %58, i32* %15)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %5, align 8
  br label %86

64:                                               ; preds = %57
  %65 = call i32* @krb5_storage_from_data(i32* %15)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @krb5_clear_error_message(i32 %71)
  %73 = call i32 @krb5_data_free(i32* %15)
  %74 = load i64, i64* @ENOMEM, align 8
  store i64 %74, i64* %5, align 8
  br label %86

75:                                               ; preds = %64
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @krb5_ret_int32(i32* %76, i64* %14)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @krb5_clear_error_message(i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @krb5_storage_free(i32* %82)
  %84 = call i32 @krb5_data_free(i32* %15)
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %75, %68, %62, %55, %29, %22
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local i64 @_kadm5_connect(i8*) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @kadm5_store_principal_ent(i32*, i32) #1

declare dso_local i32 @krb5_store_string(i32*, i8*) #1

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
