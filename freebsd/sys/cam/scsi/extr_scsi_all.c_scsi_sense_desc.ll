; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_inquiry_data = type { i32 }
%struct.asc_table_entry = type { i8* }
%struct.sense_key_table_entry = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"Invalid Sense Key\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Vendor Specific ASC\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Vendor Specific ASCQ\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Reserved ASC/ASCQ pair\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_desc(i32 %0, i32 %1, i32 %2, %struct.scsi_inquiry_data* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_inquiry_data*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.asc_table_entry*, align 8
  %14 = alloca %struct.sense_key_table_entry*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.scsi_inquiry_data* %3, %struct.scsi_inquiry_data** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %10, align 8
  %19 = call i32 @fetchtableentries(i32 %15, i32 %16, i32 %17, %struct.scsi_inquiry_data* %18, %struct.sense_key_table_entry** %14, %struct.asc_table_entry** %13)
  %20 = load %struct.sense_key_table_entry*, %struct.sense_key_table_entry** %14, align 8
  %21 = icmp ne %struct.sense_key_table_entry* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.sense_key_table_entry*, %struct.sense_key_table_entry** %14, align 8
  %24 = getelementptr inbounds %struct.sense_key_table_entry, %struct.sense_key_table_entry* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %11, align 8
  store i8* %25, i8** %26, align 8
  br label %29

27:                                               ; preds = %6
  %28 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.asc_table_entry*, %struct.asc_table_entry** %13, align 8
  %31 = icmp ne %struct.asc_table_entry* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.asc_table_entry*, %struct.asc_table_entry** %13, align 8
  %34 = getelementptr inbounds %struct.asc_table_entry, %struct.asc_table_entry* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %12, align 8
  store i8* %35, i8** %36, align 8
  br label %57

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 128
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 255
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  br label %56

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %46, 128
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 255
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  br label %55

53:                                               ; preds = %48, %45
  %54 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %32
  ret void
}

declare dso_local i32 @fetchtableentries(i32, i32, i32, %struct.scsi_inquiry_data*, %struct.sense_key_table_entry**, %struct.asc_table_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
