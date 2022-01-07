; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_delete_c.c_kadm5_c_delete_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_delete_c.c_kadm5_c_delete_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_delete_principal(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @_kadm5_connect(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %3, align 8
  br label %76

20:                                               ; preds = %2
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %22 = call i32* @krb5_storage_from_mem(i8* %21, i32 1024)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @krb5_clear_error_message(i32 %28)
  %30 = load i64, i64* @ENOMEM, align 8
  store i64 %30, i64* %3, align 8
  br label %76

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @kadm_delete, align 4
  %34 = call i32 @krb5_store_int32(i32* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @krb5_store_principal(i32* %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @_kadm5_client_send(%struct.TYPE_4__* %38, i32* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @krb5_storage_free(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %3, align 8
  br label %76

47:                                               ; preds = %31
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = call i64 @_kadm5_client_recv(%struct.TYPE_4__* %48, i32* %11)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %76

54:                                               ; preds = %47
  %55 = call i32* @krb5_storage_from_data(i32* %11)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @krb5_clear_error_message(i32 %61)
  %63 = call i32 @krb5_data_free(i32* %11)
  %64 = load i64, i64* @ENOMEM, align 8
  store i64 %64, i64* %3, align 8
  br label %76

65:                                               ; preds = %54
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @krb5_ret_int32(i32* %66, i64* %10)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @krb5_clear_error_message(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @krb5_storage_free(i32* %72)
  %74 = call i32 @krb5_data_free(i32* %11)
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %65, %58, %52, %45, %25, %18
  %77 = load i64, i64* %3, align 8
  ret i64 %77
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
