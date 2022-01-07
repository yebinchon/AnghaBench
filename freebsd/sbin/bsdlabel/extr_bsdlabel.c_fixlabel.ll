; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_fixlabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_fixlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32, i64, %struct.partition* }
%struct.partition = type { i32, i64 }

@RAW_PART = common dso_local global i32 0, align 4
@BBSIZE = common dso_local global i32 0, align 4
@secsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disklabel*)* @fixlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixlabel(%struct.disklabel* %0) #0 {
  %2 = alloca %struct.disklabel*, align 8
  %3 = alloca %struct.partition*, align 8
  %4 = alloca i32, align 4
  store %struct.disklabel* %0, %struct.disklabel** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  %8 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RAW_PART, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %28

16:                                               ; preds = %11
  %17 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  %18 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %17, i32 0, i32 2
  %19 = load %struct.partition*, %struct.partition** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.partition, %struct.partition* %19, i64 %21
  %23 = getelementptr inbounds %struct.partition, %struct.partition* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %51

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  %33 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %32, i32 0, i32 2
  %34 = load %struct.partition*, %struct.partition** %33, align 8
  %35 = getelementptr inbounds %struct.partition, %struct.partition* %34, i64 0
  store %struct.partition* %35, %struct.partition** %3, align 8
  %36 = load i32, i32* @BBSIZE, align 4
  %37 = load i32, i32* @secsize, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.partition*, %struct.partition** %3, align 8
  %40 = getelementptr inbounds %struct.partition, %struct.partition* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  %42 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.partition*, %struct.partition** %3, align 8
  %45 = getelementptr inbounds %struct.partition, %struct.partition* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %43, %47
  %49 = load %struct.partition*, %struct.partition** %3, align 8
  %50 = getelementptr inbounds %struct.partition, %struct.partition* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %31, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
