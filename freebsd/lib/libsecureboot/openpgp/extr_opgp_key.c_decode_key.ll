; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_key.c_decode_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_key.c_decode_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i8*, i32, i8* }
%struct.TYPE_12__ = type { i8*, i8* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@br_rsa_public_key = common dso_local global i32 0, align 4
@br_sha1_SIZE = common dso_local global i32 0, align 4
@br_sha512_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_key(i32 %0, i8** %1, i64 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store i32* null, i32** %13, align 8
  %19 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %145

26:                                               ; preds = %4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %28, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %63

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 -103, i8* %37, align 16
  %38 = load i64, i64* %8, align 8
  %39 = lshr i64 %38, 8
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %41, i8* %42, align 1
  %43 = load i64, i64* %8, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %45, i8* %46, align 2
  %47 = call i32* @EVP_get_digestbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @EVP_DigestInit(i32* %14, i32* %48)
  %50 = call i32 @EVP_DigestUpdate(i32* %14, i8* %22, i64 3)
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @EVP_DigestUpdate(i32* %14, i8* %51, i64 %52)
  %54 = trunc i64 %20 to i32
  store i32 %54, i32* %17, align 4
  %55 = call i32 @EVP_DigestFinal(i32* %14, i8* %22, i32* %17)
  %56 = load i32, i32* %17, align 4
  %57 = sub i32 %56, 8
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %22, i64 %58
  %60 = call i32 @octets2hex(i8* %59, i32 8)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %36, %26
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  %76 = load i8, i8* %74, align 1
  %77 = zext i8 %76 to i32
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %123

84:                                               ; preds = %73
  %85 = call %struct.TYPE_12__* (...) @RSA_new()
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %12, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %126

89:                                               ; preds = %84
  %90 = call i8* (i8**, ...) @mpi2bn(i8** %10)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = call i8* (i8**, ...) @mpi2bn(i8** %10)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = call %struct.TYPE_14__* (...) @EVP_PKEY_new()
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = icmp ne %struct.TYPE_14__* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %89
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108, %103, %89
  br label %126

114:                                              ; preds = %108
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %119 = call i32 @EVP_PKEY_set1_RSA(%struct.TYPE_14__* %117, %struct.TYPE_12__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %126

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %73
  %124 = load i64, i64* %8, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %145

126:                                              ; preds = %121, %113, %88
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %128 = icmp ne %struct.TYPE_12__* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = call i32 @RSA_free(%struct.TYPE_12__* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = icmp ne %struct.TYPE_14__* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = call i32 @EVP_PKEY_free(%struct.TYPE_14__* %140)
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %143, align 8
  br label %144

144:                                              ; preds = %137, %132
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %145

145:                                              ; preds = %144, %123, %25
  %146 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #2

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #2

declare dso_local i32 @octets2hex(i8*, i32) #2

declare dso_local %struct.TYPE_12__* @RSA_new(...) #2

declare dso_local i8* @mpi2bn(i8**, ...) #2

declare dso_local %struct.TYPE_14__* @EVP_PKEY_new(...) #2

declare dso_local i32 @EVP_PKEY_set1_RSA(%struct.TYPE_14__*, %struct.TYPE_12__*) #2

declare dso_local i32 @RSA_free(%struct.TYPE_12__*) #2

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
