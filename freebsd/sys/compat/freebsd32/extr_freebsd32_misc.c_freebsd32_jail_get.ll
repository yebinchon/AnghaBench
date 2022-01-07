; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_jail_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_jail_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_jail_get_args = type { i32, i64, i32 }
%struct.iovec32 = type { i32 }
%struct.uio = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@iov_base = common dso_local global i32 0, align 4
@iov_len = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_jail_get(%struct.thread* %0, %struct.freebsd32_jail_get_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_jail_get_args*, align 8
  %6 = alloca %struct.iovec32, align 4
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_jail_get_args* %1, %struct.freebsd32_jail_get_args** %5, align 8
  %10 = load %struct.freebsd32_jail_get_args*, %struct.freebsd32_jail_get_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_jail_get_args, %struct.freebsd32_jail_get_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.freebsd32_jail_get_args*, %struct.freebsd32_jail_get_args** %5, align 8
  %19 = getelementptr inbounds %struct.freebsd32_jail_get_args, %struct.freebsd32_jail_get_args* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.freebsd32_jail_get_args*, %struct.freebsd32_jail_get_args** %5, align 8
  %22 = getelementptr inbounds %struct.freebsd32_jail_get_args, %struct.freebsd32_jail_get_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @freebsd32_copyinuio(i64 %20, i32 %23, %struct.uio** %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %17
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = load %struct.uio*, %struct.uio** %7, align 8
  %32 = load %struct.freebsd32_jail_get_args*, %struct.freebsd32_jail_get_args** %5, align 8
  %33 = getelementptr inbounds %struct.freebsd32_jail_get_args, %struct.freebsd32_jail_get_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kern_jail_get(%struct.thread* %30, %struct.uio* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %79, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.freebsd32_jail_get_args*, %struct.freebsd32_jail_get_args** %5, align 8
  %42 = getelementptr inbounds %struct.freebsd32_jail_get_args, %struct.freebsd32_jail_get_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %39
  %46 = load %struct.uio*, %struct.uio** %7, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @iov_base, align 4
  %54 = getelementptr inbounds %struct.iovec32, %struct.iovec32* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTROUT_CP(i32 %52, i32 %55, i32 %53)
  %57 = load %struct.uio*, %struct.uio** %7, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @iov_len, align 4
  %65 = getelementptr inbounds %struct.iovec32, %struct.iovec32* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CP(i32 %63, i32 %66, i32 %64)
  %68 = load %struct.freebsd32_jail_get_args*, %struct.freebsd32_jail_get_args** %5, align 8
  %69 = getelementptr inbounds %struct.freebsd32_jail_get_args, %struct.freebsd32_jail_get_args* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @copyout(%struct.iovec32* %6, i64 %73, i32 4)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %45
  br label %82

78:                                               ; preds = %45
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %39

82:                                               ; preds = %77, %39
  br label %83

83:                                               ; preds = %82, %29
  %84 = load %struct.uio*, %struct.uio** %7, align 8
  %85 = load i32, i32* @M_IOV, align 4
  %86 = call i32 @free(%struct.uio* %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %27, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @freebsd32_copyinuio(i64, i32, %struct.uio**) #1

declare dso_local i32 @kern_jail_get(%struct.thread*, %struct.uio*, i32) #1

declare dso_local i32 @PTROUT_CP(i32, i32, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @copyout(%struct.iovec32*, i64, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
