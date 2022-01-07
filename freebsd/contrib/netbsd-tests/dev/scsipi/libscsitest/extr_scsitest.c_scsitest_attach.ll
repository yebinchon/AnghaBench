; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/scsipi/libscsitest/extr_scsitest.c_scsitest_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/scsipi/libscsitest/extr_scsitest.c_scsitest_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsitest = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i64, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@scsitest_request = common dso_local global i32 0, align 4
@minphys = common dso_local global i32 0, align 4
@scsi_bustype = common dso_local global i32 0, align 4
@SCSIPI_CHAN_NOSETTLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"scsi\00", align 1
@scsiprint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsitest_attach(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsitest*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.scsitest* @device_private(i32 %8)
  store %struct.scsitest* %9, %struct.scsitest** %7, align 8
  %10 = call i32 @aprint_naive(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @aprint_normal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %13 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %12, i32 0, i32 1
  %14 = call i32 @memset(%struct.TYPE_3__* %13, i32 0, i32 72)
  %15 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %16 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @scsitest_request, align 4
  %19 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %20 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 11
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @minphys, align 4
  %23 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %24 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 10
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %28 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 9
  store i32 %26, i32* %29, align 8
  %30 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %31 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %34 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %37 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %36, i32 0, i32 0
  %38 = call i32 @memset(%struct.TYPE_3__* %37, i32 0, i32 72)
  %39 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %40 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 8
  store i32* @scsi_bustype, i32** %41, align 8
  %42 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %43 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 2, i32* %44, align 4
  %45 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %46 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32 1, i32* %47, align 8
  %48 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %49 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 7
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @SCSIPI_CHAN_NOSETTLE, align 4
  %52 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %53 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 8
  %55 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %56 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %55, i32 0, i32 1
  %57 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %58 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.scsitest*, %struct.scsitest** %7, align 8
  %62 = getelementptr inbounds %struct.scsitest, %struct.scsitest* %61, i32 0, i32 0
  %63 = load i32, i32* @scsiprint, align 4
  %64 = call i32 @config_found_ia(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %62, i32 %63)
  ret void
}

declare dso_local %struct.scsitest* @device_private(i32) #1

declare dso_local i32 @aprint_naive(i8*) #1

declare dso_local i32 @aprint_normal(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @config_found_ia(i32, i8*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
