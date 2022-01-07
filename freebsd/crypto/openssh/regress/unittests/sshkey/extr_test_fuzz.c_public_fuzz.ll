; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_fuzz.c_public_fuzz.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_fuzz.c_public_fuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.sshbuf = type { i32 }
%struct.fuzz = type { i32 }

@FUZZ_1_BIT_FLIP = common dso_local global i32 0, align 4
@FUZZ_1_BYTE_FLIP = common dso_local global i32 0, align 4
@FUZZ_TRUNCATE_START = common dso_local global i32 0, align 4
@FUZZ_TRUNCATE_END = common dso_local global i32 0, align 4
@onerror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshkey*)* @public_fuzz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @public_fuzz(%struct.sshkey* %0) #0 {
  %2 = alloca %struct.sshkey*, align 8
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.fuzz*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %2, align 8
  %6 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %6, %struct.sshbuf** %4, align 8
  %7 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %6, i32* null)
  %8 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %10 = call i64 @sshkey_putb(%struct.sshkey* %8, %struct.sshbuf* %9)
  %11 = call i32 @ASSERT_INT_EQ(i64 %10, i32 0)
  %12 = load i32, i32* @FUZZ_1_BIT_FLIP, align 4
  %13 = load i32, i32* @FUZZ_1_BYTE_FLIP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FUZZ_TRUNCATE_START, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FUZZ_TRUNCATE_END, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %20 = call i32 @sshbuf_mutable_ptr(%struct.sshbuf* %19)
  %21 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %22 = call i32 @sshbuf_len(%struct.sshbuf* %21)
  %23 = call %struct.fuzz* @fuzz_begin(i32 %18, i32 %20, i32 %22)
  store %struct.fuzz* %23, %struct.fuzz** %5, align 8
  %24 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %25 = call i32 @sshbuf_ptr(%struct.sshbuf* %24)
  %26 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %27 = call i32 @sshbuf_len(%struct.sshbuf* %26)
  %28 = call i64 @sshkey_from_blob(i32 %25, i32 %27, %struct.sshkey** %3)
  %29 = call i32 @ASSERT_INT_EQ(i64 %28, i32 0)
  %30 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %31 = call i32 @sshkey_free(%struct.sshkey* %30)
  %32 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %33 = call i32 @sshbuf_free(%struct.sshbuf* %32)
  %34 = load i32, i32* @onerror, align 4
  %35 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %36 = call i32 @TEST_ONERROR(i32 %34, %struct.fuzz* %35)
  br label %37

37:                                               ; preds = %53, %1
  %38 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %39 = call i32 @fuzz_done(%struct.fuzz* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %44 = call i32 @fuzz_ptr(%struct.fuzz* %43)
  %45 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %46 = call i32 @fuzz_len(%struct.fuzz* %45)
  %47 = call i64 @sshkey_from_blob(i32 %44, i32 %46, %struct.sshkey** %3)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %51 = call i32 @sshkey_free(%struct.sshkey* %50)
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %55 = call i32 @fuzz_next(%struct.fuzz* %54)
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %58 = call i32 @fuzz_cleanup(%struct.fuzz* %57)
  ret void
}

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshbuf*, i32*) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @ASSERT_INT_EQ(i64, i32) #1

declare dso_local i64 @sshkey_putb(%struct.sshkey*, %struct.sshbuf*) #1

declare dso_local %struct.fuzz* @fuzz_begin(i32, i32, i32) #1

declare dso_local i32 @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i64 @sshkey_from_blob(i32, i32, %struct.sshkey**) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @TEST_ONERROR(i32, %struct.fuzz*) #1

declare dso_local i32 @fuzz_done(%struct.fuzz*) #1

declare dso_local i32 @fuzz_ptr(%struct.fuzz*) #1

declare dso_local i32 @fuzz_len(%struct.fuzz*) #1

declare dso_local i32 @fuzz_next(%struct.fuzz*) #1

declare dso_local i32 @fuzz_cleanup(%struct.fuzz*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
