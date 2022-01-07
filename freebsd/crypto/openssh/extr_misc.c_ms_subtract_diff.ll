; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_ms_subtract_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_ms_subtract_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ms_subtract_diff(%struct.timeval* %0, i32* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @monotime_tv(%struct.timeval* %6)
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = call i32 @timersub(%struct.timeval* %6, %struct.timeval* %8, %struct.timeval* %5)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 1000
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000
  %16 = add nsw i32 %12, %15
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, %16
  store i32 %19, i32* %17, align 4
  ret void
}

declare dso_local i32 @monotime_tv(%struct.timeval*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
