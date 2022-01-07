; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_freebsd32_machdep.c_freebsd32_sysarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_freebsd32_machdep.c_freebsd32_sysarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_sysarch_args = type { i32, i32 }
%struct.anon = type { i32, i32 }
%struct.anon.0 = type { i32, i32 }

@tpidr_el0 = common dso_local global i32 0, align 4
@tpidrro_el0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_sysarch(%struct.thread* %0, %struct.freebsd32_sysarch_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_sysarch_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.anon, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon.0, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_sysarch_args* %1, %struct.freebsd32_sysarch_args** %5, align 8
  %10 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %70 [
    i32 2, label %13
    i32 0, label %24
    i32 4, label %47
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @tpidr_el0, align 4
  %15 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %16 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @WRITE_SPECIALREG(i32 %14, i32 %17)
  %19 = load i32, i32* @tpidrro_el0, align 4
  %20 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %21 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @WRITE_SPECIALREG(i32 %19, i32 %22)
  store i32 0, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %26 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, ...) @copyin(i32 %27, %struct.anon* %7, i64 8)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %72

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %34, %36
  %38 = icmp ugt i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_icache_sync_range_checked(i32 %43, i32 %45)
  store i32 0, i32* %3, align 4
  br label %72

47:                                               ; preds = %2
  %48 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %49 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, ...) @copyin(i32 %50, %struct.anon.0* %9, i64 8)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 4
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %72

62:                                               ; preds = %55
  %63 = call i32 @bzero(i32* %8, i32 4)
  %64 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @copyout(i32* %8, i8* %67, i32 4)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %2
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %62, %60, %53, %41, %39, %30, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @WRITE_SPECIALREG(i32, i32) #1

declare dso_local i32 @copyin(i32, ...) #1

declare dso_local i32 @cpu_icache_sync_range_checked(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
