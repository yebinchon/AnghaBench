; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@running = common dso_local global i32 0, align 4
@blocked = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@blockedthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc__app_block() #0 {
  %1 = load i32, i32* @running, align 4
  %2 = call i32 @REQUIRE(i32 %1)
  %3 = load i64, i64* @blocked, align 8
  %4 = icmp ne i64 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @REQUIRE(i32 %6)
  %8 = load i64, i64* @ISC_TRUE, align 8
  store i64 %8, i64* @blocked, align 8
  %9 = call i32 (...) @GetCurrentThread()
  store i32 %9, i32* @blockedthread, align 4
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @GetCurrentThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
