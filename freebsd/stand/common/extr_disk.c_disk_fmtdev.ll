; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_fmtdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_fmtdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8* }

@disk_fmtdev.buf = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@D_SLICENONE = common dso_local global i64 0, align 8
@D_PARTNONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@D_PARTISGPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @disk_fmtdev(%struct.disk_devdesc* %0) #0 {
  %2 = alloca %struct.disk_devdesc*, align 8
  %3 = alloca i8*, align 8
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %2, align 8
  %4 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %5 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %12 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @disk_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @disk_fmtdev.buf, i64 0, i64 0), i64 %16
  store i8* %17, i8** %3, align 8
  %18 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %19 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @D_SLICENONE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %26 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @D_PARTNONE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.disk_devdesc*, %struct.disk_devdesc** %2, align 8
  %33 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 97
  %36 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %30, %24
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strcat(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i8* getelementptr inbounds ([128 x i8], [128 x i8]* @disk_fmtdev.buf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
