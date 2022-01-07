; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_fill_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_fill_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.linux_file* }
%struct.linux_file = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.kinfo_file = type { i32 }
%struct.filedesc = type { i32 }

@KF_TYPE_DEV = common dso_local global i32 0, align 4
@KF_TYPE_VNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kinfo_file*, %struct.filedesc*)* @linux_file_fill_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_fill_kinfo(%struct.file* %0, %struct.kinfo_file* %1, %struct.filedesc* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kinfo_file*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.linux_file*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kinfo_file* %1, %struct.kinfo_file** %5, align 8
  store %struct.filedesc* %2, %struct.filedesc** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  store %struct.linux_file* %12, %struct.linux_file** %7, align 8
  %13 = load %struct.linux_file*, %struct.linux_file** %7, align 8
  %14 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %8, align 8
  %16 = load %struct.vnode*, %struct.vnode** %8, align 8
  %17 = icmp eq %struct.vnode* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @KF_TYPE_DEV, align 4
  %20 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %21 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.vnode*, %struct.vnode** %8, align 8
  %24 = call i32 @vref(%struct.vnode* %23)
  %25 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %26 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %25)
  %27 = load %struct.vnode*, %struct.vnode** %8, align 8
  %28 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %29 = call i32 @vn_fill_kinfo_vnode(%struct.vnode* %27, %struct.kinfo_file* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.vnode*, %struct.vnode** %8, align 8
  %31 = call i32 @vrele(%struct.vnode* %30)
  %32 = load i32, i32* @KF_TYPE_VNODE, align 4
  %33 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %34 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %36 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %35)
  br label %37

37:                                               ; preds = %22, %18
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @vn_fill_kinfo_vnode(%struct.vnode*, %struct.kinfo_file*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
