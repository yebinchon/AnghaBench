; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_muram.c_FM_MURAM_FreeMem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_muram.c_FM_MURAM_FreeMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"memory pointer!!!\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_MURAM_FreeMem(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @E_INVALID_HANDLE, align 4
  %10 = call i32 @SANITY_CHECK_RETURN_ERROR(i64 %8, i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @E_INVALID_HANDLE, align 4
  %15 = call i32 @SANITY_CHECK_RETURN_ERROR(i64 %13, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @PTR_TO_UINT(i8* %19)
  %21 = call i64 @MM_Put(i64 %18, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @MINOR, align 4
  %25 = load i32, i32* @E_INVALID_ADDRESS, align 4
  %26 = call i32 @RETURN_ERROR(i32 %24, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @E_OK, align 4
  ret i32 %28
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i64, i32) #1

declare dso_local i64 @MM_Put(i64, i32) #1

declare dso_local i32 @PTR_TO_UINT(i8*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
