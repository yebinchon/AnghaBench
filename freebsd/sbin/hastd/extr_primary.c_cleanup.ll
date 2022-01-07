; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_primary.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_primary.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32, i32 }
%struct.g_gate_ctl_destroy = type { i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@G_GATE_VERSION = common dso_local global i32 0, align 4
@G_GATE_CMD_DESTROY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to destroy hast/%s device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hast_resource*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.hast_resource* %0) #0 {
  %2 = alloca %struct.hast_resource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_gate_ctl_destroy, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %2, align 8
  %5 = load i32, i32* @errno, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %7 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = call i32 @bzero(%struct.g_gate_ctl_destroy* %4, i32 12)
  %12 = load i32, i32* @G_GATE_VERSION, align 4
  %13 = getelementptr inbounds %struct.g_gate_ctl_destroy, %struct.g_gate_ctl_destroy* %4, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %15 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.g_gate_ctl_destroy, %struct.g_gate_ctl_destroy* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.g_gate_ctl_destroy, %struct.g_gate_ctl_destroy* %4, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %20 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @G_GATE_CMD_DESTROY, align 4
  %23 = call i32 @ioctl(i32 %21, i32 %22, %struct.g_gate_ctl_destroy* %4)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %10
  %26 = load i32, i32* @LOG_WARNING, align 4
  %27 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %28 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pjdlog_errno(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %10
  %32 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %33 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* @errno, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.g_gate_ctl_destroy*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.g_gate_ctl_destroy*) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
