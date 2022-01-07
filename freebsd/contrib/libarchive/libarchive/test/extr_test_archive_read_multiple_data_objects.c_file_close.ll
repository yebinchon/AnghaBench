; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.mydata = type { %struct.mydata* }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @file_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_close(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mydata*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mydata*
  store %struct.mydata* %8, %struct.mydata** %6, align 8
  %9 = load %struct.mydata*, %struct.mydata** %6, align 8
  %10 = icmp eq %struct.mydata* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = load %struct.mydata*, %struct.mydata** %6, align 8
  %16 = call i32 @file_switch(%struct.archive* %14, %struct.mydata* %15, i32* null)
  %17 = load %struct.mydata*, %struct.mydata** %6, align 8
  %18 = getelementptr inbounds %struct.mydata, %struct.mydata* %17, i32 0, i32 0
  %19 = load %struct.mydata*, %struct.mydata** %18, align 8
  %20 = call i32 @free(%struct.mydata* %19)
  %21 = load %struct.mydata*, %struct.mydata** %6, align 8
  %22 = call i32 @free(%struct.mydata* %21)
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %13, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @file_switch(%struct.archive*, %struct.mydata*, i32*) #1

declare dso_local i32 @free(%struct.mydata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
