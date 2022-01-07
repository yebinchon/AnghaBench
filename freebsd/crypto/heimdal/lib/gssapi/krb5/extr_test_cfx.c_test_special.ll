; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_test_cfx.c_test_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_test_cfx.c_test_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsskrb5_ctx = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"_gsskrb5cfx_max_wrap_length_cfx: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"_gsskrb5cfx_wrap_length_cfx: %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"testsize (%d) < rsize (%d) for max_wrap_size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @test_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_special(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsskrb5_ctx, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.gsskrb5_ctx, %struct.gsskrb5_ctx* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @_gssapi_wrap_size_cfx(i64* %15, %struct.gsskrb5_ctx* %14, i32 %18, i32 %19, i32 0, i64 %20, i64* %11)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %25, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %4
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %33, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @_gsskrb5cfx_wrap_length_cfx(i32 %38, i32 %39, i32 %40, i32 0, i64 %41, i64* %10, i64* %12, i32* %13)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %46, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %10, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %55, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %54, %50
  ret void
}

declare dso_local i64 @_gssapi_wrap_size_cfx(i64*, %struct.gsskrb5_ctx*, i32, i32, i32, i64, i64*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i32, ...) #1

declare dso_local i64 @_gsskrb5cfx_wrap_length_cfx(i32, i32, i32, i32, i64, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
