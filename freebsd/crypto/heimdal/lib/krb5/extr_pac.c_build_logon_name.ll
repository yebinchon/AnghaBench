; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_build_logon_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_build_logon_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@KRB5_PRINCIPAL_UNPARSE_NO_REALM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to count length of UTF-8 string\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to convert string to UCS-2\00", align 1
@WIND_RW_LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to write to UCS-2 buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @build_logon_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_logon_name(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @unix2nttime(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @krb5_data_zero(i32* %21)
  %23 = call i32* (...) @krb5_storage_emem()
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @krb5_enomem(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %157

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %32 = call i32 @krb5_storage_set_flags(i32* %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @krb5_store_uint32(i32* %34, i32 %35)
  %37 = load i32, i32* @out, align 4
  %38 = call i32 @CHECK(i32 %33, i32 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %41, 32
  %43 = call i32 @krb5_store_uint32(i32* %40, i32 %42)
  %44 = load i32, i32* @out, align 4
  %45 = call i32 @CHECK(i32 %39, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_NO_REALM, align 4
  %49 = call i32 @krb5_unparse_name_flags(i32 %46, i32 %47, i32 %48, i8** %13)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %29
  br label %153

53:                                               ; preds = %29
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @wind_utf8ucs2_length(i8* %54, i64* %16)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @krb5_set_error_message(i32 %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %157

65:                                               ; preds = %53
  %66 = load i64, i64* %16, align 8
  %67 = mul i64 1, %66
  %68 = call i8* @malloc(i64 %67)
  store i8* %68, i8** %17, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @krb5_enomem(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %157

76:                                               ; preds = %65
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @wind_utf8ucs2(i8* %77, i8* %78, i64* %16)
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @krb5_set_error_message(i32 %87, i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %157

91:                                               ; preds = %76
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  %94 = mul i64 %93, 2
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i8* @malloc(i64 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @krb5_enomem(i32 %102)
  store i32 %103, i32* %5, align 4
  br label %157

104:                                              ; preds = %91
  %105 = load i32, i32* @WIND_RW_LE, align 4
  store i32 %105, i32* %18, align 4
  %106 = load i8*, i8** %17, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @wind_ucs2write(i8* %106, i64 %107, i32* %18, i8* %108, i64* %15)
  store i32 %109, i32* %10, align 4
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @krb5_set_error_message(i32 %117, i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %157

121:                                              ; preds = %104
  %122 = load i64, i64* %16, align 8
  %123 = mul i64 %122, 2
  store i64 %123, i64* %15, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i32 @krb5_store_uint16(i32* %125, i64 %126)
  %128 = load i32, i32* @out, align 4
  %129 = call i32 @CHECK(i32 %124, i32 %127, i32 %128)
  %130 = load i32*, i32** %11, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @krb5_storage_write(i32* %130, i8* %131, i64 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i64, i64* %15, align 8
  %138 = trunc i64 %137 to i32
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %121
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @krb5_enomem(i32 %141)
  store i32 %142, i32* %10, align 4
  br label %153

143:                                              ; preds = %121
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @krb5_storage_to_data(i32* %144, i32* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %153

150:                                              ; preds = %143
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @krb5_storage_free(i32* %151)
  store i32 0, i32* %5, align 4
  br label %157

153:                                              ; preds = %149, %140, %52
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @krb5_storage_free(i32* %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %150, %114, %99, %84, %71, %58, %26
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @unix2nttime(i32) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @krb5_enomem(i32) #1

declare dso_local i32 @krb5_storage_set_flags(i32*, i32) #1

declare dso_local i32 @CHECK(i32, i32, i32) #1

declare dso_local i32 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_unparse_name_flags(i32, i32, i32, i8**) #1

declare dso_local i32 @wind_utf8ucs2_length(i8*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @wind_utf8ucs2(i8*, i8*, i64*) #1

declare dso_local i32 @wind_ucs2write(i8*, i64, i32*, i8*, i64*) #1

declare dso_local i32 @krb5_store_uint16(i32*, i64) #1

declare dso_local i32 @krb5_storage_write(i32*, i8*, i64) #1

declare dso_local i32 @krb5_storage_to_data(i32*, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
