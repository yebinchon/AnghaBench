; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_get_resource_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_get_resource_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PNP_ADDRESS = common dso_local global i32 0, align 4
@PNP_STATUS = common dso_local global i32 0, align 4
@rd_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PnP device failed to report resource data\0A\00", align 1
@PNP_RESOURCE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"--- get_resource_info: got 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_resource_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %56, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load i32, i32* @_PNP_ADDRESS, align 4
  %14 = load i32, i32* @PNP_STATUS, align 4
  %15 = call i32 @outb(i32 %13, i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* @rd_port, align 4
  %21 = shl i32 %20, 2
  %22 = or i32 %21, 3
  %23 = call i32 @inb(i32 %22)
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  %28 = call i32 @DELAY(i32 1)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %16

32:                                               ; preds = %26, %16
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 100
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

37:                                               ; preds = %32
  %38 = load i32, i32* @_PNP_ADDRESS, align 4
  %39 = load i32, i32* @PNP_RESOURCE_DATA, align 4
  %40 = call i32 @outb(i32 %38, i32 %39)
  %41 = load i32, i32* @rd_port, align 4
  %42 = shl i32 %41, 2
  %43 = or i32 %42, 3
  %44 = call i32 @inb(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 @DEB(i32 %54)
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %8

59:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DEB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
