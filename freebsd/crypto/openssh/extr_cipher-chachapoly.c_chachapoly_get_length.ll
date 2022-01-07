; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher-chachapoly.c_chachapoly_get_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher-chachapoly.c_chachapoly_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chachapoly_ctx = type { i32 }

@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chachapoly_get_length(%struct.chachapoly_ctx* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.chachapoly_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [8 x i32], align 16
  store %struct.chachapoly_ctx* %0, %struct.chachapoly_ctx** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %17, i32* %6, align 4
  br label %34

18:                                               ; preds = %5
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @POKE_U64(i32* %19, i32 %20)
  %22 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %25 = call i32 @chacha_ivsetup(i32* %23, i32* %24, i32* null)
  %26 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %26, i32 0, i32 0
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %30 = call i32 @chacha_encrypt_bytes(i32* %27, i32* %28, i32* %29, i32 4)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %32 = call i32 @PEEK_U32(i32* %31)
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %18, %16
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @POKE_U64(i32*, i32) #1

declare dso_local i32 @chacha_ivsetup(i32*, i32*, i32*) #1

declare dso_local i32 @chacha_encrypt_bytes(i32*, i32*, i32*, i32) #1

declare dso_local i32 @PEEK_U32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
