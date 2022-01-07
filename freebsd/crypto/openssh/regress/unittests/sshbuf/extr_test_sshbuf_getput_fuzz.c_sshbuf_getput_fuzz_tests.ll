; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_getput_fuzz.c_sshbuf_getput_fuzz_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshbuf/extr_test_sshbuf_getput_fuzz.c_sshbuf_getput_fuzz_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzz = type { i32 }

@__const.sshbuf_getput_fuzz_tests.blob = private unnamed_addr constant [138 x i32] [i32 208, i32 192, i32 222, i32 250, i32 206, i32 222, i32 173, i32 254, i32 237, i32 172, i32 29, i32 31, i32 28, i32 190, i32 239, i32 0, i32 0, i32 0, i32 9, i32 79, i32 32, i32 71, i32 111, i32 114, i32 103, i32 111, i32 110, i32 33, i32 121, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 0, i32 0, i32 0, i32 20, i32 0, i32 240, i32 224, i32 208, i32 192, i32 176, i32 160, i32 144, i32 128, i32 112, i32 96, i32 80, i32 64, i32 48, i32 32, i32 16, i32 0, i32 127, i32 255, i32 17, i32 0, i32 0, i32 0, i32 65, i32 4, i32 12, i32 130, i32 128, i32 4, i32 131, i32 157, i32 1, i32 6, i32 170, i32 89, i32 87, i32 82, i32 22, i32 25, i32 19, i32 87, i32 52, i32 180, i32 81, i32 69, i32 157, i32 173, i32 181, i32 134, i32 103, i32 126, i32 249, i32 223, i32 85, i32 120, i32 73, i32 153, i32 77, i32 25, i32 107, i32 80, i32 240, i32 180, i32 233, i32 75, i32 60, i32 115, i32 227, i32 169, i32 212, i32 205, i32 157, i32 242, i32 200, i32 249, i32 163, i32 94, i32 66, i32 189, i32 208, i32 71, i32 85, i32 15, i32 105, i32 216, i32 14, i32 194, i32 60, i32 212], align 16
@.str = private unnamed_addr constant [18 x i8] c"fuzz blob parsing\00", align 1
@FUZZ_1_BIT_FLIP = common dso_local global i32 0, align 4
@FUZZ_2_BIT_FLIP = common dso_local global i32 0, align 4
@FUZZ_1_BYTE_FLIP = common dso_local global i32 0, align 4
@FUZZ_2_BYTE_FLIP = common dso_local global i32 0, align 4
@FUZZ_TRUNCATE_START = common dso_local global i32 0, align 4
@FUZZ_TRUNCATE_END = common dso_local global i32 0, align 4
@onerror = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshbuf_getput_fuzz_tests() #0 {
  %1 = alloca [138 x i32], align 16
  %2 = alloca %struct.fuzz*, align 8
  %3 = bitcast [138 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([138 x i32]* @__const.sshbuf_getput_fuzz_tests.blob to i8*), i64 552, i1 false)
  %4 = call i32 @TEST_START(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @FUZZ_1_BIT_FLIP, align 4
  %6 = load i32, i32* @FUZZ_2_BIT_FLIP, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @FUZZ_1_BYTE_FLIP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FUZZ_2_BYTE_FLIP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FUZZ_TRUNCATE_START, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FUZZ_TRUNCATE_END, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds [138 x i32], [138 x i32]* %1, i64 0, i64 0
  %17 = call %struct.fuzz* @fuzz_begin(i32 %15, i32* %16, i32 552)
  store %struct.fuzz* %17, %struct.fuzz** %2, align 8
  %18 = load i32*, i32** @onerror, align 8
  %19 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %20 = call i32 @TEST_ONERROR(i32* %18, %struct.fuzz* %19)
  br label %21

21:                                               ; preds = %29, %0
  %22 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %23 = call i32 @fuzz_done(%struct.fuzz* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds [138 x i32], [138 x i32]* %1, i64 0, i64 0
  %28 = call i32 @attempt_parse_blob(i32* %27, i32 552)
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %31 = call i32 @fuzz_next(%struct.fuzz* %30)
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %34 = call i32 @fuzz_cleanup(%struct.fuzz* %33)
  %35 = call i32 (...) @TEST_DONE()
  %36 = call i32 @TEST_ONERROR(i32* null, %struct.fuzz* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_START(i8*) #2

declare dso_local %struct.fuzz* @fuzz_begin(i32, i32*, i32) #2

declare dso_local i32 @TEST_ONERROR(i32*, %struct.fuzz*) #2

declare dso_local i32 @fuzz_done(%struct.fuzz*) #2

declare dso_local i32 @attempt_parse_blob(i32*, i32) #2

declare dso_local i32 @fuzz_next(%struct.fuzz*) #2

declare dso_local i32 @fuzz_cleanup(%struct.fuzz*) #2

declare dso_local i32 @TEST_DONE(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
