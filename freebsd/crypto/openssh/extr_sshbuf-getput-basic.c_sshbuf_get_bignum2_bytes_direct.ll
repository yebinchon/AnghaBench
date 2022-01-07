; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_bignum2_bytes_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_bignum2_bytes_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_BIGNUM_IS_NEGATIVE = common dso_local global i32 0, align 4
@SSHBUF_MAX_BIGNUM = common dso_local global i32 0, align 4
@SSH_ERR_BIGNUM_TOO_LARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SSH_ERR_INTERNAL_ERROR\00", align 1
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_bignum2_bytes_direct(%struct.sshbuf* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %13 = call i32 @sshbuf_peek_string_direct(%struct.sshbuf* %12, i32** %8, i64* %10)
  store i32 %13, i32* %11, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %4, align 4
  br label %84

17:                                               ; preds = %3
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @SSH_ERR_BIGNUM_IS_NEGATIVE, align 4
  store i32 %27, i32* %4, align 4
  br label %84

28:                                               ; preds = %21, %17
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @SSHBUF_MAX_BIGNUM, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %28
  %45 = load i32, i32* @SSH_ERR_BIGNUM_TOO_LARGE, align 4
  store i32 %45, i32* %4, align 4
  br label %84

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i64, i64* %9, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %9, align 8
  br label %47

61:                                               ; preds = %54
  %62 = load i32**, i32*** %6, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = load i32**, i32*** %6, align 8
  store i32* %65, i32** %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64*, i64** %7, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 4
  %77 = call i64 @sshbuf_consume(%struct.sshbuf* %74, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 (...) @SSHBUF_ABORT()
  %82 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %79, %44, %26, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf*, i32**, i64*) #1

declare dso_local i64 @sshbuf_consume(%struct.sshbuf*, i64) #1

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @SSHBUF_ABORT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
