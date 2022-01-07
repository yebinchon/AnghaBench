; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ofb128.c_CRYPTO_ofb128_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ofb128.c_CRYPTO_ofb128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_ofb128_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32* %5, i32 (i8*, i8*, i8*)* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (i8*, i8*, i8*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 (i8*, i8*, i8*)* %6, i32 (i8*, i8*, i8*)** %14, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  br label %19

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %48

28:                                               ; preds = %26
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %15, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %32, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = add i32 %45, 1
  %47 = urem i32 %46, 16
  store i32 %47, i32* %15, align 4
  br label %20

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %85, %48
  %50 = load i64, i64* %10, align 8
  %51 = icmp uge i64 %50, 16
  br i1 %51, label %52, label %92

52:                                               ; preds = %49
  %53 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 %53(i8* %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %80, %52
  %59 = load i32, i32* %15, align 4
  %60 = icmp ult i32 %59, 16
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = xor i64 %67, %73
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = bitcast i8* %78 to i64*
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = add i64 %82, 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %15, align 4
  br label %58

85:                                               ; preds = %58
  %86 = load i64, i64* %10, align 8
  %87 = sub i64 %86, 16
  store i64 %87, i64* %10, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 16
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 16
  store i8* %91, i8** %8, align 8
  store i32 0, i32* %15, align 4
  br label %49

92:                                               ; preds = %49
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %92
  %96 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 %96(i8* %97, i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %105, %95
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %10, align 8
  %104 = icmp ne i64 %102, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = xor i32 %111, %117
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %15, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 %119, i8* %123, align 1
  %124 = load i32, i32* %15, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %101

126:                                              ; preds = %101
  br label %127

127:                                              ; preds = %126, %92
  %128 = load i32, i32* %15, align 4
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  br label %169

130:                                              ; No predecessors!
  br label %131

131:                                              ; preds = %144, %130
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %166

135:                                              ; preds = %131
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 %139(i8* %140, i8* %141, i8* %142)
  br label %144

144:                                              ; preds = %138, %135
  %145 = load i8*, i8** %8, align 8
  %146 = load i64, i64* %16, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* %15, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = xor i32 %149, %155
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %9, align 8
  %159 = load i64, i64* %16, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8 %157, i8* %160, align 1
  %161 = load i64, i64* %16, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %16, align 8
  %163 = load i32, i32* %15, align 4
  %164 = add i32 %163, 1
  %165 = urem i32 %164, 16
  store i32 %165, i32* %15, align 4
  br label %131

166:                                              ; preds = %131
  %167 = load i32, i32* %15, align 4
  %168 = load i32*, i32** %13, align 8
  store i32 %167, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %127
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
