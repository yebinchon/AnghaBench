; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_RelativeDate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_RelativeDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@DAY = common dso_local global i32 0, align 4
@DSTmaybe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @RelativeDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RelativeDate(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %13, align 4
  %18 = call %struct.tm* @gmtime(i32* %13)
  store %struct.tm* %18, %struct.tm** %12, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @DAY, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.tm*, %struct.tm** %12, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = add nsw i32 %25, 7
  %27 = srem i32 %26, 7
  %28 = mul nsw i32 %20, %27
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @DAY, align 4
  %32 = mul nsw i32 7, %31
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  br label %40

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = mul nsw i32 %32, %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DSTmaybe, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @DSTcorrect(i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %40
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @DSTcorrect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
