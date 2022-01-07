; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-asid.c_match_default_mixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-asid.c_match_default_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_asid = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @match_default_mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_default_mixed() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_asid, align 4
  %3 = alloca %struct.pt_asid, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @pt_asid_init(%struct.pt_asid* %2)
  %6 = call i32 @pt_asid_init(%struct.pt_asid* %3)
  %7 = call i32 @pt_asid_match(%struct.pt_asid* %2, %struct.pt_asid* %3)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ptu_int_eq(i32 %8, i32 1)
  %10 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %2, i32 0, i32 0
  store i32 8960, i32* %10, align 4
  %11 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %3, i32 0, i32 1
  store i32 270336, i32* %11, align 4
  %12 = call i32 @pt_asid_match(%struct.pt_asid* %2, %struct.pt_asid* %3)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ptu_int_eq(i32 %13, i32 1)
  %15 = call i32 @pt_asid_match(%struct.pt_asid* %3, %struct.pt_asid* %2)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 1)
  %18 = call i32 (...) @ptu_passed()
  %19 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

declare dso_local i32 @pt_asid_init(%struct.pt_asid*) #1

declare dso_local i32 @pt_asid_match(%struct.pt_asid*, %struct.pt_asid*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
