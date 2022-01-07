; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_encrypt_internal_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_encrypt_internal_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i32 }
%struct.TYPE_5__ = type { i8*, i64 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_6__*, i32, i8*, i64, %struct.TYPE_5__*, i8*)* @encrypt_internal_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_internal_special(i32 %0, %struct.TYPE_6__* %1, i32 %2, i8* %3, i64 %4, %struct.TYPE_5__* %5, i8* %6) #0 {
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
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %23, align 8
  store %struct._krb5_encryption_type* %24, %struct._krb5_encryption_type** %16, align 8
  %25 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %26 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @CHECKSUMSIZE(i32 %27)
  store i64 %28, i64* %17, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %17, align 8
  %31 = add i64 %29, %30
  %32 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %33 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  store i64 %35, i64* %18, align 8
  %36 = load i64, i64* %18, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %19, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %7
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* @ENOMEM, align 8
  %43 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @krb5_set_error_message(i32 %41, i64 %42, i32 %43)
  %45 = load i64, i64* @ENOMEM, align 8
  store i64 %45, i64* %8, align 8
  br label %96

46:                                               ; preds = %7
  %47 = load i8*, i8** %19, align 8
  store i8* %47, i8** %20, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @memset(i8* %48, i32 0, i64 %49)
  %51 = load i64, i64* %17, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %20, align 8
  %54 = load i8*, i8** %20, align 8
  %55 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %56 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @krb5_generate_random_block(i8* %54, i64 %57)
  %59 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %60 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8* %63, i8** %20, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %69 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %68, i32 0, i32 1
  %70 = load i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i64 (i32, i32*, i8*, i64, i32, i32, i8*)** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %19, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i32, i32* @TRUE, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = call i64 %70(i32 %71, i32* %73, i8* %74, i64 %75, i32 %76, i32 %77, i8* %78)
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %46
  %83 = load i8*, i8** %19, align 8
  %84 = load i64, i64* %18, align 8
  %85 = call i32 @memset(i8* %83, i32 0, i64 %84)
  %86 = load i8*, i8** %19, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i64, i64* %21, align 8
  store i64 %88, i64* %8, align 8
  br label %96

89:                                               ; preds = %46
  %90 = load i8*, i8** %19, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %89, %82, %40
  %97 = load i64, i64* %8, align 8
  ret i64 %97
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @krb5_generate_random_block(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
