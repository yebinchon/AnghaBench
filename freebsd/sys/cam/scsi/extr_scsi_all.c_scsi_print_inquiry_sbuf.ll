; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_print_inquiry_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_print_inquiry_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_inquiry_data = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c" (vendor-unique qualifier)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" (offline)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" (reserved qualifier)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" (LUN not supported)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Direct Access\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Sequential Access\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Printer\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"WORM\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"CD-ROM\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Scanner\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Changer\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Communication\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Storage Array\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Enclosure Services\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Simplified Direct Access\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Optical Card Read/Write\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Object-Based Storage\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Automation/Drive Interface\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Host Managed Zoned Block\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Uninstalled\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Removable\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@SCSI_REV_0 = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"SCSI \00", align 1
@SCSI_REV_SPC = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"SCSI-%d \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"SPC-%d SCSI \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"device%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_print_inquiry_sbuf(%struct.sbuf* %0, %struct.scsi_inquiry_data* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.scsi_inquiry_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %4, align 8
  %8 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %9 = call i32 @SID_TYPE(%struct.scsi_inquiry_data* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %11 = call i64 @SID_QUAL_IS_VENDOR_UNIQUE(%struct.scsi_inquiry_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %16 = call i32 @SID_QUAL(%struct.scsi_inquiry_data* %15)
  switch i32 %16, label %20 [
    i32 148, label %17
    i32 147, label %18
    i32 146, label %19
    i32 149, label %21
  ]

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %22

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %22

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %22

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %14, %20
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %22

22:                                               ; preds = %21, %19, %18, %17
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %43 [
    i32 141, label %25
    i32 131, label %26
    i32 135, label %27
    i32 134, label %28
    i32 129, label %29
    i32 144, label %30
    i32 132, label %31
    i32 137, label %32
    i32 143, label %33
    i32 142, label %34
    i32 130, label %35
    i32 140, label %36
    i32 133, label %37
    i32 138, label %38
    i32 136, label %39
    i32 145, label %40
    i32 128, label %41
    i32 139, label %42
  ]

25:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %44

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %44

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %44

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %44

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %44

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %44

31:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %44

32:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %44

33:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %44

34:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %44

35:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %44

36:                                               ; preds = %23
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %44

37:                                               ; preds = %23
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %44

38:                                               ; preds = %23
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %44

39:                                               ; preds = %23
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %44

40:                                               ; preds = %23
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8** %6, align 8
  br label %44

41:                                               ; preds = %23
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8** %6, align 8
  br label %44

42:                                               ; preds = %23
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %6, align 8
  br label %44

43:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %6, align 8
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25
  %45 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %46 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %47 = call i32 @scsi_print_inquiry_short_sbuf(%struct.sbuf* %45, %struct.scsi_inquiry_data* %46)
  %48 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %49 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %50 = call i64 @SID_IS_REMOVABLE(%struct.scsi_inquiry_data* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %57 = call i8* @SID_ANSI_REV(%struct.scsi_inquiry_data* %56)
  %58 = load i8*, i8** @SCSI_REV_0, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %62 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %80

63:                                               ; preds = %44
  %64 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %65 = call i8* @SID_ANSI_REV(%struct.scsi_inquiry_data* %64)
  %66 = load i8*, i8** @SCSI_REV_SPC, align 8
  %67 = icmp ule i8* %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %70 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %71 = call i8* @SID_ANSI_REV(%struct.scsi_inquiry_data* %70)
  %72 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* %71)
  br label %79

73:                                               ; preds = %63
  %74 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %75 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %76 = call i8* @SID_ANSI_REV(%struct.scsi_inquiry_data* %75)
  %77 = getelementptr inbounds i8, i8* %76, i64 -2
  %78 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* %82)
  ret void
}

declare dso_local i32 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @SID_QUAL_IS_VENDOR_UNIQUE(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @SID_QUAL(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @scsi_print_inquiry_short_sbuf(%struct.sbuf*, %struct.scsi_inquiry_data*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @SID_IS_REMOVABLE(%struct.scsi_inquiry_data*) #1

declare dso_local i8* @SID_ANSI_REV(%struct.scsi_inquiry_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
