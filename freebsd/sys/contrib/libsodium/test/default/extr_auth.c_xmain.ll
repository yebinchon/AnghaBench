; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_auth.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_auth.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local global i64* null, align 8
@c = common dso_local global i32* null, align 8
@key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@a2 = common dso_local global i64* null, align 8
@key2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"hmacsha512256\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @crypto_auth_hmacsha512_statebytes()
  %6 = sext i32 %5 to i64
  %7 = icmp eq i64 %6, 4
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i64*, i64** @a, align 8
  %11 = load i32*, i32** @c, align 8
  %12 = load i32, i32* @key, align 4
  %13 = call i32 @crypto_auth(i64* %10, i32* %11, i32 7, i32 %12)
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %30, %0
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load i64*, i64** @a, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = urem i64 %24, 8
  %26 = icmp eq i64 %25, 7
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %14

33:                                               ; preds = %14
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @key, align 4
  %36 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %35, i32 4)
  %37 = load i32*, i32** @c, align 8
  %38 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i32* %37, i32 1)
  %39 = load i32*, i32** @c, align 8
  %40 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i32* %39, i32 6)
  %41 = load i64*, i64** @a2, align 8
  %42 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %41)
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %59, %33
  %44 = load i64, i64* %4, align 8
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i64*, i64** @a2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = urem i64 %53, 8
  %55 = icmp eq i64 %54, 7
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %46
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %43

62:                                               ; preds = %43
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @key2, align 4
  %65 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %64, i32 4)
  %66 = load i32*, i32** @c, align 8
  %67 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i32* %66, i32 1)
  %68 = load i32*, i32** @c, align 8
  %69 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i32* %68, i32 6)
  %70 = load i64*, i64** @a2, align 8
  %71 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %70)
  store i64 0, i64* %4, align 8
  br label %72

72:                                               ; preds = %88, %62
  %73 = load i64, i64* %4, align 8
  %74 = icmp ult i64 %73, 8
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i64*, i64** @a2, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* %4, align 8
  %83 = urem i64 %82, 8
  %84 = icmp eq i64 %83, 7
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %75
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %72

91:                                               ; preds = %72
  %92 = load i64*, i64** @a2, align 8
  %93 = call i32 @memset(i64* %92, i32 0, i32 8)
  %94 = load i32, i32* @key2, align 4
  %95 = call i32 @crypto_auth_hmacsha256_init(i32* %3, i32 %94, i32 4)
  %96 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i32* null, i32 0)
  %97 = load i32*, i32** @c, align 8
  %98 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i32* %97, i32 1)
  %99 = load i32*, i32** @c, align 8
  %100 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i32* %99, i32 6)
  %101 = load i64*, i64** @a2, align 8
  %102 = call i32 @crypto_auth_hmacsha256_final(i32* %3, i64* %101)
  store i64 0, i64* %4, align 8
  br label %103

103:                                              ; preds = %119, %91
  %104 = load i64, i64* %4, align 8
  %105 = icmp ult i64 %104, 8
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load i64*, i64** @a2, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* %4, align 8
  %114 = urem i64 %113, 8
  %115 = icmp eq i64 %114, 7
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %106
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %4, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %4, align 8
  br label %103

122:                                              ; preds = %103
  %123 = call i32 (...) @crypto_auth_bytes()
  %124 = icmp ugt i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = call i32 (...) @crypto_auth_keybytes()
  %128 = icmp ugt i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = call i32 (...) @crypto_auth_primitive()
  %132 = call i64 @strcmp(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = call i32 (...) @crypto_auth_hmacsha256_bytes()
  %137 = icmp ugt i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = call i32 (...) @crypto_auth_hmacsha256_keybytes()
  %141 = icmp ugt i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = call i32 (...) @crypto_auth_hmacsha512_bytes()
  %145 = icmp ugt i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = call i32 (...) @crypto_auth_hmacsha512_keybytes()
  %149 = icmp ugt i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = call i32 (...) @crypto_auth_hmacsha512256_bytes()
  %153 = call i32 (...) @crypto_auth_bytes()
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = call i32 (...) @crypto_auth_hmacsha512256_keybytes()
  %158 = call i32 (...) @crypto_auth_keybytes()
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = call i32 (...) @crypto_auth_hmacsha512256_statebytes()
  %163 = call i32 (...) @crypto_auth_hmacsha512256_keybytes()
  %164 = icmp uge i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = call i32 (...) @crypto_auth_hmacsha256_statebytes()
  %168 = sext i32 %167 to i64
  %169 = icmp eq i64 %168, 4
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = call i32 (...) @crypto_auth_hmacsha512_statebytes()
  %173 = sext i32 %172 to i64
  %174 = icmp eq i64 %173, 4
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_auth_hmacsha512_statebytes(...) #1

declare dso_local i32 @crypto_auth(i64*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_auth_hmacsha512_init(i32*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha512_update(i32*, i32*, i32) #1

declare dso_local i32 @crypto_auth_hmacsha512_final(i32*, i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha256_init(i32*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha256_update(i32*, i32*, i32) #1

declare dso_local i32 @crypto_auth_hmacsha256_final(i32*, i64*) #1

declare dso_local i32 @crypto_auth_bytes(...) #1

declare dso_local i32 @crypto_auth_keybytes(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_auth_primitive(...) #1

declare dso_local i32 @crypto_auth_hmacsha256_bytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha256_keybytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512_bytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512_keybytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512256_bytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512256_keybytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512256_statebytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha256_statebytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
