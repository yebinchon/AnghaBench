; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_dev2udev.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_common_kvm.c_dev2udev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.cdev_priv = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"can't convert cdev *%p to a dev_t\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev2udev(i32* %0, %struct.cdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.cdev_priv, align 8
  store i32* %0, i32** %4, align 8
  store %struct.cdev* %1, %struct.cdev** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = call i64 @cdev2priv(%struct.cdev* %10)
  %12 = call i64 @kvm_read_all(i32* %9, i64 %11, %struct.cdev_priv* %6, i32 8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.cdev*, %struct.cdev** %5, align 8
  %20 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.cdev* %19)
  store i32 -1, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @kvm_read_all(i32*, i64, %struct.cdev_priv*, i32) #1

declare dso_local i64 @cdev2priv(%struct.cdev*) #1

declare dso_local i32 @warnx(i8*, %struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
