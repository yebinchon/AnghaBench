; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/salsa208/ref/extr_stream_salsa208_ref.c_crypto_stream_salsa208_xor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/salsa208/ref/extr_stream_salsa208_ref.c_crypto_stream_salsa208_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_stream_salsa208_xor(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %165

20:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %15, align 4
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %15, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 %31
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %15, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %21

36:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %15, align 4
  %39 = icmp ult i32 %38, 8
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i32, i32* %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 %47
  store i8 %45, i8* %48, align 1
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %15, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %37

52:                                               ; preds = %37
  store i32 8, i32* %15, align 4
  br label %53

53:                                               ; preds = %60, %52
  %54 = load i32, i32* %15, align 4
  %55 = icmp ult i32 %54, 16
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %53

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %118, %63
  %65 = load i64, i64* %9, align 8
  %66 = icmp uge i64 %65, 64
  br i1 %66, label %67, label %125

67:                                               ; preds = %64
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %71 = call i32 @crypto_core_salsa208(i8* %68, i8* %69, i8* %70, i32* null)
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %93, %67
  %73 = load i32, i32* %15, align 4
  %74 = icmp ult i32 %73, 64
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* %15, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = xor i32 %81, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %88, i8* %92, align 1
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %72

96:                                               ; preds = %72
  store i32 1, i32* %16, align 4
  store i32 8, i32* %15, align 4
  br label %97

97:                                               ; preds = %115, %96
  %98 = load i32, i32* %15, align 4
  %99 = icmp ult i32 %98, 16
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %16, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %15, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 %111
  store i8 %109, i8* %112, align 1
  %113 = load i32, i32* %16, align 4
  %114 = lshr i32 %113, 8
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %100
  %116 = load i32, i32* %15, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %97

118:                                              ; preds = %97
  %119 = load i64, i64* %9, align 8
  %120 = sub i64 %119, 64
  store i64 %120, i64* %9, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 64
  store i8* %122, i8** %7, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 64
  store i8* %124, i8** %8, align 8
  br label %64

125:                                              ; preds = %64
  %126 = load i64, i64* %9, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %125
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %132 = call i32 @crypto_core_salsa208(i8* %129, i8* %130, i8* %131, i32* null)
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %156, %128
  %134 = load i32, i32* %15, align 4
  %135 = load i64, i64* %9, align 8
  %136 = trunc i64 %135 to i32
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %15, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = load i32, i32* %15, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = xor i32 %144, %149
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %151, i8* %155, align 1
  br label %156

156:                                              ; preds = %138
  %157 = load i32, i32* %15, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %133

159:                                              ; preds = %133
  br label %160

160:                                              ; preds = %159, %125
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %162 = call i32 @sodium_memzero(i8* %161, i32 64)
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %164 = call i32 @sodium_memzero(i8* %163, i32 32)
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %160, %19
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @crypto_core_salsa208(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
