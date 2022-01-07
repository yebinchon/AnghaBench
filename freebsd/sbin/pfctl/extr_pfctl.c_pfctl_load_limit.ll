; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.pfioc_limit = type { i32, i32 }

@DIOCSETLIMIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Current pool size exceeds requested hard limit\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DIOCSETLIMIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_load_limit(%struct.pfctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfioc_limit, align 4
  store %struct.pfctl* %0, %struct.pfctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @memset(%struct.pfioc_limit* %8, i32 0, i32 8)
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.pfioc_limit, %struct.pfioc_limit* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %15 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DIOCSETLIMIT, align 4
  %18 = call i64 @ioctl(i32 %16, i32 %17, %struct.pfioc_limit* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EBUSY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %28

26:                                               ; preds = %20
  %27 = call i32 @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.pfioc_limit*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_limit*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
