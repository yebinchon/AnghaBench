; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_ioctl_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_ioctl_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32* }
%struct.file = type { i32 }
%struct.linux_file = type { i32 }
%struct.file_operations = type { i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)* }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@LINUX_IOCTL_MIN_PTR = common dso_local global i64 0, align 8
@EM_386 = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_HAS_READ = common dso_local global i32 0, align 4
@LINUX_KQ_FLAG_HAS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.linux_file*, %struct.file_operations*, i32, i32*, %struct.thread*)* @linux_file_ioctl_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_ioctl_sub(%struct.file* %0, %struct.linux_file* %1, %struct.file_operations* %2, i32 %3, i32* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.linux_file*, align 8
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.linux_file* %1, %struct.linux_file** %8, align 8
  store %struct.file_operations* %2, %struct.file_operations** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %16, %struct.task_struct** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @IOCPARM_LEN(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load i32*, i32** %11, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @LINUX_IOCTL_MIN_PTR, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %11, align 8
  br label %36

31:                                               ; preds = %6
  %32 = load i32*, i32** %11, align 8
  %33 = bitcast i32* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %11, align 8
  br label %36

36:                                               ; preds = %31, %21
  %37 = load %struct.thread*, %struct.thread** %12, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EM_386, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %36
  %45 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %46 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %45, i32 0, i32 1
  %47 = load i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.linux_file*, i32, i32)* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.file*, %struct.file** %7, align 8
  %51 = load %struct.thread*, %struct.thread** %12, align 8
  %52 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %53 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %52, i32 0, i32 1
  %54 = load i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)** %53, align 8
  %55 = load %struct.linux_file*, %struct.linux_file** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = ptrtoint i32* %57 to i32
  %59 = call i32 %54(%struct.linux_file* %55, i32 %56, i32 %58)
  %60 = call i32 @OPW(%struct.file* %50, %struct.thread* %51, i32 %59)
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %64

62:                                               ; preds = %44
  %63 = load i32, i32* @ENOTTY, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %62, %49
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @ENOTTY, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %70 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %69, i32 0, i32 0
  %71 = load i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.linux_file*, i32, i32)* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = load %struct.thread*, %struct.thread** %12, align 8
  %76 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %77 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %76, i32 0, i32 0
  %78 = load i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)** %77, align 8
  %79 = load %struct.linux_file*, %struct.linux_file** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 %78(%struct.linux_file* %79, i32 %80, i32 %82)
  %84 = call i32 @OPW(%struct.file* %74, %struct.thread* %75, i32 %83)
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %73, %68, %64
  br label %108

87:                                               ; preds = %36
  %88 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %89 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %88, i32 0, i32 0
  %90 = load i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)** %89, align 8
  %91 = icmp ne i32 (%struct.linux_file*, i32, i32)* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.file*, %struct.file** %7, align 8
  %94 = load %struct.thread*, %struct.thread** %12, align 8
  %95 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %96 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %95, i32 0, i32 0
  %97 = load i32 (%struct.linux_file*, i32, i32)*, i32 (%struct.linux_file*, i32, i32)** %96, align 8
  %98 = load %struct.linux_file*, %struct.linux_file** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = call i32 %97(%struct.linux_file* %98, i32 %99, i32 %101)
  %103 = call i32 @OPW(%struct.file* %93, %struct.thread* %94, i32 %102)
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %15, align 4
  br label %107

105:                                              ; preds = %87
  %106 = load i32, i32* @ENOTTY, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %105, %92
  br label %108

108:                                              ; preds = %107, %86
  %109 = load i32, i32* %14, align 4
  %110 = icmp ugt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %113 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  %114 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %115 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @EWOULDBLOCK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.linux_file*, %struct.linux_file** %8, align 8
  %122 = load i32, i32* @LINUX_KQ_FLAG_HAS_READ, align 4
  %123 = load i32, i32* @LINUX_KQ_FLAG_HAS_WRITE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @linux_file_kqfilter_poll(%struct.linux_file* %121, i32 %124)
  br label %130

126:                                              ; preds = %116
  %127 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @linux_get_error(%struct.task_struct* %127, i32 %128)
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %126, %120
  %131 = load i32, i32* %15, align 4
  ret i32 %131
}

declare dso_local i32 @IOCPARM_LEN(i32) #1

declare dso_local i32 @OPW(%struct.file*, %struct.thread*, i32) #1

declare dso_local i32 @linux_file_kqfilter_poll(%struct.linux_file*, i32) #1

declare dso_local i32 @linux_get_error(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
