; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_generate_master_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_generate_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)* }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_generate_master_secret(%struct.TYPE_17__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @SSL_PSK, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %126

27:                                               ; preds = %4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @SSL_kPSK, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i64, i64* %7, align 8
  %42 = add i64 4, %41
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i8* @OPENSSL_malloc(i64 %45)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %151

50:                                               ; preds = %40
  %51 = load i8*, i8** %11, align 8
  store i8* %51, i8** %12, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @s2n(i64 %52, i8* %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @SSL_kPSK, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memset(i8* %60, i32 0, i64 %61)
  br label %68

63:                                               ; preds = %50
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @s2n(i64 %72, i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @memcpy(i8* %75, i8* %81, i64 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @OPENSSL_clear_free(i8* %89, i64 %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  store i8* null, i8** %96, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)*, i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)** %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = call i32 %103(%struct.TYPE_17__* %104, i32 %109, i8* %110, i64 %111, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %68
  %119 = load i8*, i8** %11, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @OPENSSL_clear_free(i8* %119, i64 %120)
  br label %151

122:                                              ; preds = %68
  %123 = load i8*, i8** %11, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @OPENSSL_clear_free(i8* %123, i64 %124)
  br label %150

126:                                              ; preds = %4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)*, i32 (%struct.TYPE_17__*, i32, i8*, i64, i32*)** %132, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = call i32 %133(%struct.TYPE_17__* %134, i32 %139, i8* %140, i64 %141, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %126
  br label %151

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %122
  store i32 1, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %148, %118, %49
  %152 = load i8*, i8** %6, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i8*, i8** %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = call i32 @OPENSSL_clear_free(i8* %158, i64 %159)
  br label %165

161:                                              ; preds = %154
  %162 = load i8*, i8** %6, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @OPENSSL_cleanse(i8* %162, i64 %163)
  br label %165

165:                                              ; preds = %161, %157
  br label %166

166:                                              ; preds = %165, %151
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  store i32* null, i32** %176, align 8
  br label %177

177:                                              ; preds = %171, %166
  %178 = load i32, i32* %10, align 4
  ret i32 %178
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @s2n(i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
