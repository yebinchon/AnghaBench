; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_ioctl.c_freebsd32_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_ioctl.c_freebsd32_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_ioctl_args = type { i32, i32 }
%struct.ioctl_args = type { i32, i32 }
%struct.file = type { i32 }

@CAP_IOCTL = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_ioctl(%struct.thread* %0, %struct.freebsd32_ioctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_ioctl_args*, align 8
  %6 = alloca %struct.ioctl_args, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_ioctl_args* %1, %struct.freebsd32_ioctl_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.freebsd32_ioctl_args, %struct.freebsd32_ioctl_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CAP_IOCTL, align 4
  %15 = call i32 @cap_rights_init(i32* %8, i32 %14)
  %16 = call i32 @fget(%struct.thread* %10, i32 %13, i32 %15, %struct.file** %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FREAD, align 4
  %26 = load i32, i32* @FWRITE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @fdrop(%struct.file* %31, %struct.thread* %32)
  %34 = load i32, i32* @EBADF, align 4
  store i32 %34, i32* %3, align 4
  br label %80

35:                                               ; preds = %21
  %36 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %37 = getelementptr inbounds %struct.freebsd32_ioctl_args, %struct.freebsd32_ioctl_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %54 [
    i32 131, label %39
    i32 130, label %39
    i32 128, label %44
    i32 129, label %49
  ]

39:                                               ; preds = %35, %35
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = call i32 @freebsd32_ioctl_memrange(%struct.thread* %40, %struct.freebsd32_ioctl_args* %41, %struct.file* %42)
  store i32 %43, i32* %9, align 4
  br label %75

44:                                               ; preds = %35
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %47 = load %struct.file*, %struct.file** %7, align 8
  %48 = call i32 @freebsd32_ioctl_sg(%struct.thread* %45, %struct.freebsd32_ioctl_args* %46, %struct.file* %47)
  store i32 %48, i32* %9, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = call i32 @freebsd32_ioctl_barmmap(%struct.thread* %50, %struct.freebsd32_ioctl_args* %51, %struct.file* %52)
  store i32 %53, i32* %9, align 4
  br label %75

54:                                               ; preds = %35
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = call i32 @fdrop(%struct.file* %55, %struct.thread* %56)
  %58 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %59 = getelementptr inbounds %struct.freebsd32_ioctl_args, %struct.freebsd32_ioctl_args* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ioctl_args, %struct.ioctl_args* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %63 = getelementptr inbounds %struct.freebsd32_ioctl_args, %struct.freebsd32_ioctl_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.ioctl_args, %struct.ioctl_args* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.freebsd32_ioctl_args*, %struct.freebsd32_ioctl_args** %5, align 8
  %67 = load i32, i32* @data, align 4
  %68 = bitcast %struct.freebsd32_ioctl_args* %66 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = bitcast %struct.ioctl_args* %6 to i64*
  %71 = load i64, i64* %70, align 4
  %72 = call i32 @PTRIN_CP(i64 %69, i64 %71, i32 %67)
  %73 = load %struct.thread*, %struct.thread** %4, align 8
  %74 = call i32 @sys_ioctl(%struct.thread* %73, %struct.ioctl_args* %6)
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %49, %44, %39
  %76 = load %struct.file*, %struct.file** %7, align 8
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = call i32 @fdrop(%struct.file* %76, %struct.thread* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %54, %30, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @freebsd32_ioctl_memrange(%struct.thread*, %struct.freebsd32_ioctl_args*, %struct.file*) #1

declare dso_local i32 @freebsd32_ioctl_sg(%struct.thread*, %struct.freebsd32_ioctl_args*, %struct.file*) #1

declare dso_local i32 @freebsd32_ioctl_barmmap(%struct.thread*, %struct.freebsd32_ioctl_args*, %struct.file*) #1

declare dso_local i32 @PTRIN_CP(i64, i64, i32) #1

declare dso_local i32 @sys_ioctl(%struct.thread*, %struct.ioctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
