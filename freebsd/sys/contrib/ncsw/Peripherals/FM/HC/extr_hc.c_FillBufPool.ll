; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FillBufPool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FillBufPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64, i32**, i32 }

@HC_CMD_POOL_SIZE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"FM HC frames!\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @FillBufPool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillBufPool(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @ASSERT_COND(%struct.TYPE_4__* %4)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @HC_CMD_POOL_SIZE, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @XX_MallocSmart(i32 4, i32 %13, i32 16)
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32**, i32*** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  store i32* %15, i32** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %10
  %29 = load i32, i32* @MAJOR, align 4
  %30 = load i32, i32* @E_NO_MEMORY, align 4
  %31 = call i32 @RETURN_ERROR(i32 %29, i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %6

36:                                               ; preds = %6
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @HC_CMD_POOL_SIZE, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %37

51:                                               ; preds = %37
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @E_OK, align 4
  ret i32 %54
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_4__*) #1

declare dso_local i64 @XX_MallocSmart(i32, i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
