; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_decrypt_internal_derived.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_decrypt_internal_derived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, i32, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i8*)* }
%struct._krb5_key_data = type { i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64 }

@KRB5_BAD_MSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Encrypted data shorter then checksum + confunder\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_12__*, i32, i8*, i64, %struct.TYPE_11__*, i8*)* @decrypt_internal_derived to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decrypt_internal_derived(i32 %0, %struct.TYPE_12__* %1, i32 %2, i8* %3, i64 %4, %struct.TYPE_11__* %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct._krb5_key_data*, align 8
  %21 = alloca %struct._krb5_encryption_type*, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %14, align 8
  store i8* %6, i8** %15, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %24, align 8
  store %struct._krb5_encryption_type* %25, %struct._krb5_encryption_type** %21, align 8
  %26 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %27 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @CHECKSUMSIZE(i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %33 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %7
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  %40 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @krb5_set_error_message(i32 %38, i64 %39, i32 %40)
  %42 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  store i64 %42, i64* %8, align 8
  br label %181

43:                                               ; preds = %7
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %16, align 8
  %46 = sub i64 %44, %45
  %47 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %48 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = urem i64 %46, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @krb5_clear_error_message(i32 %53)
  %55 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  store i64 %55, i64* %8, align 8
  br label %181

56:                                               ; preds = %43
  %57 = load i64, i64* %13, align 8
  %58 = call i8* @malloc(i64 %57)
  store i8* %58, i8** %18, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** %18, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* @ENOMEM, align 8
  %67 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @krb5_set_error_message(i32 %65, i64 %66, i32 %67)
  %69 = load i64, i64* @ENOMEM, align 8
  store i64 %69, i64* %8, align 8
  br label %181

70:                                               ; preds = %61, %56
  %71 = load i8*, i8** %18, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %13, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %13, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ENCRYPTION_USAGE(i32 %80)
  %82 = call i64 @_get_derived_key(i32 %78, %struct.TYPE_12__* %79, i32 %81, %struct._krb5_key_data** %20)
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %19, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i64, i64* %19, align 8
  store i64 %88, i64* %8, align 8
  br label %181

89:                                               ; preds = %70
  %90 = load i32, i32* %9, align 4
  %91 = load %struct._krb5_key_data*, %struct._krb5_key_data** %20, align 8
  %92 = call i64 @_key_schedule(i32 %90, %struct._krb5_key_data* %91)
  store i64 %92, i64* %19, align 8
  %93 = load i64, i64* %19, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i8*, i8** %18, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i64, i64* %19, align 8
  store i64 %98, i64* %8, align 8
  br label %181

99:                                               ; preds = %89
  %100 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %101 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %100, i32 0, i32 3
  %102 = load i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i8*)*, i64 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i8*)** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct._krb5_key_data*, %struct._krb5_key_data** %20, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = call i64 %102(i32 %103, %struct._krb5_key_data* %104, i8* %105, i64 %106, i32 0, i32 %107, i8* %108)
  store i64 %109, i64* %19, align 8
  %110 = load i64, i64* %19, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %99
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i64, i64* %19, align 8
  store i64 %115, i64* %8, align 8
  br label %181

116:                                              ; preds = %99
  %117 = load i8*, i8** %18, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i64, i64* %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %126 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @CHECKSUMTYPE(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 %128, i32* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @INTEGRITY_USAGE(i32 %132)
  %134 = load i8*, i8** %18, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @verify_checksum(i32 %130, %struct.TYPE_12__* %131, i32 %133, i8* %134, i64 %135, %struct.TYPE_13__* %17)
  store i64 %136, i64* %19, align 8
  %137 = load i64, i64* %19, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %116
  %140 = load i8*, i8** %18, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i64, i64* %19, align 8
  store i64 %142, i64* %8, align 8
  br label %181

143:                                              ; preds = %116
  %144 = load i64, i64* %13, align 8
  %145 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %146 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %144, %147
  store i64 %148, i64* %22, align 8
  %149 = load i8*, i8** %18, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %152 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i64, i64* %22, align 8
  %156 = call i32 @memmove(i8* %149, i8* %154, i64 %155)
  %157 = load i8*, i8** %18, align 8
  %158 = load i64, i64* %22, align 8
  %159 = call i32* @realloc(i8* %157, i64 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %143
  %167 = load i64, i64* %22, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i8*, i8** %18, align 8
  %171 = call i32 @free(i8* %170)
  %172 = load i32, i32* %9, align 4
  %173 = load i64, i64* @ENOMEM, align 8
  %174 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %175 = call i32 @krb5_set_error_message(i32 %172, i64 %173, i32 %174)
  %176 = load i64, i64* @ENOMEM, align 8
  store i64 %176, i64* %8, align 8
  br label %181

177:                                              ; preds = %166, %143
  %178 = load i64, i64* %22, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  store i64 0, i64* %8, align 8
  br label %181

181:                                              ; preds = %177, %169, %139, %112, %95, %85, %64, %52, %37
  %182 = load i64, i64* %8, align 8
  ret i64 %182
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @_get_derived_key(i32, %struct.TYPE_12__*, i32, %struct._krb5_key_data**) #1

declare dso_local i32 @ENCRYPTION_USAGE(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @_key_schedule(i32, %struct._krb5_key_data*) #1

declare dso_local i32 @CHECKSUMTYPE(i32) #1

declare dso_local i64 @verify_checksum(i32, %struct.TYPE_12__*, i32, i8*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @INTEGRITY_USAGE(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
