; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_exptmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_rsa_exptmod(i32* %0, i64 %1, i32* %2, i64* %3, %struct.crypto_rsa_key* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.crypto_rsa_key*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bignum*, align 8
  %15 = alloca %struct.bignum*, align 8
  %16 = alloca %struct.bignum*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.crypto_rsa_key* %4, %struct.crypto_rsa_key** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.bignum* null, %struct.bignum** %15, align 8
  store %struct.bignum* null, %struct.bignum** %16, align 8
  store i32 -1, i32* %17, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %23 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 -1, i32* %7, align 4
  br label %171

27:                                               ; preds = %21, %6
  %28 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %28, %struct.bignum** %14, align 8
  %29 = load %struct.bignum*, %struct.bignum** %14, align 8
  %30 = icmp eq %struct.bignum* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %171

32:                                               ; preds = %27
  %33 = load %struct.bignum*, %struct.bignum** %14, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %33, i32* %34, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %163

39:                                               ; preds = %32
  %40 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %41 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bignum*, %struct.bignum** %14, align 8
  %44 = call i64 @bignum_cmp(i32 %42, %struct.bignum* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %163

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %117

50:                                               ; preds = %47
  %51 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %51, %struct.bignum** %15, align 8
  %52 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %52, %struct.bignum** %16, align 8
  %53 = load %struct.bignum*, %struct.bignum** %15, align 8
  %54 = icmp eq %struct.bignum* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.bignum*, %struct.bignum** %16, align 8
  %57 = icmp eq %struct.bignum* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %50
  br label %163

59:                                               ; preds = %55
  %60 = load %struct.bignum*, %struct.bignum** %14, align 8
  %61 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %62 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %65 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bignum*, %struct.bignum** %15, align 8
  %68 = call i64 @bignum_exptmod(%struct.bignum* %60, i32 %63, i32 %66, %struct.bignum* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %163

71:                                               ; preds = %59
  %72 = load %struct.bignum*, %struct.bignum** %14, align 8
  %73 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %74 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %77 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bignum*, %struct.bignum** %16, align 8
  %80 = call i64 @bignum_exptmod(%struct.bignum* %72, i32 %75, i32 %78, %struct.bignum* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %163

83:                                               ; preds = %71
  %84 = load %struct.bignum*, %struct.bignum** %15, align 8
  %85 = load %struct.bignum*, %struct.bignum** %16, align 8
  %86 = load %struct.bignum*, %struct.bignum** %14, align 8
  %87 = call i64 @bignum_sub(%struct.bignum* %84, %struct.bignum* %85, %struct.bignum* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load %struct.bignum*, %struct.bignum** %14, align 8
  %91 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %92 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %95 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bignum*, %struct.bignum** %14, align 8
  %98 = call i64 @bignum_mulmod(%struct.bignum* %90, i32 %93, i32 %96, %struct.bignum* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89, %83
  br label %163

101:                                              ; preds = %89
  %102 = load %struct.bignum*, %struct.bignum** %14, align 8
  %103 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %104 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bignum*, %struct.bignum** %14, align 8
  %107 = call i64 @bignum_mul(%struct.bignum* %102, i32 %105, %struct.bignum* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %101
  %110 = load %struct.bignum*, %struct.bignum** %14, align 8
  %111 = load %struct.bignum*, %struct.bignum** %16, align 8
  %112 = load %struct.bignum*, %struct.bignum** %14, align 8
  %113 = call i64 @bignum_add(%struct.bignum* %110, %struct.bignum* %111, %struct.bignum* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %101
  br label %163

116:                                              ; preds = %109
  br label %130

117:                                              ; preds = %47
  %118 = load %struct.bignum*, %struct.bignum** %14, align 8
  %119 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %120 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %123 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bignum*, %struct.bignum** %14, align 8
  %126 = call i64 @bignum_exptmod(%struct.bignum* %118, i32 %121, i32 %124, %struct.bignum* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %163

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %12, align 8
  %132 = call i64 @crypto_rsa_get_modulus_len(%struct.crypto_rsa_key* %131)
  store i64 %132, i64* %18, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load i64*, i64** %11, align 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ugt i64 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i64, i64* %18, align 8
  %139 = load i64*, i64** %11, align 8
  store i64 %138, i64* %139, align 8
  br label %163

140:                                              ; preds = %130
  %141 = load %struct.bignum*, %struct.bignum** %14, align 8
  %142 = call i64 @bignum_get_unsigned_bin_len(%struct.bignum* %141)
  %143 = load i64, i64* %18, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %163

146:                                              ; preds = %140
  %147 = load i64, i64* %18, align 8
  %148 = load i64*, i64** %11, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i64, i64* %18, align 8
  %151 = call i32 @os_memset(i32* %149, i32 0, i64 %150)
  %152 = load %struct.bignum*, %struct.bignum** %14, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load %struct.bignum*, %struct.bignum** %14, align 8
  %156 = call i64 @bignum_get_unsigned_bin_len(%struct.bignum* %155)
  %157 = sub i64 %154, %156
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = call i64 @bignum_get_unsigned_bin(%struct.bignum* %152, i32* %158, i32* null)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %146
  br label %163

162:                                              ; preds = %146
  store i32 0, i32* %17, align 4
  br label %163

163:                                              ; preds = %162, %161, %145, %137, %128, %115, %100, %82, %70, %58, %46, %38
  %164 = load %struct.bignum*, %struct.bignum** %14, align 8
  %165 = call i32 @bignum_deinit(%struct.bignum* %164)
  %166 = load %struct.bignum*, %struct.bignum** %15, align 8
  %167 = call i32 @bignum_deinit(%struct.bignum* %166)
  %168 = load %struct.bignum*, %struct.bignum** %16, align 8
  %169 = call i32 @bignum_deinit(%struct.bignum* %168)
  %170 = load i32, i32* %17, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %163, %31, %26
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local %struct.bignum* @bignum_init(...) #1

declare dso_local i64 @bignum_set_unsigned_bin(%struct.bignum*, i32*, i64) #1

declare dso_local i64 @bignum_cmp(i32, %struct.bignum*) #1

declare dso_local i64 @bignum_exptmod(%struct.bignum*, i32, i32, %struct.bignum*) #1

declare dso_local i64 @bignum_sub(%struct.bignum*, %struct.bignum*, %struct.bignum*) #1

declare dso_local i64 @bignum_mulmod(%struct.bignum*, i32, i32, %struct.bignum*) #1

declare dso_local i64 @bignum_mul(%struct.bignum*, i32, %struct.bignum*) #1

declare dso_local i64 @bignum_add(%struct.bignum*, %struct.bignum*, %struct.bignum*) #1

declare dso_local i64 @crypto_rsa_get_modulus_len(%struct.crypto_rsa_key*) #1

declare dso_local i64 @bignum_get_unsigned_bin_len(%struct.bignum*) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i64 @bignum_get_unsigned_bin(%struct.bignum*, i32*, i32*) #1

declare dso_local i32 @bignum_deinit(%struct.bignum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
