; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_get_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshcipher_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CFLAG_CHACHAPOLY = common dso_local global i32 0, align 4
@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_get_length(%struct.sshcipher_ctx* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshcipher_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sshcipher_ctx* %0, %struct.sshcipher_ctx** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CFLAG_CHACHAPOLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @chachapoly_get_length(i32* %22, i32* %23, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @PEEK_U32(i32* %34)
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %31, %20
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @chachapoly_get_length(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @PEEK_U32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
