; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_encrypt_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_encrypt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i32 }
%struct.TYPE_11__ = type { i8*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i8* }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_CRYPTO_INTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_12__*, i8*, i64, %struct.TYPE_11__*, i8*)* @encrypt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_internal(i32 %0, %struct.TYPE_12__* %1, i8* %2, i64 %3, %struct.TYPE_11__* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct._krb5_encryption_type*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %23, align 8
  store %struct._krb5_encryption_type* %24, %struct._krb5_encryption_type** %21, align 8
  %25 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %26 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @CHECKSUMSIZE(i32 %27)
  store i64 %28, i64* %16, align 8
  %29 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %30 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %16, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %38 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = sub i64 %40, 1
  %42 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %43 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, 1
  %46 = xor i64 %45, -1
  %47 = and i64 %41, %46
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i8* @calloc(i32 1, i64 %48)
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %6
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* @ENOMEM, align 8
  %55 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @krb5_set_error_message(i32 %53, i64 %54, i32 %55)
  %57 = load i64, i64* @ENOMEM, align 8
  store i64 %57, i64* %7, align 8
  br label %160

58:                                               ; preds = %6
  %59 = load i8*, i8** %18, align 8
  store i8* %59, i8** %19, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %62 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @krb5_generate_random_block(i8* %60, i64 %63)
  %65 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %66 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %19, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %19, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i32 @memset(i8* %70, i32 0, i64 %71)
  %73 = load i64, i64* %16, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %19, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @memcpy(i8* %76, i8* %77, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %82 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i64 @create_checksum(i32 %80, i32 %83, %struct.TYPE_12__* %84, i32 0, i8* %85, i64 %86, %struct.TYPE_13__* %17)
  store i64 %87, i64* %20, align 8
  %88 = load i64, i64* %20, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %58
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @krb5_clear_error_message(i32 %97)
  %99 = call i32 @free_Checksum(%struct.TYPE_13__* %17)
  %100 = load i64, i64* @KRB5_CRYPTO_INTERNAL, align 8
  store i64 %100, i64* %20, align 8
  br label %101

101:                                              ; preds = %96, %90, %58
  %102 = load i64, i64* %20, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %153

105:                                              ; preds = %101
  %106 = load i8*, i8** %18, align 8
  %107 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %108 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @memcpy(i8* %110, i8* %113, i64 %116)
  %118 = call i32 @free_Checksum(%struct.TYPE_13__* %17)
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = call i64 @_key_schedule(i32 %119, i32* %121)
  store i64 %122, i64* %20, align 8
  %123 = load i64, i64* %20, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %105
  br label %153

126:                                              ; preds = %105
  %127 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  %128 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %127, i32 0, i32 2
  %129 = load i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i64 (i32, i32*, i8*, i64, i32, i32, i8*)** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i8*, i8** %18, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = call i64 %129(i32 %130, i32* %132, i8* %133, i64 %134, i32 1, i32 0, i8* %135)
  store i64 %136, i64* %20, align 8
  %137 = load i64, i64* %20, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %126
  %140 = load i8*, i8** %18, align 8
  %141 = load i64, i64* %15, align 8
  %142 = call i32 @memset(i8* %140, i32 0, i64 %141)
  %143 = load i8*, i8** %18, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i64, i64* %20, align 8
  store i64 %145, i64* %7, align 8
  br label %160

146:                                              ; preds = %126
  %147 = load i8*, i8** %18, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  store i64 0, i64* %7, align 8
  br label %160

153:                                              ; preds = %125, %104
  %154 = load i8*, i8** %18, align 8
  %155 = load i64, i64* %15, align 8
  %156 = call i32 @memset(i8* %154, i32 0, i64 %155)
  %157 = load i8*, i8** %18, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load i64, i64* %20, align 8
  store i64 %159, i64* %7, align 8
  br label %160

160:                                              ; preds = %153, %146, %139, %52
  %161 = load i64, i64* %7, align 8
  ret i64 %161
}

declare dso_local i64 @CHECKSUMSIZE(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_generate_random_block(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @create_checksum(i32, i32, %struct.TYPE_12__*, i32, i8*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_13__*) #1

declare dso_local i64 @_key_schedule(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
