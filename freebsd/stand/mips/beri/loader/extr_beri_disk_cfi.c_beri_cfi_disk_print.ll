; ModuleID = '/home/carl/AnghaBench/freebsd/stand/mips/beri/loader/extr_beri_disk_cfi.c_beri_cfi_disk_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/mips/beri/loader/extr_beri_disk_cfi.c_beri_cfi_disk_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.disk_devdesc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@beri_cfi_disk = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"    cfi%d   CFI flash device\0A\00", align 1
@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"    cfi%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @beri_cfi_disk_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_cfi_disk_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.disk_devdesc, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @beri_cfi_disk, i32 0, i32 0), align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %15 = call i32 @snprintf(i8* %14, i32 80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %17 = call i32 @pager_output(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store %struct.TYPE_4__* @beri_cfi_disk, %struct.TYPE_4__** %24, align 8
  %25 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @D_SLICENONE, align 4
  %28 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @D_PARTNONE, align 4
  %30 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = call i32 (...) @cfi_get_mediasize()
  %32 = call i32 (...) @cfi_get_sectorsize()
  %33 = call i64 @disk_open(%struct.disk_devdesc* %4, i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %37 = call i32 @snprintf(i8* %36, i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @disk_print(%struct.disk_devdesc* %4, i8* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = call i32 @disk_close(%struct.disk_devdesc* %4)
  br label %42

42:                                               ; preds = %35, %22
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %20, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @disk_open(%struct.disk_devdesc*, i32, i32) #1

declare dso_local i32 @cfi_get_mediasize(...) #1

declare dso_local i32 @cfi_get_sectorsize(...) #1

declare dso_local i32 @disk_print(%struct.disk_devdesc*, i8*, i32) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
