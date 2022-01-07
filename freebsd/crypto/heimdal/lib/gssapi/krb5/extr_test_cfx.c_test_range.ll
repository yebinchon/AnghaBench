; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_test_cfx.c_test_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_test_cfx.c_test_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }
%struct.gsskrb5_ctx = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"_gsskrb5cfx_max_wrap_length_cfx: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"_gsskrb5cfx_wrap_length_cfx: %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"size (%d) < rsize (%d) for max_wrap_size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range*, i32, i32, i32)* @test_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_range(%struct.range* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gsskrb5_ctx, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.range* %0, %struct.range** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.range*, %struct.range** %5, align 8
  %18 = getelementptr inbounds %struct.range, %struct.range* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %69, %4
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.range*, %struct.range** %5, align 8
  %23 = getelementptr inbounds %struct.range, %struct.range* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.gsskrb5_ctx, %struct.gsskrb5_ctx* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @_gssapi_wrap_size_cfx(i64* %15, %struct.gsskrb5_ctx* %12, i32 %29, i32 %30, i32 0, i64 %31, i64* %16)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %36, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %26
  %40 = load i64, i64* %16, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %69

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %16, align 8
  %48 = call i32 @_gsskrb5cfx_wrap_length_cfx(i32 %44, i32 %45, i32 %46, i32 0, i64 %47, i64* %11, i64* %13, i32* %14)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %52, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %16, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i32, i32, i8*, i32, ...) @krb5_errx(i32 %60, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %59, %55
  br label %69

69:                                               ; preds = %68, %42
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %20

72:                                               ; preds = %20
  ret void
}

declare dso_local i32 @_gssapi_wrap_size_cfx(i64*, %struct.gsskrb5_ctx*, i32, i32, i32, i64, i64*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @_gsskrb5cfx_wrap_length_cfx(i32, i32, i32, i32, i64, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
