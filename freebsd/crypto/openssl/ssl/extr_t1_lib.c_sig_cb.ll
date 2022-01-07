; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_sig_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_sig_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i64* }

@TLS_MAX_SIGSTRING_LEN = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@TLS_MAX_SIGALGCNT = common dso_local global i32 0, align 4
@sigalg_lookup_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @sig_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sig_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  %19 = load i32, i32* @TLS_MAX_SIGSTRING_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @NID_undef, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @NID_undef, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

28:                                               ; preds = %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TLS_MAX_SIGALGCNT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = sub i64 %20, 1
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @memcpy(i8* %22, i8* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %22, i64 %46
  store i8 0, i8* %47, align 1
  %48 = call i8* @strchr(i8* %22, i8 signext 43)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %95

51:                                               ; preds = %41
  store i64 0, i64* %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %10, align 8
  br label %53

53:                                               ; preds = %83, %51
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  %56 = call i64 @OSSL_NELEM(%struct.TYPE_6__* %55)
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @strcmp(i8* %22, i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  store i64 %72, i64* %81, align 8
  br label %88

82:                                               ; preds = %63, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 1
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %10, align 8
  br label %53

88:                                               ; preds = %69, %53
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  %91 = call i64 @OSSL_NELEM(%struct.TYPE_6__* %90)
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

94:                                               ; preds = %88
  br label %161

95:                                               ; preds = %41
  %96 = load i8*, i8** %13, align 8
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

104:                                              ; preds = %95
  %105 = call i32 @get_sigorhash(i32* %14, i32* %15, i8* %22)
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @get_sigorhash(i32* %14, i32* %15, i8* %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @NID_undef, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @NID_undef, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %104
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

116:                                              ; preds = %111
  store i64 0, i64* %9, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %10, align 8
  br label %118

118:                                              ; preds = %149, %116
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  %121 = call i64 @OSSL_NELEM(%struct.TYPE_6__* %120)
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %123, label %154

123:                                              ; preds = %118
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %123
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %141, i64 %146
  store i64 %138, i64* %147, align 8
  br label %154

148:                                              ; preds = %129, %123
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %9, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 1
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %10, align 8
  br label %118

154:                                              ; preds = %135, %118
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sigalg_lookup_tbl, align 8
  %157 = call i64 @OSSL_NELEM(%struct.TYPE_6__* %156)
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %94
  store i64 0, i64* %9, align 8
  br label %162

162:                                              ; preds = %194, %161
  %163 = load i64, i64* %9, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = icmp ult i64 %163, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %162
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* %9, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i64*, i64** %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %179, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %176, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %170
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %190, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

193:                                              ; preds = %170
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %9, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %9, align 8
  br label %162

197:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %198

198:                                              ; preds = %197, %188, %159, %115, %103, %93, %40, %34, %27
  %199 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_6__*) #2

declare dso_local i64 @strcmp(i8*, i32*) #2

declare dso_local i32 @get_sigorhash(i32*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
