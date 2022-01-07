; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.mydata = type { i32, i32* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i8*)* @file_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_switch(%struct.archive* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mydata*, align 8
  %8 = alloca %struct.mydata*, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mydata*
  store %struct.mydata* %11, %struct.mydata** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mydata*
  store %struct.mydata* %13, %struct.mydata** %8, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.archive*, %struct.archive** %4, align 8
  %16 = load %struct.mydata*, %struct.mydata** %7, align 8
  %17 = icmp ne %struct.mydata* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.mydata*, %struct.mydata** %7, align 8
  %20 = getelementptr inbounds %struct.mydata, %struct.mydata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.mydata*, %struct.mydata** %7, align 8
  %25 = getelementptr inbounds %struct.mydata, %struct.mydata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @close(i32 %26)
  %28 = load %struct.mydata*, %struct.mydata** %7, align 8
  %29 = getelementptr inbounds %struct.mydata, %struct.mydata* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load %struct.mydata*, %struct.mydata** %7, align 8
  %33 = getelementptr inbounds %struct.mydata, %struct.mydata* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.mydata*, %struct.mydata** %7, align 8
  %35 = getelementptr inbounds %struct.mydata, %struct.mydata* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %18, %3
  %37 = load %struct.mydata*, %struct.mydata** %8, align 8
  %38 = icmp ne %struct.mydata* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.archive*, %struct.archive** %4, align 8
  %41 = load %struct.mydata*, %struct.mydata** %8, align 8
  %42 = call i32 @file_open(%struct.archive* %40, %struct.mydata* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @file_open(%struct.archive*, %struct.mydata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
