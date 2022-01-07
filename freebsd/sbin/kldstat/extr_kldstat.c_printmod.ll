; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldstat/extr_kldstat.c_printmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldstat/extr_kldstat.c_printmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stat = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't stat module id %d\00", align 1
@showdata = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"\09\09%3d %s (%d, %u, 0x%lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09\09%3d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @printmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printmod(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module_stat, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @bzero(%struct.module_stat* %3, i32 32)
  %5 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 0
  store i32 32, i32* %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @modstat(i32 %6, %struct.module_stat* %3)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %37

12:                                               ; preds = %1
  %13 = load i64, i64* @showdata, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* %19, i32 %22, i32 %25, i32 %28)
  br label %36

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %3, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %32, i8* %34)
  br label %36

36:                                               ; preds = %30, %15
  br label %37

37:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @bzero(%struct.module_stat*, i32) #1

declare dso_local i64 @modstat(i32, %struct.module_stat*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
