; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_randkey_c.c_kadm5_c_randkey_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_randkey_c.c_kadm5_c_randkey_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@kadm_randkey = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_randkey_principal(i8* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @_kadm5_connect(i8* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %5, align 8
  br label %120

26:                                               ; preds = %4
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %28 = call i32* @krb5_storage_from_mem(i8* %27, i32 1024)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @krb5_clear_error_message(i32 %34)
  %36 = load i64, i64* @ENOMEM, align 8
  store i64 %36, i64* %5, align 8
  br label %120

37:                                               ; preds = %26
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* @kadm_randkey, align 4
  %40 = call i32 @krb5_store_int32(i32* %38, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @krb5_store_principal(i32* %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @_kadm5_client_send(%struct.TYPE_4__* %44, i32* %45)
  store i64 %46, i64* %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @krb5_storage_free(i32* %47)
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %5, align 8
  br label %120

53:                                               ; preds = %37
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = call i64 @_kadm5_client_recv(%struct.TYPE_4__* %54, i32* %15)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %5, align 8
  br label %120

60:                                               ; preds = %53
  %61 = call i32* @krb5_storage_from_data(i32* %15)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @krb5_clear_error_message(i32 %67)
  %69 = call i32 @krb5_data_free(i32* %15)
  %70 = load i64, i64* @ENOMEM, align 8
  store i64 %70, i64* %5, align 8
  br label %120

71:                                               ; preds = %60
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @krb5_clear_error_message(i32 %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @krb5_ret_int32(i32* %76, i32* %14)
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %71
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @krb5_ret_int32(i32* %83, i32* %14)
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32* @malloc(i32 %88)
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i64, i64* @ENOMEM, align 8
  store i64 %93, i64* %11, align 8
  br label %115

94:                                               ; preds = %82
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @krb5_ret_keyblock(i32* %100, i32* %104)
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %95

109:                                              ; preds = %95
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = load i32**, i32*** %8, align 8
  store i32* %112, i32** %113, align 8
  br label %114

114:                                              ; preds = %109, %71
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @krb5_storage_free(i32* %116)
  %118 = call i32 @krb5_data_free(i32* %15)
  %119 = load i64, i64* %11, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %115, %64, %58, %51, %31, %24
  %121 = load i64, i64* %5, align 8
  ret i64 %121
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

declare dso_local i32 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @krb5_ret_keyblock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
