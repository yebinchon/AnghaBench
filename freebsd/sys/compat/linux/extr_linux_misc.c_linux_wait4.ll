; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_wait4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_wait4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_wait4_args = type { i32, i32*, i32, i32 }
%struct.__wrusage = type { i32 }

@LINUX_WUNTRACED = common dso_local global i32 0, align 4
@LINUX_WNOHANG = common dso_local global i32 0, align 4
@LINUX_WCONTINUED = common dso_local global i32 0, align 4
@__WCLONE = common dso_local global i32 0, align 4
@__WNOTHREAD = common dso_local global i32 0, align 4
@__WALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_wait4(%struct.thread* %0, %struct.linux_wait4_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_wait4_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.__wrusage, align 4
  %9 = alloca %struct.__wrusage*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_wait4_args* %1, %struct.linux_wait4_args** %5, align 8
  %10 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LINUX_WUNTRACED, align 4
  %14 = load i32, i32* @LINUX_WNOHANG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LINUX_WCONTINUED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @__WCLONE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @__WNOTHREAD, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @__WALL, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %12, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %2
  %30 = load i32, i32* @WEXITED, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %32 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @linux_to_bsd_waitopts(i32 %33, i32* %7)
  %35 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %36 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store %struct.__wrusage* %8, %struct.__wrusage** %9, align 8
  br label %41

40:                                               ; preds = %29
  store %struct.__wrusage* null, %struct.__wrusage** %9, align 8
  br label %41

41:                                               ; preds = %40, %39
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.__wrusage*, %struct.__wrusage** %9, align 8
  %51 = call i32 @linux_common_wait(%struct.thread* %42, i32 %45, i32 %48, i32 %49, %struct.__wrusage* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %41
  %57 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %58 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.__wrusage, %struct.__wrusage* %8, i32 0, i32 0
  %63 = load %struct.linux_wait4_args*, %struct.linux_wait4_args** %5, align 8
  %64 = getelementptr inbounds %struct.linux_wait4_args, %struct.linux_wait4_args* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @linux_copyout_rusage(i32* %62, i32* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %54, %27
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @linux_to_bsd_waitopts(i32, i32*) #1

declare dso_local i32 @linux_common_wait(%struct.thread*, i32, i32, i32, %struct.__wrusage*) #1

declare dso_local i32 @linux_copyout_rusage(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
