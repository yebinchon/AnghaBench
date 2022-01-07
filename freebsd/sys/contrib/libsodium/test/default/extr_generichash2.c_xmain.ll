; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_generichash2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_generichash2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_generichash_BYTES_MAX = common dso_local global i32 0, align 4
@crypto_generichash_KEYBYTES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"crypto_generichash_init()\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"crypto_generichash_final() should have returned 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"crypto_generichash_final() should have returned -1\0A\00", align 1
@crypto_generichash_KEYBYTES = common dso_local global i32 0, align 4
@MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = call i32 (...) @crypto_generichash_statebytes()
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (...) @crypto_generichash_statebytes()
  %24 = call i64 @sodium_malloc(i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %2, align 8
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %36, %0
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %17, i64 %34
  store i8 %33, i8* %35, align 1
  br label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %26

39:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %121, %39
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %41, 64
  br i1 %42, label %43, label %124

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 %46
  store i8 %45, i8* %47, align 1
  %48 = load i32*, i32** %2, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %51 = sext i32 %50 to i64
  %52 = urem i64 %49, %51
  %53 = add i64 1, %52
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %57 = sext i32 %56 to i64
  %58 = urem i64 %55, %57
  %59 = add i64 1, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @crypto_generichash_init(i32* %48, i8* %17, i32 %54, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %178

65:                                               ; preds = %43
  %66 = load i32*, i32** %2, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @crypto_generichash_update(i32* %66, i8* %67, i64 %68)
  %70 = load i32*, i32** %2, align 8
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @crypto_generichash_update(i32* %70, i8* %71, i64 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @crypto_generichash_update(i32* %74, i8* %75, i64 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %81 = sext i32 %80 to i64
  %82 = urem i64 %79, %81
  %83 = add i64 1, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @crypto_generichash_final(i32* %78, i8* %14, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %65
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %65
  store i64 0, i64* %9, align 8
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %94 = sext i32 %93 to i64
  %95 = urem i64 %92, %94
  %96 = add i64 1, %95
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %14, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %9, align 8
  br label %90

107:                                              ; preds = %90
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32*, i32** %2, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %112 = sext i32 %111 to i64
  %113 = urem i64 %110, %112
  %114 = add i64 1, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @crypto_generichash_final(i32* %109, i8* %14, i32 %115)
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %107
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  br label %40

124:                                              ; preds = %40
  %125 = load i32*, i32** %2, align 8
  %126 = trunc i64 %16 to i32
  %127 = call i32 @crypto_generichash_init(i32* %125, i8* %17, i32 %126, i32 0)
  %128 = icmp eq i32 %127, -1
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = trunc i64 %16 to i32
  %133 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %134 = add i32 %133, 1
  %135 = call i32 @crypto_generichash_init(i32* %131, i8* %17, i32 %132, i32 %134)
  %136 = icmp eq i32 %135, -1
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32*, i32** %2, align 8
  %140 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %141 = add i32 %140, 1
  %142 = trunc i64 %12 to i32
  %143 = call i32 @crypto_generichash_init(i32* %139, i8* %17, i32 %141, i32 %142)
  %144 = icmp eq i32 %143, -1
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32*, i32** %2, align 8
  %148 = trunc i64 %12 to i32
  %149 = call i32 @crypto_generichash_init(i32* %147, i8* %17, i32 0, i32 %148)
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i32*, i32** %2, align 8
  %154 = trunc i64 %12 to i32
  %155 = call i32 @crypto_generichash_init(i32* %153, i8* %17, i32 1, i32 %154)
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32*, i32** %2, align 8
  %160 = call i32 @crypto_generichash_init(i32* %159, i8* null, i32 1, i32 0)
  %161 = icmp eq i32 %160, -1
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* @crypto_generichash_KEYBYTES, align 4
  %166 = call i32 @crypto_generichash_init(i32* %164, i8* null, i32 %165, i32 1)
  %167 = icmp eq i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32*, i32** %2, align 8
  %171 = load i32, i32* @crypto_generichash_KEYBYTES, align 4
  %172 = call i32 @crypto_generichash_init(i32* %170, i8* null, i32 %171, i32 0)
  %173 = icmp eq i32 %172, -1
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32*, i32** %2, align 8
  %177 = call i32 @sodium_free(i32* %176)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %178

178:                                              ; preds = %124, %63
  %179 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %1, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_generichash_statebytes(...) #2

declare dso_local i64 @sodium_malloc(i32) #2

declare dso_local i32 @crypto_generichash_init(i32*, i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @crypto_generichash_update(i32*, i8*, i64) #2

declare dso_local i32 @crypto_generichash_final(i32*, i8*, i32) #2

declare dso_local i32 @sodium_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
