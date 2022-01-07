; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.disk_devdesc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }

@stor_print.line = internal global [80 x i8] zeroinitializer, align 16
@stor_info_no = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@uboot_storage = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"\09disk%d (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09disk%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stor_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stor_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.disk_devdesc, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @stor_info_no, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uboot_storage, i32 0, i32 0), align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @stor_info_no, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store %struct.TYPE_5__* @uboot_storage, %struct.TYPE_5__** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @D_SLICENONE, align 4
  %31 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @D_PARTNONE, align 4
  %33 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SI(%struct.disk_devdesc* %4)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ub_stor_type(i32 %38)
  %40 = call i32 @snprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stor_print.line, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %39)
  %41 = call i32 @pager_output(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stor_print.line, i64 0, i64 0))
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %61

44:                                               ; preds = %24
  %45 = call i64 @stor_opendev(%struct.disk_devdesc* %4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stor_print.line, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @disk_print(%struct.disk_devdesc* %4, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @stor_print.line, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = call i32 @disk_close(%struct.disk_devdesc* %4)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %61

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %20

61:                                               ; preds = %55, %43, %20
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %17, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @ub_stor_type(i32) #1

declare dso_local i32 @SI(%struct.disk_devdesc*) #1

declare dso_local i64 @stor_opendev(%struct.disk_devdesc*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @disk_print(%struct.disk_devdesc*, i8*, i32) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
