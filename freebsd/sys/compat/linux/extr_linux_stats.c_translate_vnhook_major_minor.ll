; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_translate_vnhook_major_minor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_translate_vnhook_major_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32* }
%struct.stat = type { i32 }

@VCHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.stat*)* @translate_vnhook_major_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate_vnhook_major_minor(%struct.vnode* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %7 = load %struct.vnode*, %struct.vnode** %3, align 8
  %8 = getelementptr inbounds %struct.vnode, %struct.vnode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VCHR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @devtoname(i32* %20)
  %22 = call i64 @linux_driver_get_major_minor(i32 %21, i32* %5, i32* %6)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.stat*, %struct.stat** %4, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %17, %12, %2
  ret void
}

declare dso_local i64 @linux_driver_get_major_minor(i32, i32*, i32*) #1

declare dso_local i32 @devtoname(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
