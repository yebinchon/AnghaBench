; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_box.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_box.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@c = common dso_local global i64* null, align 8
@m = common dso_local global i32 0, align 4
@nonce = common dso_local global i32 0, align 4
@bobpk = common dso_local global i32 0, align 4
@alicesk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@small_order_p = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"curve25519xsalsa20poly1305\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i64*, i64** @c, align 8
  %11 = load i32, i32* @m, align 4
  %12 = load i32, i32* @nonce, align 4
  %13 = load i32, i32* @bobpk, align 4
  %14 = load i32, i32* @alicesk, align 4
  %15 = call i32 @crypto_box(i64* %10, i32 %11, i32 163, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i32 16, i32* %4, align 4
  br label %20

20:                                               ; preds = %37, %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 163
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i64*, i64** @c, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 8
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %20

40:                                               ; preds = %20
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i64*, i64** @c, align 8
  %43 = load i32, i32* @m, align 4
  %44 = load i32, i32* @nonce, align 4
  %45 = load i32, i32* @small_order_p, align 4
  %46 = load i32, i32* @alicesk, align 4
  %47 = call i32 @crypto_box(i64* %42, i32 %43, i32 163, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i64*, i64** @c, align 8
  %53 = call i32 @memset(i64* %52, i32 0, i32 8)
  %54 = load i32, i32* @bobpk, align 4
  %55 = load i32, i32* @alicesk, align 4
  %56 = call i32 @crypto_box_beforenm(i8* %9, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i64*, i64** @c, align 8
  %62 = load i32, i32* @m, align 4
  %63 = load i32, i32* @nonce, align 4
  %64 = call i32 @crypto_box_afternm(i64* %61, i32 %62, i32 163, i32 %63, i8* %9)
  store i32 16, i32* %4, align 4
  br label %65

65:                                               ; preds = %82, %40
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 163
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i64*, i64** @c, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = srem i32 %76, 8
  %78 = icmp eq i32 %77, 7
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %65

85:                                               ; preds = %65
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @small_order_p, align 4
  %88 = load i32, i32* @alicesk, align 4
  %89 = call i32 @crypto_box_beforenm(i8* %9, i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, -1
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i32 (...) @crypto_box_seedbytes()
  %95 = icmp ugt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = call i32 (...) @crypto_box_publickeybytes()
  %99 = icmp ugt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = call i32 (...) @crypto_box_secretkeybytes()
  %103 = icmp ugt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = call i32 (...) @crypto_box_beforenmbytes()
  %107 = icmp ugt i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call i32 (...) @crypto_box_noncebytes()
  %111 = icmp ugt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = call i32 (...) @crypto_box_zerobytes()
  %115 = icmp ugt i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = call i32 (...) @crypto_box_boxzerobytes()
  %119 = icmp ugt i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = call i32 (...) @crypto_box_macbytes()
  %123 = icmp ugt i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = call i32 (...) @crypto_box_messagebytes_max()
  %127 = icmp ugt i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = call i32 (...) @crypto_box_primitive()
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_seedbytes()
  %136 = call i32 (...) @crypto_box_seedbytes()
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_publickeybytes()
  %141 = call i32 (...) @crypto_box_publickeybytes()
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_secretkeybytes()
  %146 = call i32 (...) @crypto_box_secretkeybytes()
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_beforenmbytes()
  %151 = call i32 (...) @crypto_box_beforenmbytes()
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_noncebytes()
  %156 = call i32 (...) @crypto_box_noncebytes()
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_zerobytes()
  %161 = call i32 (...) @crypto_box_zerobytes()
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_boxzerobytes()
  %166 = call i32 (...) @crypto_box_boxzerobytes()
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_macbytes()
  %171 = call i32 (...) @crypto_box_macbytes()
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = call i32 (...) @crypto_box_curve25519xsalsa20poly1305_messagebytes_max()
  %176 = call i32 (...) @crypto_box_messagebytes_max()
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  store i32 0, i32* %1, align 4
  %180 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %1, align 4
  ret i32 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_box(i64*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @crypto_box_beforenm(i8*, i32, i32) #2

declare dso_local i32 @crypto_box_afternm(i64*, i32, i32, i32, i8*) #2

declare dso_local i32 @crypto_box_seedbytes(...) #2

declare dso_local i32 @crypto_box_publickeybytes(...) #2

declare dso_local i32 @crypto_box_secretkeybytes(...) #2

declare dso_local i32 @crypto_box_beforenmbytes(...) #2

declare dso_local i32 @crypto_box_noncebytes(...) #2

declare dso_local i32 @crypto_box_zerobytes(...) #2

declare dso_local i32 @crypto_box_boxzerobytes(...) #2

declare dso_local i32 @crypto_box_macbytes(...) #2

declare dso_local i32 @crypto_box_messagebytes_max(...) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @crypto_box_primitive(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_seedbytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_publickeybytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_secretkeybytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_beforenmbytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_noncebytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_zerobytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_boxzerobytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_macbytes(...) #2

declare dso_local i32 @crypto_box_curve25519xsalsa20poly1305_messagebytes_max(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
