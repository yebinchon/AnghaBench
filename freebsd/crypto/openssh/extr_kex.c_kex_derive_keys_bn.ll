; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_derive_keys_bn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_derive_keys_bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_derive_keys_bn(%struct.ssh* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sshbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %12, %struct.sshbuf** %10, align 8
  %13 = icmp eq %struct.sshbuf* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %15, i32* %5, align 4
  br label %31

16:                                               ; preds = %4
  %17 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %17, i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ssh*, %struct.ssh** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %26 = call i32 @kex_derive_keys(%struct.ssh* %22, i32* %23, i32 %24, %struct.sshbuf* %25)
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.sshbuf*, %struct.sshbuf** %10, align 8
  %29 = call i32 @sshbuf_free(%struct.sshbuf* %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %14
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf*, i32*) #1

declare dso_local i32 @kex_derive_keys(%struct.ssh*, i32*, i32, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
