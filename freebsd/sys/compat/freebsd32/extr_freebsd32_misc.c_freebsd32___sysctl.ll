; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32___sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32___sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32___sysctl_args = type { i32, i64, i32, i32, i32, i32 }

@CTL_MAXNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SCTL_MASK32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32___sysctl(%struct.thread* %0, %struct.freebsd32___sysctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32___sysctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32___sysctl_args* %1, %struct.freebsd32___sysctl_args** %5, align 8
  %13 = load i32, i32* @CTL_MAXNAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %18 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CTL_MAXNAME, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %24 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

29:                                               ; preds = %22
  %30 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %31 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %34 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @copyin(i32 %32, i32* %16, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

44:                                               ; preds = %29
  %45 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %46 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %51 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @fueword32(i64 %52, i64* %11)
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %10, align 8
  br label %56

55:                                               ; preds = %44
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EFAULT, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

61:                                               ; preds = %56
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %64 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %67 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %70 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %73 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SCTL_MASK32, align 4
  %76 = call i32 @userland_sysctl(%struct.thread* %62, i32* %16, i32 %65, i32 %68, i64* %10, i32 1, i32 %71, i32 %74, i64* %9, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

81:                                               ; preds = %61
  %82 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %83 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.freebsd32___sysctl_args*, %struct.freebsd32___sysctl_args** %5, align 8
  %88 = getelementptr inbounds %struct.freebsd32___sysctl_args, %struct.freebsd32___sysctl_args* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @suword32(i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %86, %81
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %79, %59, %42, %27
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyin(i32, i32*, i32) #2

declare dso_local i32 @fueword32(i64, i64*) #2

declare dso_local i32 @userland_sysctl(%struct.thread*, i32*, i32, i32, i64*, i32, i32, i32, i64*, i32) #2

declare dso_local i32 @suword32(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
