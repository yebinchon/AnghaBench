; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_digest.c_EVP_DigestInit_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_digest.c_EVP_DigestInit_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i64, i32*, i32, i32* }
%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_9__*)*, i64, i32 }

@EVP_MD_CTX_FLAG_CLEANED = common dso_local global i32 0, align 4
@EVP_F_EVP_DIGESTINIT_EX = common dso_local global i32 0, align 4
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@EVP_R_NO_DIGEST_SET = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_NO_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_TYPE_SIG = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_DIGESTINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DigestInit_ex(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = load i32, i32* @EVP_MD_CTX_FLAG_CLEANED, align 4
  %12 = call i32 @EVP_MD_CTX_clear_flags(%struct.TYPE_9__* %10, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %22
  br label %167

36:                                               ; preds = %25, %17, %3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %86

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ENGINE_finish(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ENGINE_init(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %52 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %53 = call i32 @EVPerr(i32 %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %203

54:                                               ; preds = %46
  br label %60

55:                                               ; preds = %39
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32* @ENGINE_get_digest_engine(i64 %58)
  store i32* %59, i32** %7, align 8
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.TYPE_10__* @ENGINE_get_digest(i32* %64, i64 %67)
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %8, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = icmp eq %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %73 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %74 = call i32 @EVPerr(i32 %72, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @ENGINE_finish(i32* %75)
  store i32 0, i32* %4, align 4
  br label %203

77:                                               ; preds = %63
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  store i32* %79, i32** %81, align 8
  br label %85

82:                                               ; preds = %60
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %82, %77
  br label %99

86:                                               ; preds = %36
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %93 = load i32, i32* @EVP_R_NO_DIGEST_SET, align 4
  %94 = call i32 @EVPerr(i32 %92, i32 %93)
  store i32 0, i32* %4, align 4
  br label %203

95:                                               ; preds = %86
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %6, align 8
  br label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = icmp ne %struct.TYPE_10__* %102, %103
  br i1 %104, label %105, label %166

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = icmp ne %struct.TYPE_10__* %108, null
  br i1 %109, label %110, label %129

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @OPENSSL_clear_free(i32* %120, i64 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %117, %110, %105
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %165, label %139

139:                                              ; preds = %129
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32* @OPENSSL_zalloc(i64 %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %144
  %161 = load i32, i32* @EVP_F_EVP_DIGESTINIT_EX, align 4
  %162 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %163 = call i32 @EVPerr(i32 %161, i32 %162)
  store i32 0, i32* %4, align 4
  br label %203

164:                                              ; preds = %144
  br label %165

165:                                              ; preds = %164, %139, %129
  br label %166

166:                                              ; preds = %165, %99
  br label %167

167:                                              ; preds = %166, %35
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %167
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @EVP_PKEY_OP_TYPE_SIG, align 4
  %177 = load i32, i32* @EVP_PKEY_CTRL_DIGESTINIT, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = call i32 @EVP_PKEY_CTX_ctrl(i64 %175, i32 -1, i32 %176, i32 %177, i32 0, %struct.TYPE_9__* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, -2
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %203

186:                                              ; preds = %182, %172
  br label %187

187:                                              ; preds = %186, %167
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  store i32 1, i32* %4, align 4
  br label %203

195:                                              ; preds = %187
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %199, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = call i32 %200(%struct.TYPE_9__* %201)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %195, %194, %185, %160, %91, %71, %50
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @EVP_MD_CTX_clear_flags(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @ENGINE_get_digest_engine(i64) #1

declare dso_local %struct.TYPE_10__* @ENGINE_get_digest(i32*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i64) #1

declare dso_local i32* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @EVP_PKEY_CTX_ctrl(i64, i32, i32, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
