; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.bio_bio_st* }
%struct.bio_bio_st = type { i64, i32, i64, %struct.TYPE_11__*, i32*, i32, i64 }
%struct.TYPE_11__ = type { %struct.bio_bio_st* }

@BIO_F_BIO_CTRL = common dso_local global i32 0, align 4
@BIO_R_IN_USE = common dso_local global i32 0, align 4
@BIO_R_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32, i64, i8*)* @bio_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_ctrl(%struct.TYPE_12__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bio_bio_st*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.bio_bio_st*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.bio_bio_st*, align 8
  %16 = alloca %struct.bio_bio_st*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.bio_bio_st*, %struct.bio_bio_st** %18, align 8
  store %struct.bio_bio_st* %19, %struct.bio_bio_st** %10, align 8
  %20 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %21 = icmp ne %struct.bio_bio_st* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %225 [
    i32 129, label %25
    i32 137, label %61
    i32 135, label %65
    i32 139, label %75
    i32 136, label %78
    i32 138, label %98
    i32 130, label %102
    i32 128, label %105
    i32 133, label %108
    i32 134, label %112
    i32 131, label %117
    i32 132, label %121
    i32 142, label %126
    i32 144, label %137
    i32 141, label %141
    i32 143, label %147
    i32 140, label %163
    i32 147, label %174
    i32 145, label %199
    i32 146, label %200
  ]

25:                                               ; preds = %4
  %26 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %27 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %26, i32 0, i32 3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @BIO_F_BIO_CTRL, align 4
  %32 = load i32, i32* @BIO_R_IN_USE, align 4
  %33 = call i32 @BIOerr(i32 %31, i32 %32)
  store i64 0, i64* %9, align 8
  br label %60

34:                                               ; preds = %25
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @BIO_F_BIO_CTRL, align 4
  %39 = load i32, i32* @BIO_R_INVALID_ARGUMENT, align 4
  %40 = call i32 @BIOerr(i32 %38, i32 %39)
  store i64 0, i64* %9, align 8
  br label %59

41:                                               ; preds = %34
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %11, align 8
  %43 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %44 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %50 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @OPENSSL_free(i32* %51)
  %53 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %54 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %57 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %48, %41
  store i64 1, i64* %9, align 8
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %30
  br label %226

61:                                               ; preds = %4
  %62 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %63 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %226

65:                                               ; preds = %4
  %66 = load i8*, i8** %8, align 8
  %67 = bitcast i8* %66 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %12, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = call i32 @bio_make_pair(%struct.TYPE_12__* %68, %struct.TYPE_12__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i64 1, i64* %9, align 8
  br label %74

73:                                               ; preds = %65
  store i64 0, i64* %9, align 8
  br label %74

74:                                               ; preds = %73, %72
  br label %226

75:                                               ; preds = %4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i32 @bio_destroy_pair(%struct.TYPE_12__* %76)
  store i64 1, i64* %9, align 8
  br label %226

78:                                               ; preds = %4
  %79 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %80 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %79, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = icmp eq %struct.TYPE_11__* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %85 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %78
  store i64 0, i64* %9, align 8
  br label %97

89:                                               ; preds = %83
  %90 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %91 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %94 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %89, %88
  br label %226

98:                                               ; preds = %4
  %99 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %100 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %9, align 8
  br label %226

102:                                              ; preds = %4
  %103 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %104 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %103, i32 0, i32 6
  store i64 0, i64* %104, align 8
  store i64 1, i64* %9, align 8
  br label %226

105:                                              ; preds = %4
  %106 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %107 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  store i64 1, i64* %9, align 8
  br label %226

108:                                              ; preds = %4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @bio_nread0(%struct.TYPE_12__* %109, i8* %110)
  store i64 %111, i64* %9, align 8
  br label %226

112:                                              ; preds = %4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @bio_nread(%struct.TYPE_12__* %113, i8* %114, i64 %115)
  store i64 %116, i64* %9, align 8
  br label %226

117:                                              ; preds = %4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i64 @bio_nwrite0(%struct.TYPE_12__* %118, i8* %119)
  store i64 %120, i64* %9, align 8
  br label %226

121:                                              ; preds = %4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @bio_nwrite(%struct.TYPE_12__* %122, i8* %123, i64 %124)
  store i64 %125, i64* %9, align 8
  br label %226

126:                                              ; preds = %4
  %127 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %128 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %133 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %135 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %134, i32 0, i32 5
  store i32 0, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %126
  store i64 0, i64* %9, align 8
  br label %226

137:                                              ; preds = %4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  br label %226

141:                                              ; preds = %4
  %142 = load i64, i64* %7, align 8
  %143 = trunc i64 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  store i64 1, i64* %9, align 8
  br label %226

147:                                              ; preds = %4
  %148 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %149 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %148, i32 0, i32 3
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = icmp ne %struct.TYPE_11__* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %154 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %153, i32 0, i32 3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.bio_bio_st*, %struct.bio_bio_st** %156, align 8
  store %struct.bio_bio_st* %157, %struct.bio_bio_st** %13, align 8
  %158 = load %struct.bio_bio_st*, %struct.bio_bio_st** %13, align 8
  %159 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %9, align 8
  br label %162

161:                                              ; preds = %147
  store i64 0, i64* %9, align 8
  br label %162

162:                                              ; preds = %161, %152
  br label %226

163:                                              ; preds = %4
  %164 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %165 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %170 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %9, align 8
  br label %173

172:                                              ; preds = %163
  store i64 0, i64* %9, align 8
  br label %173

173:                                              ; preds = %172, %168
  br label %226

174:                                              ; preds = %4
  %175 = load i8*, i8** %8, align 8
  %176 = bitcast i8* %175 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %176, %struct.TYPE_12__** %14, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %178 = icmp ne %struct.TYPE_12__* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.bio_bio_st*, %struct.bio_bio_st** %182, align 8
  store %struct.bio_bio_st* %183, %struct.bio_bio_st** %15, align 8
  %184 = load %struct.bio_bio_st*, %struct.bio_bio_st** %15, align 8
  %185 = icmp ne %struct.bio_bio_st* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.bio_bio_st*, %struct.bio_bio_st** %15, align 8
  %189 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = icmp eq i32* %190, null
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %195 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.bio_bio_st*, %struct.bio_bio_st** %15, align 8
  %198 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  store i64 1, i64* %9, align 8
  br label %226

199:                                              ; preds = %4
  store i64 1, i64* %9, align 8
  br label %226

200:                                              ; preds = %4
  %201 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %202 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %201, i32 0, i32 3
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = icmp ne %struct.TYPE_11__* %203, null
  br i1 %204, label %205, label %223

205:                                              ; preds = %200
  %206 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %207 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %206, i32 0, i32 3
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load %struct.bio_bio_st*, %struct.bio_bio_st** %209, align 8
  store %struct.bio_bio_st* %210, %struct.bio_bio_st** %16, align 8
  %211 = load %struct.bio_bio_st*, %struct.bio_bio_st** %16, align 8
  %212 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %205
  %216 = load %struct.bio_bio_st*, %struct.bio_bio_st** %16, align 8
  %217 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i64 1, i64* %9, align 8
  br label %222

221:                                              ; preds = %215, %205
  store i64 0, i64* %9, align 8
  br label %222

222:                                              ; preds = %221, %220
  br label %224

223:                                              ; preds = %200
  store i64 1, i64* %9, align 8
  br label %224

224:                                              ; preds = %223, %222
  br label %226

225:                                              ; preds = %4
  store i64 0, i64* %9, align 8
  br label %226

226:                                              ; preds = %225, %224, %199, %174, %173, %162, %141, %137, %136, %121, %117, %112, %108, %105, %102, %98, %97, %75, %74, %61, %60
  %227 = load i64, i64* %9, align 8
  ret i64 %227
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @bio_make_pair(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @bio_destroy_pair(%struct.TYPE_12__*) #1

declare dso_local i64 @bio_nread0(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @bio_nread(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i64 @bio_nwrite0(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @bio_nwrite(%struct.TYPE_12__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
