; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.disk_devdesc = type { i32, i32, i64, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@umass_disk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"    umass0   UMASS device\0A\00", align 1
@ret = common dso_local global i64 0, align 8
@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"    umass0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umass_disk_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_disk_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.disk_devdesc, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_disk, i32 0, i32 0), align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = call i32 @memset(%struct.disk_devdesc* %4, i32 0, i32 24)
  %12 = call i64 @pager_output(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @ret, align 8
  %13 = load i64, i64* @ret, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, i64* @ret, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 3
  store %struct.TYPE_2__* @umass_disk, %struct.TYPE_2__** %19, align 8
  %20 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @D_SLICENONE, align 4
  %22 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @D_PARTNONE, align 4
  %24 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = call i64 @umass_disk_open_sub(%struct.disk_devdesc* %4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @disk_print(%struct.disk_devdesc* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  store i64 %29, i64* @ret, align 8
  %30 = call i32 @disk_close(%struct.disk_devdesc* %4)
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i64, i64* @ret, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %15, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @memset(%struct.disk_devdesc*, i32, i32) #1

declare dso_local i64 @umass_disk_open_sub(%struct.disk_devdesc*) #1

declare dso_local i64 @disk_print(%struct.disk_devdesc*, i8*, i32) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
