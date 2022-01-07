; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_smaps_page_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c_smaps_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"KernelPageSize:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%*s %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @smaps_page_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smaps_page_size(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [1024 x i8], align 16
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* @page_size, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %22, %16, %1
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @fgets(i8* %8, i32 1024, i32* %9)
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %14 = call i32 @strstr(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %7

17:                                               ; preds = %12
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %7

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 %24, 1024
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %23, %7
  %27 = load i64, i64* %4, align 8
  ret i64 %27
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
