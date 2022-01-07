; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.disk_devdesc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@userdisk_maxunit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@userboot_disk = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"    disk%d:   Guest drive image\0A\00", align 1
@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@ud_info = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"    disk%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @userdisk_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userdisk_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.disk_devdesc, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @userdisk_maxunit, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @userboot_disk, i32 0, i32 0), align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %69, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @userdisk_maxunit, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @snprintf(i8* %24, i32 80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %28 = call i32 @pager_output(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %72

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %struct.TYPE_5__* @userboot_disk, %struct.TYPE_5__** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @D_SLICENONE, align 4
  %39 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @D_PARTNONE, align 4
  %41 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ud_info, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ud_info, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @disk_open(%struct.disk_devdesc* %4, i32 %47, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %32
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @snprintf(i8* %57, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @disk_print(%struct.disk_devdesc* %4, i8* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = call i32 @disk_close(%struct.disk_devdesc* %4)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %72

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %32
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %19

72:                                               ; preds = %66, %31, %19
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %16, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @disk_open(%struct.disk_devdesc*, i32, i32) #1

declare dso_local i32 @disk_print(%struct.disk_devdesc*, i8*, i32) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
