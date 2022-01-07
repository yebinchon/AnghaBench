; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_salt-arcfour.c_ARCFOUR_string_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_salt-arcfour.c_ARCFOUR_string_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Password not an UCS2 string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32, %struct.TYPE_7__*)* @ARCFOUR_string_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ARCFOUR_string_to_key(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8, align 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %2, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %4, i32* %20, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %12, align 8
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %21 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load i64, i64* @ENOMEM, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @krb5_set_error_message(i32 %26, i64 %27, i32 %28)
  br label %118

30:                                               ; preds = %6
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 (...) @EVP_md4()
  %33 = call i32 @EVP_DigestInit_ex(i32* %31, i32 %32, i32* null)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @wind_utf8ucs2_length(i32 %35, i64* %15)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @krb5_set_error_message(i32 %40, i64 %41, i32 %42)
  br label %118

44:                                               ; preds = %30
  %45 = load i64, i64* %15, align 8
  %46 = mul i64 %45, 4
  %47 = call i32* @malloc(i64 %46)
  store i32* %47, i32** %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32*, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* @ENOMEM, align 8
  %56 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @krb5_set_error_message(i32 %54, i64 %55, i32 %56)
  %58 = load i64, i64* @ENOMEM, align 8
  store i64 %58, i64* %13, align 8
  br label %118

59:                                               ; preds = %50, %44
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = call i64 @wind_utf8ucs2(i32 %61, i32* %62, i64* %15)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @krb5_set_error_message(i32 %67, i64 %68, i32 %69)
  br label %118

71:                                               ; preds = %59
  store i64 0, i64* %16, align 8
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i32*, i32** %14, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %18, align 1
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 @EVP_DigestUpdate(i32* %83, i8* %18, i32 1)
  %85 = load i32*, i32** %14, align 8
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %18, align 1
  %92 = load i32*, i32** %17, align 8
  %93 = call i32 @EVP_DigestUpdate(i32* %92, i8* %18, i32 1)
  br label %94

94:                                               ; preds = %76
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %16, align 8
  br label %72

97:                                               ; preds = %72
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = call i64 @krb5_data_alloc(%struct.TYPE_9__* %102, i32 16)
  store i64 %103, i64* %13, align 8
  %104 = load i64, i64* %13, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load i32, i32* %9, align 4
  %108 = load i64, i64* @ENOMEM, align 8
  %109 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32 @krb5_set_error_message(i32 %107, i64 %108, i32 %109)
  br label %118

111:                                              ; preds = %97
  %112 = load i32*, i32** %17, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @EVP_DigestFinal_ex(i32* %112, i32 %116, i32* null)
  br label %118

118:                                              ; preds = %111, %106, %66, %53, %39, %24
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @EVP_MD_CTX_destroy(i32* %119)
  %121 = load i32*, i32** %14, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32*, i32** %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @memset(i32* %124, i32 0, i64 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @free(i32* %128)
  %130 = load i64, i64* %13, align 8
  ret i64 %130
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md4(...) #1

declare dso_local i64 @wind_utf8ucs2_length(i32, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @wind_utf8ucs2(i32, i32*, i64*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
