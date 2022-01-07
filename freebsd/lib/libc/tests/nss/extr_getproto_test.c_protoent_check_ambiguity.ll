; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_protoent_check_ambiguity.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_protoent_check_ambiguity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent_test_data = type { i32 }
%struct.protoent = type { i32 }

@protoent = common dso_local global i32 0, align 4
@compare_protoent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protoent_test_data*, %struct.protoent*)* @protoent_check_ambiguity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protoent_check_ambiguity(%struct.protoent_test_data* %0, %struct.protoent* %1) #0 {
  %3 = alloca %struct.protoent_test_data*, align 8
  %4 = alloca %struct.protoent*, align 8
  store %struct.protoent_test_data* %0, %struct.protoent_test_data** %3, align 8
  store %struct.protoent* %1, %struct.protoent** %4, align 8
  %5 = load i32, i32* @protoent, align 4
  %6 = load %struct.protoent_test_data*, %struct.protoent_test_data** %3, align 8
  %7 = load %struct.protoent*, %struct.protoent** %4, align 8
  %8 = load i32, i32* @compare_protoent, align 4
  %9 = call i32* @TEST_DATA_FIND(i32 %5, %struct.protoent_test_data* %6, %struct.protoent* %7, i32 %8, i32* null)
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 -1
  ret i32 %12
}

declare dso_local i32* @TEST_DATA_FIND(i32, %struct.protoent_test_data*, %struct.protoent*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
