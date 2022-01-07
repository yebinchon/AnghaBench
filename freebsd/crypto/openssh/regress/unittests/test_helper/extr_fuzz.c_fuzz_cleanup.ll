; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzz = type { %struct.fuzz*, %struct.fuzz* }

@.str = private unnamed_addr constant [19 x i8] c"cleanup, fuzz = %p\00", align 1
@SIGINFO = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@last_fuzz = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuzz_cleanup(%struct.fuzz* %0) #0 {
  %2 = alloca %struct.fuzz*, align 8
  store %struct.fuzz* %0, %struct.fuzz** %2, align 8
  %3 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %4 = bitcast %struct.fuzz* %3 to i8*
  %5 = call i32 @FUZZ_DBG(i8* %4)
  %6 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %7 = icmp ne %struct.fuzz* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %11 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %10, i32 0, i32 1
  %12 = load %struct.fuzz*, %struct.fuzz** %11, align 8
  %13 = icmp ne %struct.fuzz* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %17 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %16, i32 0, i32 0
  %18 = load %struct.fuzz*, %struct.fuzz** %17, align 8
  %19 = icmp ne %struct.fuzz* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %23 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %22, i32 0, i32 1
  %24 = load %struct.fuzz*, %struct.fuzz** %23, align 8
  %25 = call i32 @free(%struct.fuzz* %24)
  %26 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %27 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %26, i32 0, i32 0
  %28 = load %struct.fuzz*, %struct.fuzz** %27, align 8
  %29 = call i32 @free(%struct.fuzz* %28)
  %30 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %31 = call i32 @free(%struct.fuzz* %30)
  ret void
}

declare dso_local i32 @FUZZ_DBG(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.fuzz*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
