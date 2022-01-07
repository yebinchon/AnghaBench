; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_get_eckey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_sshbuf_get_eckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"SSH_ERR_ALLOC_FAIL\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SSH_ERR_INTERNAL_ERROR\00", align 1
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_eckey(%struct.sshbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @EC_KEY_get0_group(i32* %10)
  %12 = call i32* @EC_POINT_new(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %20 = call i32 @sshbuf_peek_string_direct(%struct.sshbuf* %19, i32** %8, i64* %9)
  store i32 %20, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @EC_POINT_free(i32* %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @EC_KEY_get0_group(i32* %30)
  %32 = call i32 @get_ec(i32* %27, i64 %28, i32* %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @EC_POINT_free(i32* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @EC_KEY_set_public_key(i32* %39, i32* %40)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @EC_POINT_free(i32* %44)
  %46 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %46, i32* %3, align 4
  br label %58

47:                                               ; preds = %38
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @EC_POINT_free(i32* %48)
  %50 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %51 = call i64 @sshbuf_get_string_direct(%struct.sshbuf* %50, i32* null, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 (...) @SSHBUF_ABORT()
  %56 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %53, %43, %34, %22, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @EC_POINT_new(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf*, i32**, i64*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @get_ec(i32*, i64, i32*, i32) #1

declare dso_local i32 @EC_KEY_set_public_key(i32*, i32*) #1

declare dso_local i64 @sshbuf_get_string_direct(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @SSHBUF_ABORT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
