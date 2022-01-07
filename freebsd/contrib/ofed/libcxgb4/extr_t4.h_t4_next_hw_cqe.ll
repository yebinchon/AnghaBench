; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_next_hw_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_next_hw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i32, i64, i64, i32, %struct.t4_cqe*, i32 }
%struct.t4_cqe = type { i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cxgb4 cq overflow cqid %u\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cq*, %struct.t4_cqe**)* @t4_next_hw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_next_hw_cqe(%struct.t4_cq* %0, %struct.t4_cqe** %1) #0 {
  %3 = alloca %struct.t4_cq*, align 8
  %4 = alloca %struct.t4_cqe**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.t4_cq* %0, %struct.t4_cq** %3, align 8
  store %struct.t4_cqe** %1, %struct.t4_cqe*** %4, align 8
  %7 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %13 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %6, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %18 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %24 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %23, i32 0, i32 4
  %25 = load %struct.t4_cqe*, %struct.t4_cqe** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %25, i64 %26
  %28 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %31 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load i32, i32* @EOVERFLOW, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @LOG_NOTICE, align 4
  %38 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %39 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @syslog(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %43 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %42, i32 0, i32 3
  store i32 1, i32* %43, align 8
  %44 = call i32 @assert(i32 0)
  br label %72

45:                                               ; preds = %22
  %46 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %47 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %48 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %47, i32 0, i32 4
  %49 = load %struct.t4_cqe*, %struct.t4_cqe** %48, align 8
  %50 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %51 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %49, i64 %53
  %55 = call i64 @t4_valid_cqe(%struct.t4_cq* %46, %struct.t4_cqe* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %45
  %58 = call i32 (...) @udma_from_device_barrier()
  %59 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %60 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %59, i32 0, i32 4
  %61 = load %struct.t4_cqe*, %struct.t4_cqe** %60, align 8
  %62 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %63 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %61, i64 %65
  %67 = load %struct.t4_cqe**, %struct.t4_cqe*** %4, align 8
  store %struct.t4_cqe* %66, %struct.t4_cqe** %67, align 8
  store i32 0, i32* %5, align 4
  br label %71

68:                                               ; preds = %45
  %69 = load i32, i32* @ENODATA, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %57
  br label %72

72:                                               ; preds = %71, %34
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @t4_valid_cqe(%struct.t4_cq*, %struct.t4_cqe*) #1

declare dso_local i32 @udma_from_device_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
