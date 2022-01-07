; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_streaming_compression.c_createResources_orDie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_streaming_compression.c_createResources_orDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_createCCtx() failed!\00", align 1
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @createResources_orDie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createResources_orDie(%struct.TYPE_3__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = call i32 (...) @ZSTD_CStreamInSize()
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %4, i32* %5, align 8
  %6 = call i32 (...) @ZSTD_CStreamOutSize()
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @malloc_orDie(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @malloc_orDie(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = call i32* (...) @ZSTD_createCCtx()
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @CHECK(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ZSTD_CCtx_setParameter(i32* %24, i32 %25, i32 %26)
  %28 = call i32 @CHECK_ZSTD(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %32 = call i32 @ZSTD_CCtx_setParameter(i32* %30, i32 %31, i32 1)
  %33 = call i32 @CHECK_ZSTD(i32 %32)
  ret void
}

declare dso_local i32 @ZSTD_CStreamInSize(...) #1

declare dso_local i32 @ZSTD_CStreamOutSize(...) #1

declare dso_local i8* @malloc_orDie(i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @CHECK(i32, i8*) #1

declare dso_local i32 @CHECK_ZSTD(i32) #1

declare dso_local i32 @ZSTD_CCtx_setParameter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
