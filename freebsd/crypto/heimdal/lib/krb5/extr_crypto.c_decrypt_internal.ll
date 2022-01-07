; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_decrypt_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_decrypt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct._krb5_encryption_type* }
%struct._krb5_encryption_type = type { i64, i64, i32, i64 (i32, i32*, i8*, i64, i32, i32, i8*)* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@KRB5_BAD_MSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Encrypted data shorter then checksum + confunder\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_9__*, i8*, i64, %struct.TYPE_8__*, i8*)* @decrypt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decrypt_internal(i32 %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, %struct.TYPE_8__* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct._krb5_encryption_type*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %21, align 8
  store %struct._krb5_encryption_type* %22, %struct._krb5_encryption_type** %19, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %25 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = urem i64 %23, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @krb5_clear_error_message(i32 %30)
  %32 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  store i64 %32, i64* %7, align 8
  br label %178

33:                                               ; preds = %6
  %34 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %35 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @CHECKSUMSIZE(i32 %36)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %41 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  %48 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @krb5_set_error_message(i32 %46, i64 %47, i32 %48)
  %50 = load i64, i64* @KRB5_BAD_MSIZE, align 8
  store i64 %50, i64* %7, align 8
  br label %178

51:                                               ; preds = %33
  %52 = load i64, i64* %11, align 8
  %53 = call i8* @malloc(i64 %52)
  store i8* %53, i8** %15, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %15, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* @ENOMEM, align 8
  %62 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @krb5_set_error_message(i32 %60, i64 %61, i32 %62)
  %64 = load i64, i64* @ENOMEM, align 8
  store i64 %64, i64* %7, align 8
  br label %178

65:                                               ; preds = %56, %51
  %66 = load i8*, i8** %15, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @memcpy(i8* %66, i8* %67, i64 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i64 @_key_schedule(i32 %70, i32* %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %7, align 8
  br label %178

80:                                               ; preds = %65
  %81 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %82 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %81, i32 0, i32 3
  %83 = load i64 (i32, i32*, i8*, i64, i32, i32, i8*)*, i64 (i32, i32*, i8*, i64, i32, i32, i8*)** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i8*, i8** %15, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = call i64 %83(i32 %84, i32* %86, i8* %87, i64 %88, i32 0, i32 0, i8* %89)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %7, align 8
  br label %178

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %99 = load i8*, i8** %15, align 8
  %100 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %101 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i64, i64* %17, align 8
  %105 = call i64 @krb5_data_copy(i32* %98, i8* %103, i64 %104)
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i64, i64* %14, align 8
  store i64 %111, i64* %7, align 8
  br label %178

112:                                              ; preds = %97
  %113 = load i8*, i8** %15, align 8
  %114 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %115 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i64, i64* %17, align 8
  %119 = call i32 @memset(i8* %117, i32 0, i64 %118)
  %120 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %121 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CHECKSUMTYPE(i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @verify_checksum(i32 %125, i32* null, i32 0, i8* %126, i64 %127, %struct.TYPE_10__* %16)
  store i64 %128, i64* %14, align 8
  %129 = call i32 @free_Checksum(%struct.TYPE_10__* %16)
  %130 = load i64, i64* %14, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %112
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i64, i64* %14, align 8
  store i64 %135, i64* %7, align 8
  br label %178

136:                                              ; preds = %112
  %137 = load i64, i64* %11, align 8
  %138 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %139 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %137, %140
  %142 = load i64, i64* %17, align 8
  %143 = sub i64 %141, %142
  store i64 %143, i64* %18, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %19, align 8
  %147 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i64, i64* %17, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load i64, i64* %18, align 8
  %153 = call i32 @memmove(i8* %144, i8* %151, i64 %152)
  %154 = load i8*, i8** %15, align 8
  %155 = load i64, i64* %18, align 8
  %156 = call i32* @realloc(i8* %154, i64 %155)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  store i32* %156, i32** %158, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %136
  %164 = load i64, i64* %18, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i32, i32* %8, align 4
  %170 = load i64, i64* @ENOMEM, align 8
  %171 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %172 = call i32 @krb5_set_error_message(i32 %169, i64 %170, i32 %171)
  %173 = load i64, i64* @ENOMEM, align 8
  store i64 %173, i64* %7, align 8
  br label %178

174:                                              ; preds = %163, %136
  %175 = load i64, i64* %18, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  store i64 0, i64* %7, align 8
  br label %178

178:                                              ; preds = %174, %166, %132, %108, %93, %76, %59, %45, %29
  %179 = load i64, i64* %7, align 8
  ret i64 %179
}

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local i64 @CHECKSUMSIZE(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @_key_schedule(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_data_copy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @CHECKSUMTYPE(i32) #1

declare dso_local i64 @verify_checksum(i32, i32*, i32, i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_10__*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
