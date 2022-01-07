; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_identcpu.c_extract_user_id_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_identcpu.c_extract_user_id_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@user_regs = common dso_local global %struct.TYPE_3__* null, align 8
@user_cpu_desc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_user_id_field(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @user_regs, align 8
  %13 = call i32 @nitems(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @user_regs, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load i32, i32* @user_cpu_desc, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @CPU_DESC_FIELD(i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = ashr i64 %28, %29
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  store i32 1, i32* %4, align 4
  br label %37

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @CPU_DESC_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
