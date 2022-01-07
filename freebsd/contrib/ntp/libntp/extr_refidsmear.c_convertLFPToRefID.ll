; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_refidsmear.c_convertLFPToRefID.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_refidsmear.c_convertLFPToRefID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convertLFPToRefID(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_4__* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = call i32 @L_ADDUF(%struct.TYPE_4__* %2, i32 512)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 3
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 22
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 10
  %15 = or i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = call i32 @UINT32_C(i32 -33554432)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @htonl(i32 %19)
  ret i32 %20
}

declare dso_local i32 @L_ADDUF(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
