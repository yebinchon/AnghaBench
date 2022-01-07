; ModuleID = '/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gss_krb5_import_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_gss_krb5.c_gss_krb5_import_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GSS_KRB5_IMPORT_CRED_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_krb5_import_cred(i64* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca i8*, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 %19, i32* %20, align 4
  %21 = call i64 @krb5_init_context(i32* %14)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i64, i64* %15, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %27, i64* %6, align 8
  br label %145

28:                                               ; preds = %5
  %29 = call i32* (...) @krb5_storage_emem()
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %35, i64* %13, align 8
  br label %135

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @krb5_cc_get_full_name(i32 %40, i32 %41, i8** %18)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %16, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = call i64 @krb5_store_string(i32* %46, i8* %47)
  store i64 %48, i64* %15, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %55

52:                                               ; preds = %36
  %53 = load i32*, i32** %16, align 8
  %54 = call i64 @krb5_store_string(i32* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i64, i64* %15, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %15, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %61, i64* %13, align 8
  br label %135

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @krb5_unparse_name(i32 %66, i32 %67, i8** %18)
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32*, i32** %16, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = call i64 @krb5_store_string(i32* %72, i8* %73)
  store i64 %74, i64* %15, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %81

78:                                               ; preds = %62
  %79 = load i32*, i32** %16, align 8
  %80 = call i64 @krb5_store_string(i32* %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i64, i64* %15, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* %15, align 8
  %86 = load i64*, i64** %7, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %87, i64* %13, align 8
  br label %135

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @krb5_kt_get_full_name(i32 %92, i32 %93, i8** %18)
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32*, i32** %16, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = call i64 @krb5_store_string(i32* %98, i8* %99)
  store i64 %100, i64* %15, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %97, %91
  br label %107

104:                                              ; preds = %88
  %105 = load i32*, i32** %16, align 8
  %106 = call i64 @krb5_store_string(i32* %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i64, i64* %15, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %15, align 8
  %112 = load i64*, i64** %7, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %113, i64* %13, align 8
  br label %135

114:                                              ; preds = %107
  %115 = load i32*, i32** %16, align 8
  %116 = call i64 @krb5_storage_to_data(i32* %115, %struct.TYPE_6__* %17)
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i64, i64* %15, align 8
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %122, i64* %13, align 8
  br label %135

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = load i64*, i64** %7, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* @GSS_KRB5_IMPORT_CRED_X, align 4
  %133 = call i64 @gss_set_cred_option(i64* %130, i32* %131, i32 %132, %struct.TYPE_7__* %12)
  store i64 %133, i64* %13, align 8
  %134 = call i32 @krb5_data_free(%struct.TYPE_6__* %17)
  br label %135

135:                                              ; preds = %123, %119, %110, %84, %58, %32
  %136 = load i32*, i32** %16, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32*, i32** %16, align 8
  %140 = call i32 @krb5_storage_free(i32* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @krb5_free_context(i32 %142)
  %144 = load i64, i64* %13, align 8
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %141, %24
  %146 = load i64, i64* %6, align 8
  ret i64 %146
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i64 @krb5_cc_get_full_name(i32, i32, i8**) #1

declare dso_local i64 @krb5_store_string(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @krb5_kt_get_full_name(i32, i32, i8**) #1

declare dso_local i64 @krb5_storage_to_data(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @gss_set_cred_option(i64*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_6__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
