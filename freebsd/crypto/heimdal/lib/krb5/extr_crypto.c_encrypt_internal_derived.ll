; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_encrypt_internal_derived.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_encrypt_internal_derived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i8*)*, i32 }
%struct._krb5_key_data = type { i32 }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i8* }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_CRYPTO_INTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_13__*, i32, i8*, i64, %struct.TYPE_12__*, i8*)* @encrypt_internal_derived to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_internal_derived(i32 %0, %struct.TYPE_13__* %1, i32 %2, i8* %3, i64 %4, %struct.TYPE_12__* %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_14__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct._krb5_key_data*, align 8
  %25 = alloca %struct._krb5_encryption_type*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %14, align 8
  store i8* %6, i8** %15, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %27, align 8
  store %struct._krb5_encryption_type* %28, %struct._krb5_encryption_type** %25, align 8
  %29 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %30 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @CHECKSUMSIZE(i32 %31)
  store i64 %32, i64* %18, align 8
  %33 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %34 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %40 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = sub i64 %42, 1
  %44 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %45 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, 1
  %48 = xor i64 %47, -1
  %49 = and i64 %43, %48
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %18, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %19, align 8
  %53 = load i64, i64* %19, align 8
  %54 = call i8* @calloc(i32 1, i64 %53)
  store i8* %54, i8** %21, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %7
  %58 = load i32, i32* %9, align 4
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @krb5_set_error_message(i32 %58, i64 %59, i32 %60)
  %62 = load i64, i64* @ENOMEM, align 8
  store i64 %62, i64* %8, align 8
  br label %161

63:                                               ; preds = %7
  %64 = load i8*, i8** %21, align 8
  store i8* %64, i8** %22, align 8
  %65 = load i8*, i8** %22, align 8
  %66 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %67 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @krb5_generate_random_block(i8* %65, i64 %68)
  %70 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %71 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %22, align 8
  %75 = load i8*, i8** %22, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @memcpy(i8* %75, i8* %76, i64 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %81 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @INTEGRITY_USAGE(i32 %84)
  %86 = load i8*, i8** %21, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i64 @create_checksum(i32 %79, i32 %82, %struct.TYPE_13__* %83, i32 %85, i8* %86, i64 %87, %struct.TYPE_14__* %20)
  store i64 %88, i64* %23, align 8
  %89 = load i64, i64* %23, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %63
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %18, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = call i32 @free_Checksum(%struct.TYPE_14__* %20)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @krb5_clear_error_message(i32 %99)
  %101 = load i64, i64* @KRB5_CRYPTO_INTERNAL, align 8
  store i64 %101, i64* %23, align 8
  br label %102

102:                                              ; preds = %97, %91, %63
  %103 = load i64, i64* %23, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %154

106:                                              ; preds = %102
  %107 = load i8*, i8** %21, align 8
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i8* %109, i8* %112, i64 %115)
  %117 = call i32 @free_Checksum(%struct.TYPE_14__* %20)
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @ENCRYPTION_USAGE(i32 %120)
  %122 = call i64 @_get_derived_key(i32 %118, %struct.TYPE_13__* %119, i32 %121, %struct._krb5_key_data** %24)
  store i64 %122, i64* %23, align 8
  %123 = load i64, i64* %23, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  br label %154

126:                                              ; preds = %106
  %127 = load i32, i32* %9, align 4
  %128 = load %struct._krb5_key_data*, %struct._krb5_key_data** %24, align 8
  %129 = call i64 @_key_schedule(i32 %127, %struct._krb5_key_data* %128)
  store i64 %129, i64* %23, align 8
  %130 = load i64, i64* %23, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %154

133:                                              ; preds = %126
  %134 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %25, align 8
  %135 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %134, i32 0, i32 2
  %136 = load i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i8*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i8*)** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load %struct._krb5_key_data*, %struct._krb5_key_data** %24, align 8
  %139 = load i8*, i8** %21, align 8
  %140 = load i64, i64* %17, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i8*, i8** %15, align 8
  %143 = call i64 %136(i32 %137, %struct._krb5_key_data* %138, i8* %139, i64 %140, i32 1, i32 %141, i8* %142)
  store i64 %143, i64* %23, align 8
  %144 = load i64, i64* %23, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %154

147:                                              ; preds = %133
  %148 = load i8*, i8** %21, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* %19, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  store i64 0, i64* %8, align 8
  br label %161

154:                                              ; preds = %146, %132, %125, %105
  %155 = load i8*, i8** %21, align 8
  %156 = load i64, i64* %19, align 8
  %157 = call i32 @memset(i8* %155, i32 0, i64 %156)
  %158 = load i8*, i8** %21, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i64, i64* %23, align 8
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %154, %147, %57
  %162 = load i64, i64* %8, align 8
  ret i64 %162
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_generate_random_block(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @create_checksum(i32, i32, %struct.TYPE_13__*, i32, i8*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @INTEGRITY_USAGE(i32) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_14__*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i64 @_get_derived_key(i32, %struct.TYPE_13__*, i32, %struct._krb5_key_data**) #1

declare dso_local i32 @ENCRYPTION_USAGE(i32) #1

declare dso_local i64 @_key_schedule(i32, %struct._krb5_key_data*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
