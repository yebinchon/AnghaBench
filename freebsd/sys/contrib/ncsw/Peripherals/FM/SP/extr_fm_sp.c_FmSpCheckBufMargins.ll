; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fm_sp.c_FmSpCheckBufMargins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fm_sp.c_FmSpCheckBufMargins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@MAX_EXT_BUFFER_OFFSET = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"bufMargins.startMargins can't be larger than %d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"bufMargins.endMargins can't be larger than %d\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmSpCheckBufMargins(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MAX_EXT_BUFFER_OFFSET, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @MAJOR, align 4
  %10 = load i32, i32* @E_INVALID_VALUE, align 4
  %11 = load i64, i64* @MAX_EXT_BUFFER_OFFSET, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @RETURN_ERROR(i32 %9, i32 %10, i8* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_EXT_BUFFER_OFFSET, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @MAJOR, align 4
  %22 = load i32, i32* @E_INVALID_VALUE, align 4
  %23 = load i64, i64* @MAX_EXT_BUFFER_OFFSET, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @RETURN_ERROR(i32 %21, i32 %22, i8* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* @E_OK, align 4
  ret i32 %27
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
