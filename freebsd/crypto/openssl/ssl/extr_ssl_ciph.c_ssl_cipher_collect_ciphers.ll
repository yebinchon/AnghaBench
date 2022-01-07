; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_collect_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_collect_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__* (i32)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, i64, %struct.TYPE_12__* }

@SSL_ENC_FLAG_DTLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__**, %struct.TYPE_13__**)* @ssl_cipher_collect_ciphers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_cipher_collect_ciphers(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_13__* %6, %struct.TYPE_13__** %7, %struct.TYPE_13__** %8) #0 {
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__**, align 8
  %18 = alloca %struct.TYPE_13__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__** %7, %struct.TYPE_13__*** %17, align 8
  store %struct.TYPE_13__** %8, %struct.TYPE_13__*** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %123, %9
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %126

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__* (i32)*, %struct.TYPE_12__* (i32)** %28, align 8
  %30 = load i32, i32* %19, align 4
  %31 = call %struct.TYPE_12__* %29(i32 %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %21, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %33 = icmp eq %struct.TYPE_12__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %26
  br label %123

40:                                               ; preds = %34
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %54, %47, %40
  br label %123

69:                                               ; preds = %61
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SSL_ENC_FLAG_DTLS, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %123

84:                                               ; preds = %78, %69
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SSL_ENC_FLAG_DTLS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %123

99:                                               ; preds = %93, %84
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %123

123:                                              ; preds = %99, %98, %83, %68, %39
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %22

126:                                              ; preds = %22
  %127 = load i32, i32* %20, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %198

129:                                              ; preds = %126
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %132, align 8
  %133 = load i32, i32* %20, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %182

135:                                              ; preds = %129
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %140, align 8
  store i32 1, i32* %19, align 4
  br label %141

141:                                              ; preds = %167, %135
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %141
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i64 %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %160
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %166, align 8
  br label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %19, align 4
  br label %141

170:                                              ; preds = %141
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sub nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i64 %174
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %181, align 8
  br label %182

182:                                              ; preds = %170, %129
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %188, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i64 0
  %191 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %17, align 8
  store %struct.TYPE_13__* %190, %struct.TYPE_13__** %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i64 %195
  %197 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %197, align 8
  br label %198

198:                                              ; preds = %182, %126
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
