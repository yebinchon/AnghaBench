; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-last_ip.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-last_ip.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_last_ip = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_last_ip, align 4
  %3 = call i32 @memset(%struct.pt_last_ip* %2, i32 205, i32 12)
  %4 = call i32 @pt_last_ip_init(%struct.pt_last_ip* %2)
  %5 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %2, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ptu_uint_eq(i32 %6, i64 0)
  %8 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %2, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ptu_uint_eq(i32 %9, i64 0)
  %11 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ptu_uint_eq(i32 %12, i64 0)
  %14 = call i32 (...) @ptu_passed()
  %15 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local i32 @memset(%struct.pt_last_ip*, i32, i32) #1

declare dso_local i32 @pt_last_ip_init(%struct.pt_last_ip*) #1

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
