; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_stdtime.c_isc_stdtime_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_stdtime.c_isc_stdtime_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@US_PER_S = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_stdtime_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.timeval, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @REQUIRE(i32 %6)
  %8 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i32 @RUNTIME_CHECK(i32 %10)
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @US_PER_S, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @INSIST(i32 %22)
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %2, align 8
  store i32 %26, i32* %27, align 4
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @RUNTIME_CHECK(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
