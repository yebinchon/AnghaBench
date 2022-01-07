; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_pkinit_dh2key.c_test_dh2key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_pkinit_dh2key.c_test_dh2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"_krb5_pk_octetstring2key: %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"resulting key wrong: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*)* @test_dh2key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dh2key(i32 %0, i32 %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, i32 %5, %struct.TYPE_14__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %27 = call i64 @_krb5_pk_octetstring2key(i32 %17, i32 %18, i32 %21, i32 %24, %struct.TYPE_14__* %25, %struct.TYPE_14__* %26, %struct.TYPE_13__* %16)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %15, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @krb5_err(i32 %31, i32 1, i64 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %7
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @memcmp(i32 %46, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43, %35
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @krb5_errx(i32 %56, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %43
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @krb5_free_keyblock_contents(i32 %60, %struct.TYPE_13__* %16)
  ret void
}

declare dso_local i64 @_krb5_pk_octetstring2key(i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
