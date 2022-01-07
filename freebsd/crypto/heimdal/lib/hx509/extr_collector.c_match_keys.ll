; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c_match_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c_match_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.private_key = type { i32* }

@HX509_CERT_NOT_FOUND = common dso_local global i32 0, align 4
@HX509_PRIVATE_KEY_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No private key to compare with\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.private_key*, i32)* @match_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_keys(i32 %0, %struct.private_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.private_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.private_key* %1, %struct.private_key** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @HX509_CERT_NOT_FOUND, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.private_key*, %struct.private_key** %6, align 8
  %14 = getelementptr inbounds %struct.private_key, %struct.private_key* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HX509_PRIVATE_KEY_MISSING, align 4
  %20 = call i32 @hx509_set_error_string(i32 %18, i32 0, i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @HX509_PRIVATE_KEY_MISSING, align 4
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @hx509_certs_start_seq(i32 %23, i32 %24, i32* %8)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %22
  store i32* null, i32** %9, align 8
  br label %31

31:                                               ; preds = %30, %47, %66
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @hx509_certs_next_cert(i32 %32, i32 %33, i32 %34, i32** %9)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %69

39:                                               ; preds = %31
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %69

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @_hx509_cert_private_key(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @hx509_cert_free(i32* %48)
  br label %31

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.private_key*, %struct.private_key** %6, align 8
  %53 = getelementptr inbounds %struct.private_key, %struct.private_key* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @_hx509_match_keys(i32* %51, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.private_key*, %struct.private_key** %6, align 8
  %61 = getelementptr inbounds %struct.private_key, %struct.private_key* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @_hx509_cert_assign_key(i32* %59, i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @hx509_cert_free(i32* %64)
  store i32 0, i32* %11, align 4
  br label %69

66:                                               ; preds = %50
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @hx509_cert_free(i32* %67)
  br label %31

69:                                               ; preds = %58, %42, %38
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @hx509_certs_end_seq(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @hx509_clear_error_string(i32 %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %28, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_start_seq(i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_next_cert(i32, i32, i32, i32**) #1

declare dso_local i64 @_hx509_cert_private_key(i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @_hx509_match_keys(i32*, i32*) #1

declare dso_local i32 @_hx509_cert_assign_key(i32*, i32*) #1

declare dso_local i32 @hx509_certs_end_seq(i32, i32, i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
