; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_dev = type { i32 }

@f_cuse = common dso_local global i64 0, align 8
@h_cuse = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@CUSE_IOCTL_DESTROY_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cuse_dev_destroy(%struct.cuse_dev* %0) #0 {
  %2 = alloca %struct.cuse_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cuse_dev* %0, %struct.cuse_dev** %2, align 8
  %4 = load i64, i64* @f_cuse, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  %8 = call i32 (...) @CUSE_LOCK()
  %9 = load %struct.cuse_dev*, %struct.cuse_dev** %2, align 8
  %10 = load i32, i32* @entry, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* @h_cuse, %struct.cuse_dev* %9, i32 %10)
  %12 = call i32 (...) @CUSE_UNLOCK()
  %13 = load i64, i64* @f_cuse, align 8
  %14 = load i32, i32* @CUSE_IOCTL_DESTROY_DEV, align 4
  %15 = call i32 @ioctl(i64 %13, i32 %14, %struct.cuse_dev** %2)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %22

19:                                               ; preds = %7
  %20 = load %struct.cuse_dev*, %struct.cuse_dev** %2, align 8
  %21 = call i32 @free(%struct.cuse_dev* %20)
  br label %22

22:                                               ; preds = %19, %18, %6
  ret void
}

declare dso_local i32 @CUSE_LOCK(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cuse_dev*, i32) #1

declare dso_local i32 @CUSE_UNLOCK(...) #1

declare dso_local i32 @ioctl(i64, i32, %struct.cuse_dev**) #1

declare dso_local i32 @free(%struct.cuse_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
