; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@DH_F_DH_CHECK_EX = common dso_local global i32 0, align 4
@DH_R_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@DH_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@DH_R_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@DH_R_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@DH_R_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@DH_UNABLE_TO_CHECK_GENERATOR = common dso_local global i32 0, align 4
@DH_R_UNABLE_TO_CHECK_GENERATOR = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@DH_R_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4
@DH_R_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_check_ex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @DH_check(i32* %5, i32* %4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %16 = load i32, i32* @DH_R_NOT_SUITABLE_GENERATOR, align 4
  %17 = call i32 @DHerr(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %25 = load i32, i32* @DH_R_CHECK_Q_NOT_PRIME, align 4
  %26 = call i32 @DHerr(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %34 = load i32, i32* @DH_R_CHECK_INVALID_Q_VALUE, align 4
  %35 = call i32 @DHerr(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %43 = load i32, i32* @DH_R_CHECK_INVALID_J_VALUE, align 4
  %44 = call i32 @DHerr(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @DH_UNABLE_TO_CHECK_GENERATOR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %52 = load i32, i32* @DH_R_UNABLE_TO_CHECK_GENERATOR, align 4
  %53 = call i32 @DHerr(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %61 = load i32, i32* @DH_R_CHECK_P_NOT_PRIME, align 4
  %62 = call i32 @DHerr(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @DH_F_DH_CHECK_EX, align 4
  %70 = load i32, i32* @DH_R_CHECK_P_NOT_SAFE_PRIME, align 4
  %71 = call i32 @DHerr(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %8
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DH_check(i32*, i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
