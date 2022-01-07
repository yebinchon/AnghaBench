; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @tv()
  %3 = call i32 (...) @tv2()
  %4 = call i32 (...) @tv3()
  %5 = call i32 (...) @str_tests()
  %6 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_bytes_min()
  %7 = icmp ugt i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_bytes_max()
  %11 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_bytes_min()
  %12 = icmp ugt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i64 (...) @crypto_pwhash_scryptsalsa208sha256_passwd_max()
  %16 = call i64 (...) @crypto_pwhash_scryptsalsa208sha256_passwd_min()
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_saltbytes()
  %21 = icmp ugt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_strbytes()
  %25 = icmp ugt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_strbytes()
  %29 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_strprefix()
  %30 = call i32 @strlen(i32 %29)
  %31 = icmp ugt i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_opslimit_min()
  %35 = icmp ugt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_opslimit_max()
  %39 = icmp ugt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_memlimit_min()
  %43 = icmp ugt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_memlimit_max()
  %47 = icmp ugt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_opslimit_interactive()
  %51 = icmp ugt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_memlimit_interactive()
  %55 = icmp ugt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive()
  %59 = icmp ugt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i32 (...) @crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive()
  %63 = icmp ugt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @tv(...) #1

declare dso_local i32 @tv2(...) #1

declare dso_local i32 @tv3(...) #1

declare dso_local i32 @str_tests(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_bytes_min(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_bytes_max(...) #1

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256_passwd_max(...) #1

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256_passwd_min(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_saltbytes(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_strbytes(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_strprefix(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_opslimit_min(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_opslimit_max(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_memlimit_min(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_memlimit_max(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_opslimit_interactive(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_memlimit_interactive(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive(...) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
