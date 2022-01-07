; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_apply_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_apply_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32 }
%struct.config_file = type { i64, i64, i32*, i64, i64 }

@verbosity = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"use-systemd and do-daemonize should not be enabled at the same time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon*, %struct.config_file*, i32, i32, i8*)* @apply_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_settings(%struct.daemon* %0, %struct.config_file* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.daemon*, align 8
  %7 = alloca %struct.config_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.daemon* %0, %struct.daemon** %6, align 8
  store %struct.config_file* %1, %struct.config_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.config_file*, %struct.config_file** %7, align 8
  %14 = getelementptr inbounds %struct.config_file, %struct.config_file* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* @verbosity, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load %struct.config_file*, %struct.config_file** %7, align 8
  %21 = getelementptr inbounds %struct.config_file, %struct.config_file* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.config_file*, %struct.config_file** %7, align 8
  %23 = getelementptr inbounds %struct.config_file, %struct.config_file* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.config_file*, %struct.config_file** %7, align 8
  %27 = getelementptr inbounds %struct.config_file, %struct.config_file* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %19, %5
  %29 = load %struct.daemon*, %struct.daemon** %6, align 8
  %30 = load %struct.config_file*, %struct.config_file** %7, align 8
  %31 = call i32 @daemon_apply_cfg(%struct.daemon* %29, %struct.config_file* %30)
  %32 = load %struct.config_file*, %struct.config_file** %7, align 8
  %33 = call i32 @checkrlimits(%struct.config_file* %32)
  %34 = load %struct.config_file*, %struct.config_file** %7, align 8
  %35 = getelementptr inbounds %struct.config_file, %struct.config_file* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.config_file*, %struct.config_file** %7, align 8
  %40 = getelementptr inbounds %struct.config_file, %struct.config_file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @log_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38, %28
  %46 = load %struct.config_file*, %struct.config_file** %7, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @log_ident_set_fromdefault(%struct.config_file* %46, i8* %47)
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @daemon_apply_cfg(%struct.daemon*, %struct.config_file*) #1

declare dso_local i32 @checkrlimits(%struct.config_file*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @log_ident_set_fromdefault(%struct.config_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
