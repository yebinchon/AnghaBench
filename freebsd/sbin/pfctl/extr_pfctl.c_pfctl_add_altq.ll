; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_add_altq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_add_altq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pf_altq = type { i32 }

@altqsupport = common dso_local global i64 0, align 8
@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_ALTQ = common dso_local global i32 0, align 4
@PF_OPT_NOACTION = common dso_local global i32 0, align 4
@DIOCADDALTQ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"qtype not configured\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: driver does not support altq\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DIOCADDALTQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_add_altq(%struct.pfctl* %0, %struct.pf_altq* %1) #0 {
  %3 = alloca %struct.pfctl*, align 8
  %4 = alloca %struct.pf_altq*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %3, align 8
  store %struct.pf_altq* %1, %struct.pf_altq** %4, align 8
  %5 = load i64, i64* @altqsupport, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %2
  %8 = load i32, i32* @loadopt, align 4
  %9 = load i32, i32* @PFCTL_FLAG_ALTQ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %7
  %13 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %14 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.pf_altq* %17, i32 4)
  %19 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %20 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PF_OPT_NOACTION, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %12
  %26 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %27 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DIOCADDALTQ, align 4
  %30 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %31 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i64 @ioctl(i32 %28, i32 %29, %struct.TYPE_2__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %25
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENXIO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %53

41:                                               ; preds = %35
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ENODEV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %47 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %52

50:                                               ; preds = %41
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54, %12
  %56 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %57 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @pfaltq_store(i32* %59)
  br label %61

61:                                               ; preds = %55, %7, %2
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, %struct.pf_altq*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pfaltq_store(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
