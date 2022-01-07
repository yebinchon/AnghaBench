; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_buffer.c_isc__buffer_putuint48.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_buffer.c_isc__buffer_putuint48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc__buffer_putuint48(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @ISC_BUFFER_VALID(%struct.TYPE_6__* %7)
  %9 = call i32 @REQUIRE(i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 6
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @REQUIRE(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ISC__BUFFER_PUTUINT16(%struct.TYPE_6__* %25, i64 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ISC__BUFFER_PUTUINT32(%struct.TYPE_6__* %28, i64 %29)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @ISC_BUFFER_VALID(%struct.TYPE_6__*) #1

declare dso_local i32 @ISC__BUFFER_PUTUINT16(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ISC__BUFFER_PUTUINT32(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
