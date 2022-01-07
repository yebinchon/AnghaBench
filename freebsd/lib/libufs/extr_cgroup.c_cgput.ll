; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_cgroup.c_cgput.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_cgroup.c_cgput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { %struct.fs }
%struct.fs = type { i32, i32 }
%struct.cg = type { i32, i32 }

@CK_CYLGRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to write cylinder group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgput(%struct.uufsd* %0, %struct.cg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uufsd*, align 8
  %5 = alloca %struct.cg*, align 8
  %6 = alloca %struct.fs*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %4, align 8
  store %struct.cg* %1, %struct.cg** %5, align 8
  %7 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %8 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %7, i32 0, i32 0
  store %struct.fs* %8, %struct.fs** %6, align 8
  %9 = load %struct.fs*, %struct.fs** %6, align 8
  %10 = getelementptr inbounds %struct.fs, %struct.fs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CK_CYLGRP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.cg*, %struct.cg** %5, align 8
  %17 = getelementptr inbounds %struct.cg, %struct.cg* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.cg*, %struct.cg** %5, align 8
  %19 = bitcast %struct.cg* %18 to i8*
  %20 = load %struct.fs*, %struct.fs** %6, align 8
  %21 = getelementptr inbounds %struct.fs, %struct.fs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @calculate_crc32c(i64 -1, i8* %19, i32 %22)
  %24 = load %struct.cg*, %struct.cg** %5, align 8
  %25 = getelementptr inbounds %struct.cg, %struct.cg* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %28 = load %struct.fs*, %struct.fs** %6, align 8
  %29 = load %struct.fs*, %struct.fs** %6, align 8
  %30 = load %struct.cg*, %struct.cg** %5, align 8
  %31 = getelementptr inbounds %struct.cg, %struct.cg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cgtod(%struct.fs* %29, i32 %32)
  %34 = call i32 @fsbtodb(%struct.fs* %28, i32 %33)
  %35 = load %struct.cg*, %struct.cg** %5, align 8
  %36 = load %struct.fs*, %struct.fs** %6, align 8
  %37 = getelementptr inbounds %struct.fs, %struct.fs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bwrite(%struct.uufsd* %27, i32 %34, %struct.cg* %35, i32 %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %43 = call i32 @ERROR(%struct.uufsd* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @calculate_crc32c(i64, i8*, i32) #1

declare dso_local i32 @bwrite(%struct.uufsd*, i32, %struct.cg*, i32) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

declare dso_local i32 @cgtod(%struct.fs*, i32) #1

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
