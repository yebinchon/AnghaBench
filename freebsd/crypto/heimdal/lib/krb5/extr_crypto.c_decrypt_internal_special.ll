; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_decrypt_internal_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_decrypt_internal_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i32 }
%struct.TYPE_5__ = type { i64, i32* }

@KRB5_BAD_MSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Encrypted data shorter then checksum + confunder\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_6__*, i32, i8*, i64, %struct.TYPE_5__*, i8*)* @decrypt_internal_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decrypt_internal_special(i32 %0, %struct.TYPE_6__* %1, i32 %2, i8* %3, i64 %4, %struct.TYPE_5__* %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct._krb5_encryption_type*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %22, align 8
  store %struct._krb5_encryption_type* %23, %struct._krb5_encryption_type** %16, align 8
  %24 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %25 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @CHECKSUMSIZE(i32 %26)
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %17, align 8
  %30 = sub i64 %28, %29
  %31 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %32 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %37 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = urem i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %7
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @krb5_clear_error_message(i32 %42)
  %44 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  store i64 %44, i64* %8, align 8
  br label %128

45:                                               ; preds = %7
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %49 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  %56 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @krb5_set_error_message(i32 %54, i64 %55, i32 %56)
  %58 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  store i64 %58, i64* %8, align 8
  br label %128

59:                                               ; preds = %45
  %60 = load i64, i64* %13, align 8
  %61 = call i8* @malloc(i64 %60)
  store i8* %61, i8** %19, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* @ENOMEM, align 8
  %67 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @krb5_set_error_message(i32 %65, i64 %66, i32 %67)
  %69 = load i64, i64* @ENOMEM, align 8
  store i64 %69, i64* %8, align 8
  br label %128

70:                                               ; preds = %59
  %71 = load i8*, i8** %19, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  %75 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %76 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %75, i32 0, i32 2
  %77 = load i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i64 (i32, i32*, i8*, i64, i32, i32, i8*)** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %19, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %15, align 8
  %86 = call i64 %77(i32 %78, i32* %80, i8* %81, i64 %82, i32 %83, i32 %84, i8* %85)
  store i64 %86, i64* %20, align 8
  %87 = load i64, i64* %20, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %70
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i64, i64* %20, align 8
  store i64 %92, i64* %8, align 8
  br label %128

93:                                               ; preds = %70
  %94 = load i8*, i8** %19, align 8
  %95 = load i8*, i8** %19, align 8
  %96 = load i64, i64* %17, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %99 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @memmove(i8* %94, i8* %101, i64 %102)
  %104 = load i8*, i8** %19, align 8
  %105 = load i64, i64* %18, align 8
  %106 = call i32* @realloc(i8* %104, i64 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %93
  %114 = load i64, i64* %18, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i8*, i8** %19, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i64, i64* @ENOMEM, align 8
  %121 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32 @krb5_set_error_message(i32 %119, i64 %120, i32 %121)
  %123 = load i64, i64* @ENOMEM, align 8
  store i64 %123, i64* %8, align 8
  br label %128

124:                                              ; preds = %113, %93
  %125 = load i64, i64* %18, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  store i64 0, i64* %8, align 8
  br label %128

128:                                              ; preds = %124, %116, %89, %64, %53, %41
  %129 = load i64, i64* %8, align 8
  ret i64 %129
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
