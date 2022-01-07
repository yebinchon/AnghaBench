; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check_pub_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@DH_CHECK_PUBKEY_TOO_SMALL = common dso_local global i32 0, align 4
@DH_CHECK_PUBKEY_TOO_LARGE = common dso_local global i32 0, align 4
@DH_CHECK_PUBKEY_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_check_pub_key(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32* (...) @BN_CTX_new()
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %88

15:                                               ; preds = %3
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @BN_CTX_start(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32* @BN_CTX_get(i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @BN_set_word(i32* %23, i32 1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %15
  br label %88

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @BN_cmp(i32* %28, i32* %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @DH_CHECK_PUBKEY_TOO_SMALL, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @BN_copy(i32* %38, i32 %41)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @BN_sub_word(i32* %45, i32 1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %37
  br label %88

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @BN_cmp(i32* %50, i32* %51)
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @DH_CHECK_PUBKEY_TOO_LARGE, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @BN_mod_exp(i32* %65, i32* %66, i32* %69, i32 %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %88

77:                                               ; preds = %64
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @BN_is_one(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @DH_CHECK_PUBKEY_INVALID, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %59
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %76, %48, %26, %14
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @BN_CTX_end(i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @BN_CTX_free(i32* %91)
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_copy(i32*, i32) #1

declare dso_local i32 @BN_sub_word(i32*, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
