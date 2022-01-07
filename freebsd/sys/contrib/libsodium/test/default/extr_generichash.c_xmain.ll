; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_generichash.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_generichash.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLEN = common dso_local global i32 0, align 4
@crypto_generichash_BYTES_MAX = common dso_local global i32 0, align 4
@crypto_generichash_KEYBYTES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"blake2b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @MAXLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %16 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = call i32 (...) @tv()
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %30, %0
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %18, i64 %28
  store i8 %27, i8* %29, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %20

33:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @MAXLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %12, i64 %42
  store i8 %41, i8* %43, align 1
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %46 = sext i32 %45 to i64
  %47 = urem i64 %44, %46
  %48 = add i64 1, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %50, %52
  %54 = add i64 1, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @crypto_generichash(i8* %15, i64 %48, i8* %12, i64 %49, i8* %18, i32 %55)
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %71, %39
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %61 = sext i32 %60 to i64
  %62 = urem i64 %59, %61
  %63 = add i64 1, %62
  %64 = icmp ult i64 %58, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %15, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %57

74:                                               ; preds = %57
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %34

79:                                               ; preds = %34
  %80 = trunc i64 %14 to i32
  %81 = call i32 @memset(i8* %15, i32 0, i32 %80)
  %82 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @crypto_generichash(i8* %15, i64 %83, i8* %12, i64 %84, i8* %18, i32 0)
  store i64 0, i64* %8, align 8
  br label %86

86:                                               ; preds = %97, %79
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i8, i8* %15, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %86

100:                                              ; preds = %86
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %102 = trunc i64 %17 to i32
  %103 = call i32 @crypto_generichash(i8* null, i64 0, i8* %12, i64 %10, i8* %18, i32 %102)
  %104 = icmp eq i32 %103, -1
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = trunc i64 %17 to i32
  %111 = call i32 @crypto_generichash(i8* null, i64 %109, i8* %12, i64 %10, i8* %18, i32 %110)
  %112 = icmp eq i32 %111, -1
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @crypto_generichash(i8* null, i64 %10, i8* %12, i64 %10, i8* %18, i32 %116)
  %118 = icmp eq i32 %117, -1
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = call i32 (...) @crypto_generichash_bytes_min()
  %122 = icmp ugt i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = call i32 (...) @crypto_generichash_bytes_max()
  %126 = icmp ugt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = call i32 (...) @crypto_generichash_bytes()
  %130 = icmp ugt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = call i32 (...) @crypto_generichash_bytes()
  %134 = call i32 (...) @crypto_generichash_bytes_min()
  %135 = icmp uge i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = call i32 (...) @crypto_generichash_bytes()
  %139 = call i32 (...) @crypto_generichash_bytes_max()
  %140 = icmp ule i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = call i32 (...) @crypto_generichash_keybytes_min()
  %144 = icmp ugt i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = call i32 (...) @crypto_generichash_keybytes_max()
  %148 = icmp ugt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = call i32 (...) @crypto_generichash_keybytes()
  %152 = icmp ugt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = call i32 (...) @crypto_generichash_keybytes()
  %156 = call i32 (...) @crypto_generichash_keybytes_min()
  %157 = icmp uge i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = call i32 (...) @crypto_generichash_keybytes()
  %161 = call i32 (...) @crypto_generichash_keybytes_max()
  %162 = icmp ule i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = call i32 (...) @crypto_generichash_primitive()
  %166 = call i64 @strcmp(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = call i32 (...) @crypto_generichash_bytes_min()
  %171 = call i32 (...) @crypto_generichash_blake2b_bytes_min()
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = call i32 (...) @crypto_generichash_bytes_max()
  %176 = call i32 (...) @crypto_generichash_blake2b_bytes_max()
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = call i32 (...) @crypto_generichash_bytes()
  %181 = call i32 (...) @crypto_generichash_blake2b_bytes()
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = call i32 (...) @crypto_generichash_keybytes_min()
  %186 = call i32 (...) @crypto_generichash_blake2b_keybytes_min()
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = call i32 (...) @crypto_generichash_keybytes_max()
  %191 = call i32 (...) @crypto_generichash_blake2b_keybytes_max()
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = call i32 (...) @crypto_generichash_keybytes()
  %196 = call i32 (...) @crypto_generichash_blake2b_keybytes()
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = call i32 (...) @crypto_generichash_blake2b_saltbytes()
  %201 = icmp ugt i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = call i32 (...) @crypto_generichash_blake2b_personalbytes()
  %205 = icmp ugt i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  store i32 0, i32* %1, align 4
  %208 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %1, align 4
  ret i32 %209
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tv(...) #2

declare dso_local i32 @crypto_generichash(i8*, i64, i8*, i64, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_generichash_bytes_min(...) #2

declare dso_local i32 @crypto_generichash_bytes_max(...) #2

declare dso_local i32 @crypto_generichash_bytes(...) #2

declare dso_local i32 @crypto_generichash_keybytes_min(...) #2

declare dso_local i32 @crypto_generichash_keybytes_max(...) #2

declare dso_local i32 @crypto_generichash_keybytes(...) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @crypto_generichash_primitive(...) #2

declare dso_local i32 @crypto_generichash_blake2b_bytes_min(...) #2

declare dso_local i32 @crypto_generichash_blake2b_bytes_max(...) #2

declare dso_local i32 @crypto_generichash_blake2b_bytes(...) #2

declare dso_local i32 @crypto_generichash_blake2b_keybytes_min(...) #2

declare dso_local i32 @crypto_generichash_blake2b_keybytes_max(...) #2

declare dso_local i32 @crypto_generichash_blake2b_keybytes(...) #2

declare dso_local i32 @crypto_generichash_blake2b_saltbytes(...) #2

declare dso_local i32 @crypto_generichash_blake2b_personalbytes(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
