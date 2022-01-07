; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_translate_fd_major_minor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_translate_fd_major_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.stat = type { i32, i32 }
%struct.file = type { i64, %struct.tty*, %struct.vnode* }
%struct.tty = type { i32* }
%struct.vnode = type { i32* }

@cap_no_rights = common dso_local global i32 0, align 4
@DTYPE_PTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32, %struct.stat*)* @translate_fd_major_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate_fd_major_minor(%struct.thread* %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.stat* %2, %struct.stat** %6, align 8
  %12 = load %struct.stat*, %struct.stat** %6, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S_ISCHR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.stat*, %struct.stat** %6, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISBLK(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %3
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @fget(%struct.thread* %24, i32 %25, i32* @cap_no_rights, %struct.file** %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %17
  br label %83

29:                                               ; preds = %23
  %30 = load %struct.file*, %struct.file** %7, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 2
  %32 = load %struct.vnode*, %struct.vnode** %31, align 8
  store %struct.vnode* %32, %struct.vnode** %8, align 8
  %33 = load %struct.vnode*, %struct.vnode** %8, align 8
  %34 = icmp ne %struct.vnode* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.vnode*, %struct.vnode** %8, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.vnode*, %struct.vnode** %8, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @devtoname(i32* %43)
  %45 = call i64 @linux_driver_get_major_minor(i32 %44, i32* %9, i32* %10)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.stat*, %struct.stat** %6, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %79

54:                                               ; preds = %40, %35, %29
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DTYPE_PTS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.file*, %struct.file** %7, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 1
  %63 = load %struct.tty*, %struct.tty** %62, align 8
  store %struct.tty* %63, %struct.tty** %11, align 8
  %64 = load %struct.tty*, %struct.tty** %11, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @devtoname(i32* %66)
  %68 = call i64 @linux_driver_get_major_minor(i32 %67, i32* %9, i32* %10)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.stat*, %struct.stat** %6, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %60
  br label %78

78:                                               ; preds = %77, %54
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.file*, %struct.file** %7, align 8
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = call i32 @fdrop(%struct.file* %80, %struct.thread* %81)
  br label %83

83:                                               ; preds = %79, %28
  ret void
}

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i64 @linux_driver_get_major_minor(i32, i32*, i32*) #1

declare dso_local i32 @devtoname(i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
