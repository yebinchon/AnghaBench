; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_eltsub.c_geteltnm.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_eltsub.c_geteltnm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@geteltnm.rbuf = internal global [132 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"Unspecified\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Device Slot\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Power Supply\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Cooling\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Temperature Sensors\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Door Lock\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Audible alarm\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Enclosure Services Controller Electronics\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"SCC Controller Electronics\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Nonvolatile Cache\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Invalid Operation Reason\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Uninterruptible Power Supply\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Display\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Key Pad Entry\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Enclosure\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"SCSI Port/Transceiver\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Communication Port\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Voltage Sensor\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Current Sensor\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"SCSI Target Port\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"SCSI Initiator Port\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Simple Subenclosure\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Array Device Slot\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"SAS Expander\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"SAS Connector\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"<Type 0x%x>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @geteltnm(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %56 [
    i32 130, label %4
    i32 149, label %6
    i32 139, label %8
    i32 144, label %10
    i32 131, label %12
    i32 147, label %14
    i32 153, label %16
    i32 145, label %18
    i32 136, label %20
    i32 140, label %22
    i32 143, label %24
    i32 129, label %26
    i32 148, label %28
    i32 142, label %30
    i32 146, label %32
    i32 135, label %34
    i32 141, label %36
    i32 150, label %38
    i32 128, label %40
    i32 152, label %42
    i32 133, label %44
    i32 134, label %46
    i32 132, label %48
    i32 151, label %50
    i32 137, label %52
    i32 138, label %54
  ]

4:                                                ; preds = %1
  %5 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %59

6:                                                ; preds = %1
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %59

8:                                                ; preds = %1
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %59

10:                                               ; preds = %1
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %59

12:                                               ; preds = %1
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %59

14:                                               ; preds = %1
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %59

16:                                               ; preds = %1
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %59

18:                                               ; preds = %1
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %59

20:                                               ; preds = %1
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %59

22:                                               ; preds = %1
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %59

24:                                               ; preds = %1
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %59

26:                                               ; preds = %1
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %59

28:                                               ; preds = %1
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %59

30:                                               ; preds = %1
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %59

32:                                               ; preds = %1
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %59

34:                                               ; preds = %1
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %59

36:                                               ; preds = %1
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %59

38:                                               ; preds = %1
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %59

40:                                               ; preds = %1
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %59

42:                                               ; preds = %1
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %59

44:                                               ; preds = %1
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %59

46:                                               ; preds = %1
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  br label %59

48:                                               ; preds = %1
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  br label %59

50:                                               ; preds = %1
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  br label %59

52:                                               ; preds = %1
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  br label %59

54:                                               ; preds = %1
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %59

56:                                               ; preds = %1
  %57 = load i32, i32* %2, align 4
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret i8* getelementptr inbounds ([132 x i8], [132 x i8]* @geteltnm.rbuf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
