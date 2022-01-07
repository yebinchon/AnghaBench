; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_set_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_F_TLS1_SET_GROUPS = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_set_groups(i64** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @SSL_F_TLS1_SET_GROUPS, align 4
  %19 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %20 = call i32 @SSLerr(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %72

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = mul i64 %22, 8
  %24 = call i64* @OPENSSL_malloc(i64 %23)
  store i64* %24, i64** %10, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @SSL_F_TLS1_SET_GROUPS, align 4
  %28 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %29 = call i32 @SSLerr(i32 %27, i32 %28)
  store i32 0, i32* %5, align 4
  br label %72

30:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @tls1_nid2group_id(i32 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = shl i64 1, %41
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %35
  %51 = load i64*, i64** %10, align 8
  %52 = call i32 @OPENSSL_free(i64* %51)
  store i32 0, i32* %5, align 4
  br label %72

53:                                               ; preds = %45
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  br label %31

64:                                               ; preds = %31
  %65 = load i64**, i64*** %6, align 8
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @OPENSSL_free(i64* %66)
  %68 = load i64*, i64** %10, align 8
  %69 = load i64**, i64*** %6, align 8
  store i64* %68, i64** %69, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %64, %50, %26, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64* @OPENSSL_malloc(i64) #1

declare dso_local i64 @tls1_nid2group_id(i32) #1

declare dso_local i32 @OPENSSL_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
