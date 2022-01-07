; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.linux_file = type { i32, i32 }
%struct.file_operations = type { i32 (i32, %struct.linux_file*, i32)* }
%struct.linux_cdev = type { i32 }

@FASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @linux_file_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_ioctl(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.linux_file*, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca %struct.linux_cdev*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.linux_file*
  store %struct.linux_file* %18, %struct.linux_file** %11, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %23 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %25 = call i32 @linux_get_fop(%struct.linux_file* %24, %struct.file_operations** %12, %struct.linux_cdev** %13)
  %26 = load %struct.thread*, %struct.thread** %10, align 8
  %27 = call i32 @linux_set_current(%struct.thread* %26)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %88 [
    i32 129, label %29
    i32 131, label %30
    i32 128, label %51
    i32 130, label %82
  ]

29:                                               ; preds = %5
  br label %96

30:                                               ; preds = %5
  %31 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %32 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.linux_file*, i32)*, i32 (i32, %struct.linux_file*, i32)** %32, align 8
  %34 = icmp eq i32 (i32, %struct.linux_file*, i32)* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %96

36:                                               ; preds = %30
  %37 = load %struct.file*, %struct.file** %6, align 8
  %38 = load %struct.thread*, %struct.thread** %10, align 8
  %39 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %40 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %39, i32 0, i32 0
  %41 = load i32 (i32, %struct.linux_file*, i32)*, i32 (i32, %struct.linux_file*, i32)** %40, align 8
  %42 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %43 = load %struct.file*, %struct.file** %6, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FASYNC, align 4
  %47 = and i32 %45, %46
  %48 = call i32 %41(i32 0, %struct.linux_file* %42, i32 %47)
  %49 = call i32 @OPW(%struct.file* %37, %struct.thread* %38, i32 %48)
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %96

51:                                               ; preds = %5
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %56 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %55, i32 0, i32 1
  %57 = call i32 @fsetown(i32 %54, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %51
  %61 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %62 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %61, i32 0, i32 0
  %63 = load i32 (i32, %struct.linux_file*, i32)*, i32 (i32, %struct.linux_file*, i32)** %62, align 8
  %64 = icmp eq i32 (i32, %struct.linux_file*, i32)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %96

66:                                               ; preds = %60
  %67 = load %struct.file*, %struct.file** %6, align 8
  %68 = load %struct.thread*, %struct.thread** %10, align 8
  %69 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %70 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %69, i32 0, i32 0
  %71 = load i32 (i32, %struct.linux_file*, i32)*, i32 (i32, %struct.linux_file*, i32)** %70, align 8
  %72 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %73 = load %struct.file*, %struct.file** %6, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FASYNC, align 4
  %77 = and i32 %75, %76
  %78 = call i32 %71(i32 0, %struct.linux_file* %72, i32 %77)
  %79 = call i32 @OPW(%struct.file* %67, %struct.thread* %68, i32 %78)
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %66, %51
  br label %96

82:                                               ; preds = %5
  %83 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %84 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %83, i32 0, i32 1
  %85 = call i32 @fgetown(i32* %84)
  %86 = load i8*, i8** %8, align 8
  %87 = bitcast i8* %86 to i32*
  store i32 %85, i32* %87, align 4
  br label %96

88:                                               ; preds = %5
  %89 = load %struct.file*, %struct.file** %6, align 8
  %90 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %91 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.thread*, %struct.thread** %10, align 8
  %95 = call i32 @linux_file_ioctl_sub(%struct.file* %89, %struct.linux_file* %90, %struct.file_operations* %91, i32 %92, i8* %93, %struct.thread* %94)
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %88, %82, %81, %65, %36, %35, %29
  %97 = load %struct.linux_cdev*, %struct.linux_cdev** %13, align 8
  %98 = call i32 @linux_drop_fop(%struct.linux_cdev* %97)
  %99 = load i32, i32* %14, align 4
  ret i32 %99
}

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @OPW(%struct.file*, %struct.thread*, i32) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

declare dso_local i32 @linux_file_ioctl_sub(%struct.file*, %struct.linux_file*, %struct.file_operations*, i32, i8*, %struct.thread*) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
