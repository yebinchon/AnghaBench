; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c_hx509_certs_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c_hx509_certs_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"MEMORY:filter-certs\00", align 1
@HX509_CERT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_certs_filter(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @_hx509_query_statistic(i32 %14, i32 0, i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @hx509_certs_init(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %83

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @hx509_certs_start_seq(i32 %25, i32 %26, i32* %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @hx509_certs_free(i32* %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %83

34:                                               ; preds = %24
  store i32* null, i32** %11, align 8
  br label %35

35:                                               ; preds = %34, %59
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @hx509_certs_next_cert(i32 %36, i32 %37, i32 %38, i32** %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %62

43:                                               ; preds = %35
  %44 = load i32*, i32** %11, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %62

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @_hx509_query_match_cert(i32 %48, i32* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @hx509_certs_add(i32 %54, i32 %56, i32* %57)
  store i32 1, i32* %13, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @hx509_cert_free(i32* %60)
  br label %35

62:                                               ; preds = %46, %42
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @hx509_certs_end_seq(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @hx509_certs_free(i32* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %83

73:                                               ; preds = %62
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @hx509_certs_free(i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @hx509_clear_error_string(i32 %79)
  %81 = load i32, i32* @HX509_CERT_NOT_FOUND, align 4
  store i32 %81, i32* %5, align 4
  br label %83

82:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %76, %69, %30, %22
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @_hx509_query_statistic(i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_certs_start_seq(i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @hx509_certs_next_cert(i32, i32, i32, i32**) #1

declare dso_local i64 @_hx509_query_match_cert(i32, i32*, i32*) #1

declare dso_local i32 @hx509_certs_add(i32, i32, i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @hx509_certs_end_seq(i32, i32, i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
