; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_ascentrycomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_ascentrycomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_table_entry = type { i32, i32, i32 }
%struct.asc_key = type { i32, i32 }

@SSQ_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ascentrycomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ascentrycomp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asc_table_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.asc_key*
  %11 = getelementptr inbounds %struct.asc_key, %struct.asc_key* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.asc_key*
  %15 = getelementptr inbounds %struct.asc_key, %struct.asc_key* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.asc_table_entry*
  store %struct.asc_table_entry* %18, %struct.asc_table_entry** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.asc_table_entry*, %struct.asc_table_entry** %8, align 8
  %21 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.asc_table_entry*, %struct.asc_table_entry** %8, align 8
  %27 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %61

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.asc_table_entry*, %struct.asc_table_entry** %8, align 8
  %34 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.asc_table_entry*, %struct.asc_table_entry** %8, align 8
  %40 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load %struct.asc_table_entry*, %struct.asc_table_entry** %8, align 8
  %45 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SSQ_RANGE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.asc_table_entry*, %struct.asc_table_entry** %8, align 8
  %53 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %52, i64 -1
  %54 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %37
  store i32 0, i32* %3, align 4
  br label %61

58:                                               ; preds = %50, %43
  store i32 -1, i32* %3, align 4
  br label %61

59:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %58, %57, %30
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
