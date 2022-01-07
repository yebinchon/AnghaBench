; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_signature_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_signature_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshkey*, %struct.sshkey*, i8*, i32*, i64)* @signature_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signature_test(%struct.sshkey* %0, %struct.sshkey* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %6, align 8
  store %struct.sshkey* %1, %struct.sshkey** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @sshkey_sign(%struct.sshkey* %13, i32** %12, i64* %11, i32* %14, i64 %15, i8* %16, i32 0)
  %18 = call i32 @ASSERT_INT_EQ(i32 %17, i32 0)
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @ASSERT_SIZE_T_GT(i64 %19, i32 8)
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @ASSERT_PTR_NE(i32* %21, i32* null)
  %23 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @sshkey_verify(%struct.sshkey* %23, i32* %24, i64 %25, i32* %26, i64 %27, i32* null, i32 0)
  %29 = call i32 @ASSERT_INT_EQ(i32 %28, i32 0)
  %30 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @sshkey_verify(%struct.sshkey* %30, i32* %31, i64 %32, i32* %33, i64 %34, i32* null, i32 0)
  %36 = call i32 @ASSERT_INT_NE(i32 %35, i32 0)
  %37 = load i32*, i32** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %38, 5
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, 16
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @sshkey_verify(%struct.sshkey* %43, i32* %44, i64 %45, i32* %46, i64 %47, i32* null, i32 0)
  %49 = call i32 @ASSERT_INT_NE(i32 %48, i32 0)
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @free(i32* %50)
  ret void
}

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshkey_sign(%struct.sshkey*, i32**, i64*, i32*, i64, i8*, i32) #1

declare dso_local i32 @ASSERT_SIZE_T_GT(i64, i32) #1

declare dso_local i32 @ASSERT_PTR_NE(i32*, i32*) #1

declare dso_local i32 @sshkey_verify(%struct.sshkey*, i32*, i64, i32*, i64, i32*, i32) #1

declare dso_local i32 @ASSERT_INT_NE(i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
