; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.tftp_handle* }
%struct.tftp_handle = type { i32 }

@EOFFSET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i32)* @tftp_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_seek(%struct.open_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tftp_handle*, align 8
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.open_file*, %struct.open_file** %5, align 8
  %10 = getelementptr inbounds %struct.open_file, %struct.open_file* %9, i32 0, i32 0
  %11 = load %struct.tftp_handle*, %struct.tftp_handle** %10, align 8
  store %struct.tftp_handle* %11, %struct.tftp_handle** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 129, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tftp_handle*, %struct.tftp_handle** %8, align 8
  %16 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.tftp_handle*, %struct.tftp_handle** %8, align 8
  %20 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EOFFSET, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %29

25:                                               ; preds = %17, %13
  %26 = load %struct.tftp_handle*, %struct.tftp_handle** %8, align 8
  %27 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
