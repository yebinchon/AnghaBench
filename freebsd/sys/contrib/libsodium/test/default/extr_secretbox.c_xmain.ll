; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_secretbox.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_secretbox.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = common dso_local global i64* null, align 8
@m = common dso_local global i64* null, align 8
@nonce = common dso_local global i32 0, align 4
@firstkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"xsalsa20poly1305\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64*, i64** @c, align 8
  %4 = load i64*, i64** @m, align 8
  %5 = load i32, i32* @nonce, align 4
  %6 = load i32, i32* @firstkey, align 4
  %7 = call i32 @crypto_secretbox(i64* %3, i64* %4, i32 163, i32 %5, i32 %6)
  store i32 16, i32* %2, align 4
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 163
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load i64*, i64** @c, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = srem i32 %19, 8
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %8

28:                                               ; preds = %8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64*, i64** @c, align 8
  %31 = load i64*, i64** @m, align 8
  %32 = call i32 @memcpy(i64* %30, i64* %31, i32 163)
  %33 = load i64*, i64** @c, align 8
  %34 = load i64*, i64** @c, align 8
  %35 = load i32, i32* @nonce, align 4
  %36 = load i32, i32* @firstkey, align 4
  %37 = call i32 @crypto_secretbox(i64* %33, i64* %34, i32 163, i32 %35, i32 %36)
  store i32 16, i32* %2, align 4
  br label %38

38:                                               ; preds = %55, %28
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 163
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i64*, i64** @c, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = srem i32 %49, 8
  %51 = icmp eq i32 %50, 7
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %38

58:                                               ; preds = %38
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64*, i64** @c, align 8
  %61 = load i64*, i64** @c, align 8
  %62 = load i32, i32* @nonce, align 4
  %63 = load i32, i32* @firstkey, align 4
  %64 = call i32 @crypto_secretbox(i64* %60, i64* %61, i32 31, i32 %62, i32 %63)
  %65 = icmp eq i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i64*, i64** @c, align 8
  %69 = load i64*, i64** @c, align 8
  %70 = load i32, i32* @nonce, align 4
  %71 = load i32, i32* @firstkey, align 4
  %72 = call i32 @crypto_secretbox(i64* %68, i64* %69, i32 12, i32 %70, i32 %71)
  %73 = icmp eq i32 %72, -1
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i64*, i64** @c, align 8
  %77 = load i64*, i64** @c, align 8
  %78 = load i32, i32* @nonce, align 4
  %79 = load i32, i32* @firstkey, align 4
  %80 = call i32 @crypto_secretbox(i64* %76, i64* %77, i32 1, i32 %78, i32 %79)
  %81 = icmp eq i32 %80, -1
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i64*, i64** @c, align 8
  %85 = load i64*, i64** @c, align 8
  %86 = load i32, i32* @nonce, align 4
  %87 = load i32, i32* @firstkey, align 4
  %88 = call i32 @crypto_secretbox(i64* %84, i64* %85, i32 0, i32 %86, i32 %87)
  %89 = icmp eq i32 %88, -1
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = call i32 (...) @crypto_secretbox_keybytes()
  %93 = icmp ugt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = call i32 (...) @crypto_secretbox_noncebytes()
  %97 = icmp ugt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = call i32 (...) @crypto_secretbox_zerobytes()
  %101 = icmp ugt i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = call i32 (...) @crypto_secretbox_boxzerobytes()
  %105 = icmp ugt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = call i32 (...) @crypto_secretbox_macbytes()
  %109 = icmp ugt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = call i32 (...) @crypto_secretbox_messagebytes_max()
  %113 = icmp ugt i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = call i32 (...) @crypto_secretbox_primitive()
  %117 = call i64 @strcmp(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = call i32 (...) @crypto_secretbox_keybytes()
  %122 = call i32 (...) @crypto_secretbox_xsalsa20poly1305_keybytes()
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = call i32 (...) @crypto_secretbox_noncebytes()
  %127 = call i32 (...) @crypto_secretbox_xsalsa20poly1305_noncebytes()
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = call i32 (...) @crypto_secretbox_zerobytes()
  %132 = call i32 (...) @crypto_secretbox_xsalsa20poly1305_zerobytes()
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = call i32 (...) @crypto_secretbox_boxzerobytes()
  %137 = call i32 (...) @crypto_secretbox_xsalsa20poly1305_boxzerobytes()
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = call i32 (...) @crypto_secretbox_macbytes()
  %142 = call i32 (...) @crypto_secretbox_xsalsa20poly1305_macbytes()
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = call i32 (...) @crypto_secretbox_messagebytes_max()
  %147 = call i32 (...) @crypto_secretbox_xsalsa20poly1305_messagebytes_max()
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  ret i32 0
}

declare dso_local i32 @crypto_secretbox(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_secretbox_keybytes(...) #1

declare dso_local i32 @crypto_secretbox_noncebytes(...) #1

declare dso_local i32 @crypto_secretbox_zerobytes(...) #1

declare dso_local i32 @crypto_secretbox_boxzerobytes(...) #1

declare dso_local i32 @crypto_secretbox_macbytes(...) #1

declare dso_local i32 @crypto_secretbox_messagebytes_max(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_secretbox_primitive(...) #1

declare dso_local i32 @crypto_secretbox_xsalsa20poly1305_keybytes(...) #1

declare dso_local i32 @crypto_secretbox_xsalsa20poly1305_noncebytes(...) #1

declare dso_local i32 @crypto_secretbox_xsalsa20poly1305_zerobytes(...) #1

declare dso_local i32 @crypto_secretbox_xsalsa20poly1305_boxzerobytes(...) #1

declare dso_local i32 @crypto_secretbox_xsalsa20poly1305_macbytes(...) #1

declare dso_local i32 @crypto_secretbox_xsalsa20poly1305_messagebytes_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
