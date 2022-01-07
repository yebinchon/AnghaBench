; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_get_diskinfo_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_get_diskinfo_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bdinfo = type { i32, i32, i32, i32, i64, i32 }
%struct.edd_params = type { i32, i32, i32, i32, i64, i64 }

@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BIOSDISK_SECSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdinfo*)* @bd_get_diskinfo_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_get_diskinfo_ext(%struct.bdinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdinfo*, align 8
  %4 = alloca %struct.edd_params, align 8
  %5 = alloca i32, align 4
  store %struct.bdinfo* %0, %struct.bdinfo** %3, align 8
  %6 = call i32 @bzero(%struct.edd_params* %4, i32 32)
  %7 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 0
  store i32 32, i32* %7, align 8
  %8 = load i32, i32* @V86_FLAGS, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 6), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 4
  store i32 18432, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %9 = load %struct.bdinfo*, %struct.bdinfo** %3, align 8
  %10 = getelementptr inbounds %struct.bdinfo, %struct.bdinfo* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 5), align 4
  %12 = call i32 @VTOPSEG(%struct.edd_params* %4)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 4), align 4
  %13 = call i32 @VTOPOFF(%struct.edd_params* %4)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %14 = call i32 (...) @v86int()
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 4
  %16 = call i64 @V86_CY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %20 = and i32 %19, 65280
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %18, %1
  %27 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 512
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 16384
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BIOSDISK_SECSIZE, align 4
  %38 = srem i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bdinfo*, %struct.bdinfo** %3, align 8
  %44 = getelementptr inbounds %struct.bdinfo, %struct.bdinfo* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %34, %30, %26
  %46 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bdinfo*, %struct.bdinfo** %3, align 8
  %49 = getelementptr inbounds %struct.bdinfo, %struct.bdinfo* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bdinfo*, %struct.bdinfo** %3, align 8
  %53 = getelementptr inbounds %struct.bdinfo, %struct.bdinfo* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bdinfo*, %struct.bdinfo** %3, align 8
  %57 = getelementptr inbounds %struct.bdinfo, %struct.bdinfo* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %75

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.edd_params, %struct.edd_params* %4, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %71, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %65, %61
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.bdinfo*, %struct.bdinfo** %3, align 8
  %78 = getelementptr inbounds %struct.bdinfo, %struct.bdinfo* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %22
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @bzero(%struct.edd_params*, i32) #1

declare dso_local i32 @VTOPSEG(%struct.edd_params*) #1

declare dso_local i32 @VTOPOFF(%struct.edd_params*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
