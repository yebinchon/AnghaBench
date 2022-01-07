; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_derive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_10__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, i32, i64 }

@DH_F_PKEY_DH_DERIVE = common dso_local global i32 0, align 4
@DH_R_KEYS_NOT_SET = common dso_local global i32 0, align 4
@EVP_PKEY_DH_KDF_NONE = common dso_local global i64 0, align 8
@EVP_PKEY_DH_KDF_X9_42 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i64*)* @pkey_dh_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_dh_derive(%struct.TYPE_14__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %10, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @DH_F_PKEY_DH_DERIVE, align 4
  %28 = load i32, i32* @DH_R_KEYS_NOT_SET, align 4
  %29 = call i32 @DHerr(i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %163

30:                                               ; preds = %21
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EVP_PKEY_DH_KDF_NONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %30
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @DH_size(i32* %54)
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  store i32 1, i32* %4, align 4
  br label %163

57:                                               ; preds = %50
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @DH_compute_key_padded(i8* %63, i32* %64, i32* %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  br label %73

68:                                               ; preds = %57
  %69 = load i8*, i8** %6, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @DH_compute_key(i8* %69, i32* %70, i32* %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %163

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %7, align 8
  store i64 %80, i64* %81, align 8
  store i32 1, i32* %4, align 4
  br label %163

82:                                               ; preds = %30
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @EVP_PKEY_DH_KDF_X9_42, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %161

88:                                               ; preds = %82
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93, %88
  store i32 0, i32* %4, align 4
  br label %163

99:                                               ; preds = %93
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  store i32 1, i32* %4, align 4
  br label %163

107:                                              ; preds = %99
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %163

115:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = call i64 @DH_size(i32* %116)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i8* @OPENSSL_malloc(i64 %118)
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %156

123:                                              ; preds = %115
  %124 = load i8*, i8** %12, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i64 @DH_compute_key_padded(i8* %124, i32* %125, i32* %126)
  %128 = icmp sle i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %156

130:                                              ; preds = %123
  %131 = load i8*, i8** %6, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @DH_KDF_X9_42(i8* %131, i64 %133, i8* %134, i64 %135, i32 %138, i32 %141, i32 %144, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %130
  br label %156

151:                                              ; preds = %130
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %7, align 8
  store i64 %154, i64* %155, align 8
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %151, %150, %129, %122
  %157 = load i8*, i8** %12, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @OPENSSL_clear_free(i8* %157, i64 %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %4, align 4
  br label %163

161:                                              ; preds = %82
  br label %162

162:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %156, %114, %102, %98, %78, %76, %53, %26
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i64 @DH_size(i32*) #1

declare dso_local i64 @DH_compute_key_padded(i8*, i32*, i32*) #1

declare dso_local i32 @DH_compute_key(i8*, i32*, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @DH_KDF_X9_42(i8*, i64, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
