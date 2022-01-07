; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_main.c_extract_currdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_main.c_extract_currdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (i32*, %struct.disk_devdesc*)* }
%struct.disk_devdesc = type { %struct.devdesc, i32, i32 }
%struct.devdesc = type { i64, %struct.TYPE_4__* }

@userboot_disk_maxunit = common dso_local global i64 0, align 8
@userboot_disk = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@D_SLICEWILD = common dso_local global i32 0, align 4
@D_PARTWILD = common dso_local global i32 0, align 4
@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@host_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"currdev\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@userboot_setcurrdev = common dso_local global i32 0, align 4
@env_nounset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"loaddev\00", align 1
@env_noset = common dso_local global i32 0, align 4
@userboot_zfs_found = common dso_local global i64 0, align 8
@zfs_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @extract_currdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_currdev() #0 {
  %1 = alloca %struct.disk_devdesc, align 8
  %2 = alloca %struct.devdesc*, align 8
  %3 = load i64, i64* @userboot_disk_maxunit, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  %7 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %6, i32 0, i32 1
  store %struct.TYPE_4__* @userboot_disk, %struct.TYPE_4__** %7, align 8
  %8 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @D_SLICEWILD, align 4
  %11 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @D_PARTWILD, align 4
  %13 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64 (i32*, %struct.disk_devdesc*)*, i64 (i32*, %struct.disk_devdesc*)** %17, align 8
  %19 = call i64 %18(i32* null, %struct.disk_devdesc* %1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* @D_SLICENONE, align 4
  %23 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @D_PARTNONE, align 4
  %25 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %5
  %27 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  store %struct.devdesc* %27, %struct.devdesc** %2, align 8
  br label %34

28:                                               ; preds = %0
  %29 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  %30 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %29, i32 0, i32 1
  store %struct.TYPE_4__* @host_dev, %struct.TYPE_4__** %30, align 8
  %31 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  %32 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %1, i32 0, i32 0
  store %struct.devdesc* %33, %struct.devdesc** %2, align 8
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32, i32* @EV_VOLATILE, align 4
  %36 = load %struct.devdesc*, %struct.devdesc** %2, align 8
  %37 = call i32 @userboot_fmtdev(%struct.devdesc* %36)
  %38 = load i32, i32* @userboot_setcurrdev, align 4
  %39 = load i32, i32* @env_nounset, align 4
  %40 = call i32 @env_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @EV_VOLATILE, align 4
  %42 = load %struct.devdesc*, %struct.devdesc** %2, align 8
  %43 = call i32 @userboot_fmtdev(%struct.devdesc* %42)
  %44 = load i32, i32* @env_noset, align 4
  %45 = load i32, i32* @env_nounset, align 4
  %46 = call i32 @env_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @env_setenv(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @userboot_fmtdev(%struct.devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
