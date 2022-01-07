; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2sp.c_blake2sp_init_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libb2/extr_blake2sp.c_blake2sp_init_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, i64, i32, i8*, i8* }

@PARALLELISM_DEGREE = common dso_local global i32 0, align 4
@BLAKE2S_OUTBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i32)* @blake2sp_init_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blake2sp_init_leaf(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.TYPE_7__], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 9
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 16
  %16 = load i32, i32* @PARALLELISM_DEGREE, align 4
  %17 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 16
  %21 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  store i64 0, i64* %22, align 16
  %23 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @store48(i32 %25, i32 %26)
  %28 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 16
  %30 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %31 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memset(i32 %39, i32 0, i32 4)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %43 = call i32 @blake2s_init_param(%struct.TYPE_6__* %41, %struct.TYPE_7__* %42)
  %44 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret i32 0
}

declare dso_local i32 @store48(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blake2s_init_param(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
