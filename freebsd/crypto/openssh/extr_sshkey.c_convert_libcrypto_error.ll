; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_convert_libcrypto_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_convert_libcrypto_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_KEY_WRONG_PASSPHRASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @convert_libcrypto_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_libcrypto_error() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ERR_peek_error()
  %3 = call i32 @translate_libcrypto_error(i32 %2)
  %4 = sext i32 %3 to i64
  %5 = load i64, i64* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  br label %13

10:                                               ; preds = %0
  %11 = call i32 (...) @ERR_peek_last_error()
  %12 = call i32 @translate_libcrypto_error(i32 %11)
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @translate_libcrypto_error(i32) #1

declare dso_local i32 @ERR_peek_error(...) #1

declare dso_local i32 @ERR_peek_last_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
