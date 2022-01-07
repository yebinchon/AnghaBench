; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/hostkeys/extr_test_iterate.c_prepare_expected.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/hostkeys/extr_test_iterate.c_prepare_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expected = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@KEY_ECDSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expected*, i64)* @prepare_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_expected(%struct.expected* %0, i64 %1) #0 {
  %3 = alloca %struct.expected*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.expected* %0, %struct.expected** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %42, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.expected*, %struct.expected** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.expected, %struct.expected* %11, i64 %12
  %14 = getelementptr inbounds %struct.expected, %struct.expected* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %42

18:                                               ; preds = %10
  %19 = load %struct.expected*, %struct.expected** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.expected, %struct.expected* %19, i64 %20
  %22 = getelementptr inbounds %struct.expected, %struct.expected* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KEY_ECDSA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %42

28:                                               ; preds = %18
  %29 = load %struct.expected*, %struct.expected** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.expected, %struct.expected* %29, i64 %30
  %32 = getelementptr inbounds %struct.expected, %struct.expected* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @test_data_file(i32* %33)
  %35 = load %struct.expected*, %struct.expected** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.expected, %struct.expected* %35, i64 %36
  %38 = getelementptr inbounds %struct.expected, %struct.expected* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @sshkey_load_public(i32 %34, i32* %39, i32* null)
  %41 = call i32 @ASSERT_INT_EQ(i32 %40, i32 0)
  br label %42

42:                                               ; preds = %28, %27, %17
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshkey_load_public(i32, i32*, i32*) #1

declare dso_local i32 @test_data_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
