; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdSync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i8* }

@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_SYNC = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcPcdSync(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i64, i64* @E_OK, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @ASSERT_COND(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.TYPE_5__* @GetBuf(i32* %13, i8** %7)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @MINOR, align 4
  %19 = load i64, i64* @E_NO_MEMORY, align 8
  %20 = call i32 @RETURN_ERROR(i32 %18, i64 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = call i32 @memset(%struct.TYPE_5__* %22, i32 0, i32 32)
  %24 = load i32, i32* @HC_HCOR_GBL, align 4
  %25 = load i32, i32* @HC_HCOR_OPCODE_SYNC, align 4
  %26 = or i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = call i32 @BUILD_FD(i32 32)
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @EnQFrm(i32* %39, i32* %5, i8* %40)
  store i64 %41, i64* %6, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @PutBuf(i32* %42, %struct.TYPE_5__* %43, i8* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @E_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %21
  %50 = load i32, i32* @MINOR, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load i8*, i8** @NO_MSG, align 8
  %53 = call i32 @RETURN_ERROR(i32 %50, i64 %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %21
  %55 = load i64, i64* @E_OK, align 8
  ret i64 %55
}

declare dso_local i32 @ASSERT_COND(i32*) #1

declare dso_local %struct.TYPE_5__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
