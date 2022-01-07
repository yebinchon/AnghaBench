; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-ild.c_ptunit_ild_classify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-ild.c_ptunit_ild_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_insn_ext = type { i32, i32, i32, i32 }
%struct.pt_insn = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @ptunit_ild_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptunit_ild_classify(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ptunit_result, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_insn_ext, align 4
  %11 = alloca %struct.pt_insn, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 @memset(%struct.pt_insn_ext* %10, i32 0, i32 16)
  %14 = bitcast %struct.pt_insn* %11 to %struct.pt_insn_ext*
  %15 = call i32 @memset(%struct.pt_insn_ext* %14, i32 0, i32 16)
  %16 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @memcpy(i32 %17, i32* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.pt_insn* %11 to %struct.pt_insn_ext*
  %26 = call i32 @pt_ild_decode(%struct.pt_insn_ext* %25, %struct.pt_insn_ext* %10)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ptu_int_eq(i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ptu_uint_eq(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ptu_int_eq(i32 %34, i32 %35)
  %37 = call i32 (...) @ptu_passed()
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.pt_insn_ext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pt_ild_decode(%struct.pt_insn_ext*, %struct.pt_insn_ext*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
