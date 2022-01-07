; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_get_bignum1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_get_bignum1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_MESSAGE_INCOMPLETE = common dso_local global i32 0, align 4
@SSHBUF_MAX_BIGNUM = common dso_local global i64 0, align 8
@SSH_ERR_BIGNUM_TOO_LARGE = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SSH_ERR_INTERNAL_ERROR\00", align 1
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_bignum1(%struct.sshbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %10 = call i32* @sshbuf_ptr(%struct.sshbuf* %9)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %12 = call i32 @sshbuf_len(%struct.sshbuf* %11)
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @PEEK_U16(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 7
  %21 = ashr i32 %20, 3
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @SSHBUF_MAX_BIGNUM, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @SSH_ERR_BIGNUM_TOO_LARGE, align 4
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %16
  %29 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %30 = call i32 @sshbuf_len(%struct.sshbuf* %29)
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %8, align 8
  %33 = add i64 2, %32
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SSH_ERR_MESSAGE_INCOMPLETE, align 4
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i64, i64* %8, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @BN_bin2bn(i32* %42, i64 %43, i32* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %40, %37
  %50 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 2, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @sshbuf_consume(%struct.sshbuf* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (...) @SSHBUF_ABORT()
  %59 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %56, %47, %35, %26, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @PEEK_U16(i32*) #1

declare dso_local i32* @BN_bin2bn(i32*, i64, i32*) #1

declare dso_local i64 @sshbuf_consume(%struct.sshbuf*, i32) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @SSHBUF_ABORT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
