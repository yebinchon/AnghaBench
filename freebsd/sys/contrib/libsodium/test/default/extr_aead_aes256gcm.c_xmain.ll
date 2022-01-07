; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_aead_aes256gcm.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_aead_aes256gcm.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_aead_aes256gcm_KEYBYTES = common dso_local global i64 0, align 8
@crypto_aead_aes256gcm_NSECBYTES = common dso_local global i64 0, align 8
@crypto_aead_aes256gcm_NPUBBYTES = common dso_local global i64 0, align 8
@crypto_aead_aes256gcm_ABYTES = common dso_local global i64 0, align 8
@crypto_aead_aes256gcm_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 (...) @crypto_aead_aes256gcm_is_available()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @tv()
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i64 (...) @crypto_aead_aes256gcm_keybytes()
  %8 = load i64, i64* @crypto_aead_aes256gcm_KEYBYTES, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i64 (...) @crypto_aead_aes256gcm_nsecbytes()
  %13 = load i64, i64* @crypto_aead_aes256gcm_NSECBYTES, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i64 (...) @crypto_aead_aes256gcm_npubbytes()
  %18 = load i64, i64* @crypto_aead_aes256gcm_NPUBBYTES, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i64 (...) @crypto_aead_aes256gcm_abytes()
  %23 = load i64, i64* @crypto_aead_aes256gcm_ABYTES, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i32 (...) @crypto_aead_aes256gcm_statebytes()
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 4
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = call i64 (...) @crypto_aead_aes256gcm_messagebytes_max()
  %33 = load i64, i64* @crypto_aead_aes256gcm_MESSAGEBYTES_MAX, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @crypto_aead_aes256gcm_is_available(...) #1

declare dso_local i32 @tv(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_aead_aes256gcm_keybytes(...) #1

declare dso_local i64 @crypto_aead_aes256gcm_nsecbytes(...) #1

declare dso_local i64 @crypto_aead_aes256gcm_npubbytes(...) #1

declare dso_local i64 @crypto_aead_aes256gcm_abytes(...) #1

declare dso_local i32 @crypto_aead_aes256gcm_statebytes(...) #1

declare dso_local i64 @crypto_aead_aes256gcm_messagebytes_max(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
