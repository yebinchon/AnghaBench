; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_fe25519_pow22523.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_fe25519_pow22523.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @fe25519_pow22523 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe25519_pow22523(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fe25519_sq(i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @fe25519_sq(i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @fe25519_sq(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fe25519_mul(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @fe25519_mul(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @fe25519_sq(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @fe25519_mul(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @fe25519_sq(i32 %33, i32 %34)
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %43, %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @fe25519_sq(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %36

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @fe25519_mul(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @fe25519_sq(i32 %51, i32 %52)
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %61, %46
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 10
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @fe25519_sq(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @fe25519_mul(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @fe25519_sq(i32 %69, i32 %70)
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %79, %64
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 20
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @fe25519_sq(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %72

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @fe25519_mul(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @fe25519_sq(i32 %87, i32 %88)
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %97, %82
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 10
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @fe25519_sq(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %90

100:                                              ; preds = %90
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @fe25519_mul(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @fe25519_sq(i32 %105, i32 %106)
  store i32 1, i32* %8, align 4
  br label %108

108:                                              ; preds = %115, %100
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 50
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @fe25519_sq(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %108

118:                                              ; preds = %108
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @fe25519_mul(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @fe25519_sq(i32 %123, i32 %124)
  store i32 1, i32* %8, align 4
  br label %126

126:                                              ; preds = %133, %118
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 100
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @fe25519_sq(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %126

136:                                              ; preds = %126
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @fe25519_mul(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @fe25519_sq(i32 %141, i32 %142)
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %151, %136
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 50
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @fe25519_sq(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %144

154:                                              ; preds = %144
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @fe25519_mul(i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @fe25519_sq(i32 %159, i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @fe25519_sq(i32 %162, i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @fe25519_mul(i32 %165, i32 %166, i32 %167)
  ret void
}

declare dso_local i32 @fe25519_sq(i32, i32) #1

declare dso_local i32 @fe25519_mul(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
