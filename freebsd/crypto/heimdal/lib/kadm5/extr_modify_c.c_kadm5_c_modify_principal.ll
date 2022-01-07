; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_modify_c.c_kadm5_c_modify_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_modify_c.c_kadm5_c_modify_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_modify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_modify_principal(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @_kadm5_connect(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %4, align 8
  br label %81

22:                                               ; preds = %3
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %24 = call i32* @krb5_storage_from_mem(i8* %23, i32 1024)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @krb5_clear_error_message(i32 %30)
  %32 = load i64, i64* @ENOMEM, align 8
  store i64 %32, i64* %4, align 8
  br label %81

33:                                               ; preds = %22
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @kadm_modify, align 4
  %36 = call i32 @krb5_store_int32(i32* %34, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @kadm5_store_principal_ent(i32* %37, i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @krb5_store_int32(i32* %40, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @_kadm5_client_send(%struct.TYPE_4__* %43, i32* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @krb5_storage_free(i32* %46)
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %4, align 8
  br label %81

52:                                               ; preds = %33
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = call i64 @_kadm5_client_recv(%struct.TYPE_4__* %53, i32* %13)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %4, align 8
  br label %81

59:                                               ; preds = %52
  %60 = call i32* @krb5_storage_from_data(i32* %13)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @krb5_clear_error_message(i32 %66)
  %68 = call i32 @krb5_data_free(i32* %13)
  %69 = load i64, i64* @ENOMEM, align 8
  store i64 %69, i64* %4, align 8
  br label %81

70:                                               ; preds = %59
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @krb5_ret_int32(i32* %71, i64* %12)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @krb5_clear_error_message(i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @krb5_storage_free(i32* %77)
  %79 = call i32 @krb5_data_free(i32* %13)
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %70, %63, %57, %50, %27, %20
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i64 @_kadm5_connect(i8*) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @kadm5_store_principal_ent(i32*, i32) #1

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
