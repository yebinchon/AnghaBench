; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx_linux.c_sgx_linux_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx_linux.c_sgx_linux_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ioctl_args = type { i32, i64, i32 }
%struct.file = type { i32 }

@SGX_IOCTL_MAX_DATA_LEN = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@LINUX_IOC_IN = common dso_local global i32 0, align 4
@LINUX_IOC_OUT = common dso_local global i32 0, align 4
@IOC_IN = common dso_local global i32 0, align 4
@IOC_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.linux_ioctl_args*)* @sgx_linux_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_linux_ioctl(%struct.thread* %0, %struct.linux_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ioctl_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ioctl_args* %1, %struct.linux_ioctl_args** %5, align 8
  %14 = load i32, i32* @SGX_IOCTL_MAX_DATA_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CAP_IOCTL, align 4
  %23 = call i32 @cap_rights_init(i32* %8, i32 %22)
  %24 = call i32 @fget(%struct.thread* %18, i32 %21, i32 %23, %struct.file** %9)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

29:                                               ; preds = %2
  %30 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %31 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @LINUX_IOC_IN, align 4
  %34 = load i32, i32* @LINUX_IOC_OUT, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @LINUX_IOC_IN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %29
  %46 = load i32, i32* @IOC_IN, align 4
  %47 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %48 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %29
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @LINUX_IOC_OUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @IOC_OUT, align 4
  %58 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %59 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @IOCPARM_LEN(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @SGX_IOCTL_MAX_DATA_LEN, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %11, align 4
  br label %97

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @LINUX_IOC_IN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %77 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @copyin(i8* %79, i32* %17, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %97

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %70
  %87 = load %struct.file*, %struct.file** %9, align 8
  %88 = load %struct.linux_ioctl_args*, %struct.linux_ioctl_args** %5, align 8
  %89 = getelementptr inbounds %struct.linux_ioctl_args, %struct.linux_ioctl_args* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = ptrtoint i32* %17 to i32
  %92 = load %struct.thread*, %struct.thread** %4, align 8
  %93 = getelementptr inbounds %struct.thread, %struct.thread* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.thread*, %struct.thread** %4, align 8
  %96 = call i32 @fo_ioctl(%struct.file* %87, i32 %90, i32 %91, i32 %94, %struct.thread* %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %86, %84, %68
  %98 = load %struct.file*, %struct.file** %9, align 8
  %99 = load %struct.thread*, %struct.thread** %4, align 8
  %100 = call i32 @fdrop(%struct.file* %98, %struct.thread* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %97, %27
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #2

declare dso_local i32 @cap_rights_init(i32*, i32) #2

declare dso_local i32 @IOCPARM_LEN(i32) #2

declare dso_local i32 @copyin(i8*, i32*, i32) #2

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i32, i32, %struct.thread*) #2

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
