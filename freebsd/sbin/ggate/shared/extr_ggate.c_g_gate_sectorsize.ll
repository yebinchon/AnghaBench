; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/shared/extr_ggate.c_g_gate_sectorsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/shared/extr_ggate.c_g_gate_sectorsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"fstat(): %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't get sector size: %s.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unsupported file system object.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_gate_sectorsize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @fstat(i32 %5, %struct.stat* %4)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @strerror(i32 %9)
  %11 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISCHR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %20 = call i32 @ioctl(i32 %18, i32 %19, i32* %3)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %36

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISREG(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 512, i32* %3, align 4
  br label %35

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %32
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @g_gate_xlog(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
