; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_get_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_get_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_pool = type { i32 }
%struct.pfioc_pooladdr = type { i32, i64, i32, i64, i64, i32 }
%struct.pf_pooladdr = type { i32 }

@DIOCGETADDRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DIOCGETADDRS\00", align 1
@DIOCGETADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"DIOCGETADDR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_get_pool(i32 %0, %struct.pf_pool* %1, i64 %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pf_pool*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pfioc_pooladdr, align 8
  %15 = alloca %struct.pf_pooladdr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.pf_pool* %1, %struct.pf_pool** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = call i32 @memset(%struct.pfioc_pooladdr* %14, i32 0, i32 48)
  %19 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = call i32 @memcpy(i32 %20, i8* %21, i32 4)
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 4
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DIOCGETADDRS, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, %struct.pfioc_pooladdr* %14)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %73

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %17, align 8
  %38 = load %struct.pf_pool*, %struct.pf_pool** %9, align 8
  %39 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %38, i32 0, i32 0
  %40 = call i32 @TAILQ_INIT(i32* %39)
  store i64 0, i64* %16, align 8
  br label %41

41:                                               ; preds = %69, %35
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DIOCGETADDR, align 4
  %50 = call i64 @ioctl(i32 %48, i32 %49, %struct.pfioc_pooladdr* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %73

54:                                               ; preds = %45
  %55 = call %struct.pf_pooladdr* @calloc(i32 1, i32 4)
  store %struct.pf_pooladdr* %55, %struct.pf_pooladdr** %15, align 8
  %56 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %15, align 8
  %57 = icmp eq %struct.pf_pooladdr* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.pfioc_pooladdr, %struct.pfioc_pooladdr* %14, i32 0, i32 2
  %62 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %15, align 8
  %63 = call i32 @bcopy(i32* %61, %struct.pf_pooladdr* %62, i32 4)
  %64 = load %struct.pf_pool*, %struct.pf_pool** %9, align 8
  %65 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %64, i32 0, i32 0
  %66 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %15, align 8
  %67 = load i32, i32* @entries, align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(i32* %65, %struct.pf_pooladdr* %66, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %16, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %16, align 8
  br label %41

72:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %52, %33
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @memset(%struct.pfioc_pooladdr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_pooladdr*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.pf_pooladdr* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, %struct.pf_pooladdr*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pf_pooladdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
