; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_fingerprint_bubblebabble.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_fingerprint_bubblebabble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.fingerprint_bubblebabble.vowels = private unnamed_addr constant [6 x i8] c"aeiouy", align 1
@__const.fingerprint_bubblebabble.consonants = private unnamed_addr constant [17 x i8] c"bcdfghklmnprstvzx", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i64)* @fingerprint_bubblebabble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fingerprint_bubblebabble(i64* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [6 x i8], align 1
  %7 = alloca [17 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.fingerprint_bubblebabble.vowels, i32 0, i32 0), i64 6, i1 false)
  %19 = bitcast [17 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.fingerprint_bubblebabble.consonants, i32 0, i32 0), i64 17, i1 false)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %20 = load i64, i64* %5, align 8
  %21 = udiv i64 %20, 2
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i8* @calloc(i32 %24, i32 6)
  store i8* %25, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %225

28:                                               ; preds = %2
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 120, i8* %33, align 1
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %210, %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %213

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = urem i64 %44, 2
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %177

47:                                               ; preds = %43, %38
  %48 = load i64*, i64** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = ashr i32 %54, 6
  %56 = and i32 %55, 3
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = srem i32 %58, 6
  store i32 %59, i32* %13, align 4
  %60 = load i64*, i64** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = ashr i32 %66, 2
  %68 = and i32 %67, 15
  store i32 %68, i32* %14, align 4
  %69 = load i64*, i64** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 3
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %77, 6
  %79 = add nsw i32 %76, %78
  %80 = srem i32 %79, 6
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 %84, i8* %89, align 1
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 %93, i8* %98, align 1
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %176

112:                                              ; preds = %47
  %113 = load i64*, i64** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = mul nsw i32 2, %114
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %113, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = ashr i32 %120, 4
  %122 = and i32 %121, 15
  store i32 %122, i32* %16, align 4
  %123 = load i64*, i64** %4, align 8
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 2, %124
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %123, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = and i32 %130, 15
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 %135, i8* %140, align 1
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8 45, i8* %145, align 1
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 %149, i8* %154, align 1
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %155, 5
  %157 = load i64*, i64** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %157, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = mul nsw i32 %163, 7
  %165 = load i64*, i64** %4, align 8
  %166 = load i32, i32* %8, align 4
  %167 = mul nsw i32 2, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %165, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = add nsw i32 %164, %172
  %174 = add nsw i32 %156, %173
  %175 = srem i32 %174, 36
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %112, %47
  br label %209

177:                                              ; preds = %43
  %178 = load i32, i32* %11, align 4
  %179 = srem i32 %178, 6
  store i32 %179, i32* %13, align 4
  store i32 16, i32* %14, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sdiv i32 %180, 6
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = load i8*, i8** %12, align 8
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  store i8 %185, i8* %190, align 1
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = load i8*, i8** %12, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 %194, i8* %199, align 1
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** %12, align 8
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  store i8 %203, i8* %208, align 1
  br label %209

209:                                              ; preds = %177, %176
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %34

213:                                              ; preds = %34
  %214 = load i8*, i8** %12, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  store i8 120, i8* %218, align 1
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  store i8 0, i8* %223, align 1
  %224 = load i8*, i8** %12, align 8
  store i8* %224, i8** %3, align 8
  br label %225

225:                                              ; preds = %213, %27
  %226 = load i8*, i8** %3, align 8
  ret i8* %226
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
