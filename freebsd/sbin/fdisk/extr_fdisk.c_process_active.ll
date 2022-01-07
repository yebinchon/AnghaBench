; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_process_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_process_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.dos_partition* }
%struct.dos_partition = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@active_processed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ERROR line %d: incorrect number of active args\00", align 1
@current_line_number = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ERROR line %d: invalid partition number %d\00", align 1
@mboot = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@NDOSPART = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @process_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_active(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dos_partition*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %1
  store i32 1, i32* @active_processed, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @current_line_number, align 4
  %14 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %54

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 4
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %15
  %28 = load i32, i32* @current_line_number, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mboot, i32 0, i32 0), align 8
  store %struct.dos_partition* %32, %struct.dos_partition** %6, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %43, %31
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NDOSPART, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.dos_partition*, %struct.dos_partition** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %38, i64 %40
  %42 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %33

46:                                               ; preds = %33
  %47 = load i64, i64* @ACTIVE, align 8
  %48 = load %struct.dos_partition*, %struct.dos_partition** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %48, i64 %51
  %53 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %52, i32 0, i32 0
  store i64 %47, i64* %53, align 8
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %27, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @warnx(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
