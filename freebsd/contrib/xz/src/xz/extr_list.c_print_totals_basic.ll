; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_totals_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_totals_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@CHECKS_STR_SIZE = common dso_local global i32 0, align 4
@totals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"%5s %7s  %11s  %11s  %5s  %-7s \00", align 1
@NICESTR_B = common dso_local global i32 0, align 4
@NICESTR_TIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s file\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s files\0A\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_totals_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_totals_basic() #0 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %5 = call i32 @memset(i8* %4, i8 signext 45, i32 80)
  %6 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 79
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %8 = call i32 @puts(i8* %7)
  %9 = load i32, i32* @CHECKS_STR_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 5), align 4
  %14 = call i32 @get_check_names(i8* %12, i32 %13, i32 0)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 0), align 4
  %16 = call i8* @uint64_to_str(i32 %15, i32 0)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 1), align 4
  %18 = call i8* @uint64_to_str(i32 %17, i32 1)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 4), align 4
  %20 = load i32, i32* @NICESTR_B, align 4
  %21 = load i32, i32* @NICESTR_TIB, align 4
  %22 = call i8* @uint64_to_nicestr(i32 %19, i32 %20, i32 %21, i32 0, i32 2)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 3), align 4
  %24 = load i32, i32* @NICESTR_B, align 4
  %25 = load i32, i32* @NICESTR_TIB, align 4
  %26 = call i8* @uint64_to_nicestr(i32 %23, i32 %24, i32 %25, i32 0, i32 3)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 4), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 3), align 4
  %29 = call i8* @get_ratio(i32 %27, i32 %28)
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18, i8* %22, i8* %26, i8* %29, i8* %12)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 2), align 4
  %32 = load i32, i32* @ULONG_MAX, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %0
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 2), align 4
  br label %40

36:                                               ; preds = %0
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 2), align 4
  %38 = srem i32 %37, 1000000
  %39 = add nsw i32 %38, 1000000
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ]
  %42 = call i8* @ngettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 2), align 4
  %44 = call i8* @uint64_to_str(i32 %43, i32 0)
  %45 = call i32 (i8*, i8*, ...) @printf(i8* %42, i8* %44)
  %46 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_check_names(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @uint64_to_str(i32, i32) #1

declare dso_local i8* @uint64_to_nicestr(i32, i32, i32, i32, i32) #1

declare dso_local i8* @get_ratio(i32, i32) #1

declare dso_local i8* @ngettext(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
