; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_c.c_kadm5_c_get_principals.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_c.c_kadm5_c_get_principals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i64 0, align 8
@kadm_get_princs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_c_get_principals(i8* %0, i8* %1, i8*** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @_kadm5_connect(i8* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %5, align 8
  br label %115

25:                                               ; preds = %4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %27 = call i32* @krb5_storage_from_mem(i8* %26, i32 1024)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @ENOMEM, align 8
  store i64 %31, i64* %5, align 8
  br label %115

32:                                               ; preds = %25
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* @kadm_get_princs, align 4
  %35 = call i32 @krb5_store_int32(i32* %33, i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @krb5_store_int32(i32* %36, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @krb5_store_string(i32* %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @_kadm5_client_send(i32* %48, i32* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @krb5_storage_free(i32* %51)
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %5, align 8
  br label %115

57:                                               ; preds = %47
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @_kadm5_client_recv(i32* %58, i32* %15)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %5, align 8
  br label %115

64:                                               ; preds = %57
  %65 = call i32* @krb5_storage_from_data(i32* %15)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 @krb5_data_free(i32* %15)
  %70 = load i64, i64* @ENOMEM, align 8
  store i64 %70, i64* %5, align 8
  br label %115

71:                                               ; preds = %64
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @krb5_ret_int32(i32* %72, i32* %14)
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %71
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @krb5_ret_int32(i32* %79, i32* %14)
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i8** @calloc(i32 %82, i32 8)
  %84 = load i8***, i8**** %8, align 8
  store i8** %83, i8*** %84, align 8
  %85 = load i8***, i8**** %8, align 8
  %86 = load i8**, i8*** %85, align 8
  %87 = icmp eq i8** %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i64, i64* @ENOMEM, align 8
  store i64 %89, i64* %11, align 8
  br label %110

90:                                               ; preds = %78
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32*, i32** %12, align 8
  %97 = load i8***, i8**** %8, align 8
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = call i32 @krb5_ret_string(i32* %96, i8** %101)
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %91

106:                                              ; preds = %91
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %71
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @krb5_storage_free(i32* %111)
  %113 = call i32 @krb5_data_free(i32* %15)
  %114 = load i64, i64* %11, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %110, %68, %62, %55, %30, %23
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i64 @_kadm5_connect(i8*) #1

declare dso_local i32* @krb5_storage_from_mem(i8*, i32) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_store_string(i32*, i8*) #1

declare dso_local i64 @_kadm5_client_send(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i64 @_kadm5_client_recv(i32*, i32*) #1

declare dso_local i32* @krb5_storage_from_data(i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @krb5_ret_string(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
