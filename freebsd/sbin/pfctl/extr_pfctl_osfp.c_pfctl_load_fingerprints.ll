; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_load_fingerprints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_load_fingerprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_osfp_ioctl = type { i32 }

@classes = common dso_local global i32 0, align 4
@DIOCOSFPGET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"DIOCOSFPGET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_load_fingerprints(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_osfp_ioctl, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 @pfctl_flush_my_fingerprints(i32* @classes)
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = call i32 @memset(%struct.pf_osfp_ioctl* %6, i32 0, i32 4)
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DIOCOSFPGET, align 4
  %18 = call i64 @ioctl(i32 %16, i32 %17, %struct.pf_osfp_ioctl* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EBUSY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %32

25:                                               ; preds = %20
  %26 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %33

27:                                               ; preds = %12
  %28 = call i32 @import_fingerprint(%struct.pf_osfp_ioctl* %6)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %9

32:                                               ; preds = %24, %9
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @pfctl_flush_my_fingerprints(i32*) #1

declare dso_local i32 @memset(%struct.pf_osfp_ioctl*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pf_osfp_ioctl*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @import_fingerprint(%struct.pf_osfp_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
