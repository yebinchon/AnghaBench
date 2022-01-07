; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_checksum_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_checksum_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.cab = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.cfdata* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.cfdata = type { i64, i32, i64, i32, i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@RESERVE_PRESENT = common dso_local global i32 0, align 4
@CFDATA_cbData = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Checksum error CFDATA[%d] %x:%x in %d bytes\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @cab_checksum_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cab_checksum_finish(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.cab*, align 8
  %5 = alloca %struct.cfdata*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cab*
  store %struct.cab* %12, %struct.cab** %4, align 8
  %13 = load %struct.cab*, %struct.cab** %4, align 8
  %14 = getelementptr inbounds %struct.cab, %struct.cab* %13, i32 0, i32 2
  %15 = load %struct.cfdata*, %struct.cfdata** %14, align 8
  store %struct.cfdata* %15, %struct.cfdata** %5, align 8
  %16 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %17 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %104

22:                                               ; preds = %1
  %23 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %24 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %29 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %32 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %35 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @cab_checksum_cfdata(i64 %30, i32 %33, i64 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %40 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %42 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %27, %22
  store i32 4, i32* %6, align 4
  %44 = load %struct.cab*, %struct.cab** %4, align 8
  %45 = getelementptr inbounds %struct.cab, %struct.cab* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RESERVE_PRESENT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.cab*, %struct.cab** %4, align 8
  %53 = getelementptr inbounds %struct.cab, %struct.cab* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %51, %43
  %61 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %62 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CFDATA_cbData, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %68 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @cab_checksum_cfdata(i64 %65, i32 %66, i64 %69)
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %73 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %75 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %78 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %60
  %82 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %85 = load %struct.cab*, %struct.cab** %4, align 8
  %86 = getelementptr inbounds %struct.cab, %struct.cab* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 1
  %91 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %92 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %95 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cfdata*, %struct.cfdata** %5, align 8
  %98 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @archive_set_error(i32* %83, i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %93, i64 %96, i32 %99)
  %101 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %101, i32* %2, align 4
  br label %104

102:                                              ; preds = %60
  %103 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %81, %20
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i8* @cab_checksum_cfdata(i64, i32, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
