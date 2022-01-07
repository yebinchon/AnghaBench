; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_key_list_filter_for_dnskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_key_list_filter_for_dnskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_KEY_SEP_KEY = common dso_local global i32 0, align 4
@LDNS_SIGN_WITH_ALL_ALGORITHMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ldns_key_list_filter_for_dnskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_key_list_filter_for_dnskey(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [256 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 1024, i1 false)
  store i64 0, i64* %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @ldns_key_list_key_count(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %87

14:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i64, i64* %8, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @ldns_key_list_key_count(i32* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32* @ldns_key_list_key(i32* %21, i64 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ldns_key_flags(i32* %24)
  %26 = load i32, i32* @LDNS_KEY_SEP_KEY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @ldns_key_algorithm(i32* %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %32, %29, %20
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @ldns_key_algorithm(i32* %36)
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %37
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %15

42:                                               ; preds = %15
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %87

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @ldns_key_list_key_count(i32* %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32* @ldns_key_list_key(i32* %56, i64 %57)
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ldns_key_flags(i32* %59)
  %61 = load i32, i32* @LDNS_KEY_SEP_KEY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @LDNS_SIGN_WITH_ALL_ALGORITHMS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = call i64 @ldns_key_algorithm(i32* %70)
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @ldns_key_algorithm(i32* %76)
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %77
  store i32 0, i32* %78, align 4
  br label %82

79:                                               ; preds = %69, %64
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @ldns_key_set_use(i32* %80, i32 0)
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %50

87:                                               ; preds = %13, %45, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ldns_key_list_key_count(i32*) #2

declare dso_local i32* @ldns_key_list_key(i32*, i64) #2

declare dso_local i32 @ldns_key_flags(i32*) #2

declare dso_local i64 @ldns_key_algorithm(i32*) #2

declare dso_local i32 @ldns_key_set_use(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
