; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_salt-aes.c_AES_string_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_salt-aes.c_AES_string_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct._krb5_encryption_type = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct._krb5_key_data = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@_krb5_AES_string_to_default_iterator = common dso_local global i64 0, align 8
@KRB5_PROG_KEYTYPE_NOSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error calculating s2k\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"kerberos\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i64, i32*)* @AES_string_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AES_string_to_key(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct._krb5_encryption_type*, align 8
  %17 = alloca %struct._krb5_key_data, align 8
  %18 = alloca i64, align 8
  %19 = bitcast %struct.TYPE_14__* %8 to i64*
  store i64 %2, i64* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %21 = bitcast %struct.TYPE_11__* %20 to i64*
  store i64 %3, i64* %21, align 4
  %22 = bitcast %struct.TYPE_14__* %10 to i64*
  store i64 %4, i64* %22, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i64, i64* @_krb5_AES_string_to_default_iterator, align 8
  store i64 %27, i64* %15, align 8
  br label %40

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_krb5_get_int(i32 %34, i64* %18, i32 4)
  %36 = load i64, i64* %18, align 8
  store i64 %36, i64* %15, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @KRB5_PROG_KEYTYPE_NOSUPP, align 4
  store i32 %38, i32* %7, align 4
  br label %134

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %12, align 4
  %42 = call %struct._krb5_encryption_type* @_krb5_find_enctype(i32 %41)
  store %struct._krb5_encryption_type* %42, %struct._krb5_encryption_type** %16, align 8
  %43 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %44 = icmp eq %struct._krb5_encryption_type* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @KRB5_PROG_KEYTYPE_NOSUPP, align 4
  store i32 %46, i32* %7, align 4
  br label %134

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call i32 @ALLOC(%struct.TYPE_16__* %50, i32 1)
  %52 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = icmp eq %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i8* @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @krb5_set_error_message(i32 %56, i32 %57, i8* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %7, align 4
  br label %134

61:                                               ; preds = %47
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %70 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @krb5_data_alloc(%struct.TYPE_15__* %68, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i8* @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @krb5_set_error_message(i32 %78, i32 %79, i8* %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %7, align 4
  br label %134

83:                                               ; preds = %61
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %15, align 8
  %95 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %96 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PKCS5_PBKDF2_HMAC_SHA1(i32 %85, i32 %87, i32 %90, i32 %93, i64 %94, i32 %99, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %116

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %111 = call i32 @_krb5_free_key_data(i32 %109, %struct._krb5_key_data* %17, %struct._krb5_encryption_type* %110)
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @KRB5_PROG_KEYTYPE_NOSUPP, align 4
  %114 = call i32 @krb5_set_error_message(i32 %112, i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @KRB5_PROG_KEYTYPE_NOSUPP, align 4
  store i32 %115, i32* %7, align 4
  br label %134

116:                                              ; preds = %83
  %117 = load i32, i32* %11, align 4
  %118 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %119 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %120 = call i32 @_krb5_derive_key(i32 %117, %struct._krb5_encryption_type* %118, %struct._krb5_key_data* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %17, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @krb5_copy_keyblock_contents(i32 %124, %struct.TYPE_16__* %126, i32* %127)
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %123, %116
  %130 = load i32, i32* %11, align 4
  %131 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %132 = call i32 @_krb5_free_key_data(i32 %130, %struct._krb5_key_data* %17, %struct._krb5_encryption_type* %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %129, %108, %77, %55, %45, %37
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @_krb5_get_int(i32, i64*, i32) #1

declare dso_local %struct._krb5_encryption_type* @_krb5_find_enctype(i32) #1

declare dso_local i32 @ALLOC(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i8* @N_(i8*, i8*) #1

declare dso_local i32 @krb5_data_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @PKCS5_PBKDF2_HMAC_SHA1(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @_krb5_free_key_data(i32, %struct._krb5_key_data*, %struct._krb5_encryption_type*) #1

declare dso_local i32 @_krb5_derive_key(i32, %struct._krb5_encryption_type*, %struct._krb5_key_data*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @krb5_copy_keyblock_contents(i32, %struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
