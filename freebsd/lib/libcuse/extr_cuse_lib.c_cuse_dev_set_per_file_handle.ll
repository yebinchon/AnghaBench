; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_dev_set_per_file_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_dev_set_per_file_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_dev = type { i32 }
%struct.cuse_dev_entered = type { i8*, %struct.cuse_dev* }

@f_cuse = common dso_local global i32 0, align 4
@CUSE_IOCTL_SET_PFH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cuse_dev_set_per_file_handle(%struct.cuse_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.cuse_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cuse_dev_entered*, align 8
  store %struct.cuse_dev* %0, %struct.cuse_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.cuse_dev_entered* (...) @cuse_dev_get_entered()
  store %struct.cuse_dev_entered* %6, %struct.cuse_dev_entered** %5, align 8
  %7 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %5, align 8
  %8 = icmp eq %struct.cuse_dev_entered* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %5, align 8
  %11 = getelementptr inbounds %struct.cuse_dev_entered, %struct.cuse_dev_entered* %10, i32 0, i32 1
  %12 = load %struct.cuse_dev*, %struct.cuse_dev** %11, align 8
  %13 = load %struct.cuse_dev*, %struct.cuse_dev** %3, align 8
  %14 = icmp ne %struct.cuse_dev* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  br label %23

16:                                               ; preds = %9
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %5, align 8
  %19 = getelementptr inbounds %struct.cuse_dev_entered, %struct.cuse_dev_entered* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @f_cuse, align 4
  %21 = load i32, i32* @CUSE_IOCTL_SET_PFH, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, i8** %4)
  br label %23

23:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.cuse_dev_entered* @cuse_dev_get_entered(...) #1

declare dso_local i32 @ioctl(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
