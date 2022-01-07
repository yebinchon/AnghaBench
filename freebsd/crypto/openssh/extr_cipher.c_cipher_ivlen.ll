; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_ivlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_ivlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshcipher = type { i64, i32, i64 }

@CFLAG_CHACHAPOLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cipher_ivlen(%struct.sshcipher* %0) #0 {
  %2 = alloca %struct.sshcipher*, align 8
  store %struct.sshcipher* %0, %struct.sshcipher** %2, align 8
  %3 = load %struct.sshcipher*, %struct.sshcipher** %2, align 8
  %4 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.sshcipher*, %struct.sshcipher** %2, align 8
  %9 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CFLAG_CHACHAPOLY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7, %1
  %15 = load %struct.sshcipher*, %struct.sshcipher** %2, align 8
  %16 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %22

18:                                               ; preds = %7
  %19 = load %struct.sshcipher*, %struct.sshcipher** %2, align 8
  %20 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i64 [ %17, %14 ], [ %21, %18 ]
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
