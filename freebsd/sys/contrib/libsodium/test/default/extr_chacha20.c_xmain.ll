; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_chacha20.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_chacha20.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_stream_chacha20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@crypto_stream_chacha20_ietf_KEYBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_ietf_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @tv()
  %3 = call i32 (...) @tv_ietf()
  %4 = call i32 (...) @crypto_stream_chacha20_keybytes()
  %5 = icmp ugt i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 (...) @crypto_stream_chacha20_keybytes()
  %9 = load i32, i32* @crypto_stream_chacha20_KEYBYTES, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 (...) @crypto_stream_chacha20_noncebytes()
  %14 = icmp ugt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 (...) @crypto_stream_chacha20_noncebytes()
  %18 = load i32, i32* @crypto_stream_chacha20_NONCEBYTES, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i64 (...) @crypto_stream_chacha20_messagebytes_max()
  %23 = load i64, i64* @crypto_stream_chacha20_MESSAGEBYTES_MAX, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i32 (...) @crypto_stream_chacha20_ietf_keybytes()
  %28 = icmp ugt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = call i32 (...) @crypto_stream_chacha20_ietf_keybytes()
  %32 = load i32, i32* @crypto_stream_chacha20_ietf_KEYBYTES, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 (...) @crypto_stream_chacha20_ietf_noncebytes()
  %37 = icmp ugt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = call i32 (...) @crypto_stream_chacha20_ietf_noncebytes()
  %41 = load i32, i32* @crypto_stream_chacha20_ietf_NONCEBYTES, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i64 (...) @crypto_stream_chacha20_ietf_messagebytes_max()
  %46 = load i64, i64* @crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  ret i32 0
}

declare dso_local i32 @tv(...) #1

declare dso_local i32 @tv_ietf(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_stream_chacha20_keybytes(...) #1

declare dso_local i32 @crypto_stream_chacha20_noncebytes(...) #1

declare dso_local i64 @crypto_stream_chacha20_messagebytes_max(...) #1

declare dso_local i32 @crypto_stream_chacha20_ietf_keybytes(...) #1

declare dso_local i32 @crypto_stream_chacha20_ietf_noncebytes(...) #1

declare dso_local i64 @crypto_stream_chacha20_ietf_messagebytes_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
