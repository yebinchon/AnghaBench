; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzz = type { i64, i32, i32* }

@SIZE_MAX = common dso_local global i32 0, align 4
@FUZZ_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"begin, ret = %p\00", align 1
@SIGINFO = common dso_local global i32 0, align 4
@last_fuzz = common dso_local global %struct.fuzz* null, align 8
@siginfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuzz* @fuzz_begin(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fuzz*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call %struct.fuzz* @calloc(i32 24, i32 1)
  store %struct.fuzz* %8, %struct.fuzz** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %14 = icmp ne %struct.fuzz* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @malloc(i64 %17)
  %19 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %20 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %22 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %28 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @memcpy(i32* %29, i8* %30, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %35 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %38 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %40 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SIZE_MAX, align 4
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %49 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FUZZ_MAX, align 4
  %52 = load i32, i32* @FUZZ_MAX, align 4
  %53 = sub nsw i32 %52, 1
  %54 = or i32 %51, %53
  %55 = icmp sle i32 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %59 = bitcast %struct.fuzz* %58 to i8*
  %60 = call i32 @FUZZ_DBG(i8* %59)
  %61 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  %62 = call i32 @fuzz_next(%struct.fuzz* %61)
  %63 = load %struct.fuzz*, %struct.fuzz** %7, align 8
  ret %struct.fuzz* %63
}

declare dso_local %struct.fuzz* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @FUZZ_DBG(i8*) #1

declare dso_local i32 @fuzz_next(%struct.fuzz*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
