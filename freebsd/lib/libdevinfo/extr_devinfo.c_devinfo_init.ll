; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdevinfo/extr_devinfo.c_devinfo_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdevinfo/extr_devinfo.c_devinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u_businfo = type { i64, i32 }

@devinfo_initted = common dso_local global i32 0, align 4
@devinfo_dev = common dso_local global i32 0, align 4
@devinfo_rman = common dso_local global i32 0, align 4
@devinfo_res = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"get interface version\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hw.bus.info\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"sysctlbyname(\22hw.bus.info\22, ...) failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BUS_USER_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"kernel bus interface version mismatch: kernel %d expected %d\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"generation count is %d\00", align 1
@devinfo_generation = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"scan failed after %d retries\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devinfo_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.u_businfo, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @devinfo_initted, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i32 @TAILQ_INIT(i32* @devinfo_dev)
  %10 = call i32 @TAILQ_INIT(i32* @devinfo_rman)
  %11 = call i32 @TAILQ_INIT(i32* @devinfo_res)
  br label %12

12:                                               ; preds = %8, %0
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %78, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %81

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 16, i64* %3, align 8
  %18 = call i64 @sysctlbyname(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.u_businfo* %2, i64* %3, i32* null, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %1, align 4
  br label %85

23:                                               ; preds = %16
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 16
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BUS_USER_VERSION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %23
  %32 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BUS_USER_VERSION, align 8
  %35 = call i32 @warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %33, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %1, align 4
  br label %85

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @devinfo_generation, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %85

47:                                               ; preds = %37
  %48 = call i32 (...) @devinfo_free()
  store i32 0, i32* @devinfo_initted, align 4
  store i64 0, i64* @devinfo_generation, align 8
  %49 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = call i32 @devinfo_init_devices(i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = call i32 (...) @devinfo_free()
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %78

60:                                               ; preds = %54
  br label %81

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = call i32 @devinfo_init_resources(i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = call i32 (...) @devinfo_free()
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @EINVAL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %78

73:                                               ; preds = %67
  br label %81

74:                                               ; preds = %61
  store i32 1, i32* @devinfo_initted, align 4
  %75 = getelementptr inbounds %struct.u_businfo, %struct.u_businfo* %2, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  store i64 %77, i64* @devinfo_generation, align 8
  store i32 0, i32* %1, align 4
  br label %85

78:                                               ; preds = %72, %59
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %13

81:                                               ; preds = %73, %60, %13
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* @errno, align 4
  store i32 1, i32* %1, align 4
  br label %85

85:                                               ; preds = %81, %74, %46, %31, %20
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i64 @sysctlbyname(i8*, %struct.u_businfo*, i64*, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @warnx(i8*, i64, i64) #1

declare dso_local i32 @devinfo_free(...) #1

declare dso_local i32 @devinfo_init_devices(i64) #1

declare dso_local i32 @devinfo_init_resources(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
