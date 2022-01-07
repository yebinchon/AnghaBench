; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_perfcounters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_perfcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_PC_FIRST_F = common dso_local global i64 0, align 8
@IB_PC_VL15_DROPPED_F = common dso_local global i64 0, align 8
@IB_PC_QP1_DROP_F = common dso_local global i64 0, align 8
@IB_PC_LAST_F = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mad_dump_perfcounters(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* @IB_PC_FIRST_F, align 8
  %15 = load i64, i64* @IB_PC_VL15_DROPPED_F, align 8
  %16 = call i32 @_dump_fields(i8* %11, i32 %12, i8* %13, i64 %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %53

20:                                               ; preds = %4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* @IB_PC_QP1_DROP_F, align 8
  %30 = load i64, i64* @IB_PC_QP1_DROP_F, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @_dump_fields(i8* %24, i32 %27, i8* %28, i64 %29, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %53

36:                                               ; preds = %20
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* @IB_PC_VL15_DROPPED_F, align 8
  %51 = load i64, i64* @IB_PC_LAST_F, align 8
  %52 = call i32 @_dump_fields(i8* %43, i32 %48, i8* %49, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %36, %35, %19
  ret void
}

declare dso_local i32 @_dump_fields(i8*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
