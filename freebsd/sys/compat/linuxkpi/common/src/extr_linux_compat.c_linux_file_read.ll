; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.uio = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.linux_file = type { i32 }
%struct.file_operations = type { i32 (%struct.linux_file*, i32*, i32, i32*)* }
%struct.linux_cdev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVFS_IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_HAS_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @linux_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.linux_file*, align 8
  %13 = alloca %struct.file_operations*, align 8
  %14 = alloca %struct.linux_cdev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.linux_file*
  store %struct.linux_file* %20, %struct.linux_file** %12, align 8
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.linux_file*, %struct.linux_file** %12, align 8
  %25 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.uio*, %struct.uio** %8, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %6, align 4
  br label %113

32:                                               ; preds = %5
  %33 = load %struct.uio*, %struct.uio** %8, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DEVFS_IOSIZE_MAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %113

40:                                               ; preds = %32
  %41 = load %struct.thread*, %struct.thread** %11, align 8
  %42 = call i32 @linux_set_current(%struct.thread* %41)
  %43 = load %struct.linux_file*, %struct.linux_file** %12, align 8
  %44 = call i32 @linux_get_fop(%struct.linux_file* %43, %struct.file_operations** %13, %struct.linux_cdev** %14)
  %45 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %46 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %45, i32 0, i32 0
  %47 = load i32 (%struct.linux_file*, i32*, i32, i32*)*, i32 (%struct.linux_file*, i32*, i32, i32*)** %46, align 8
  %48 = icmp ne i32 (%struct.linux_file*, i32*, i32, i32*)* %47, null
  br i1 %48, label %49, label %104

49:                                               ; preds = %40
  %50 = load %struct.file*, %struct.file** %7, align 8
  %51 = load %struct.thread*, %struct.thread** %11, align 8
  %52 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %53 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %52, i32 0, i32 0
  %54 = load i32 (%struct.linux_file*, i32*, i32, i32*)*, i32 (%struct.linux_file*, i32*, i32, i32*)** %53, align 8
  %55 = load %struct.linux_file*, %struct.linux_file** %12, align 8
  %56 = load %struct.uio*, %struct.uio** %8, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.uio*, %struct.uio** %8, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.uio*, %struct.uio** %8, align 8
  %67 = getelementptr inbounds %struct.uio, %struct.uio* %66, i32 0, i32 3
  %68 = call i32 %54(%struct.linux_file* %55, i32* %60, i32 %65, i32* %67)
  %69 = call i32 @OPW(%struct.file* %50, %struct.thread* %51, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %49
  %73 = load %struct.uio*, %struct.uio** %8, align 8
  %74 = getelementptr inbounds %struct.uio, %struct.uio* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.uio*, %struct.uio** %8, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32* %80, i32** %84, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.uio*, %struct.uio** %8, align 8
  %87 = getelementptr inbounds %struct.uio, %struct.uio* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, %85
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.uio*, %struct.uio** %8, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  br label %103

98:                                               ; preds = %49
  %99 = load i32, i32* @current, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32 @linux_get_error(i32 %99, i32 %101)
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %98, %72
  br label %106

104:                                              ; preds = %40
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = load %struct.linux_file*, %struct.linux_file** %12, align 8
  %108 = load i32, i32* @LINUX_KQ_FLAG_HAS_READ, align 4
  %109 = call i32 @linux_file_kqfilter_poll(%struct.linux_file* %107, i32 %108)
  %110 = load %struct.linux_cdev*, %struct.linux_cdev** %14, align 8
  %111 = call i32 @linux_drop_fop(%struct.linux_cdev* %110)
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %106, %38, %30
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @OPW(%struct.file*, %struct.thread*, i32) #1

declare dso_local i32 @linux_get_error(i32, i32) #1

declare dso_local i32 @linux_file_kqfilter_poll(%struct.linux_file*, i32) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
