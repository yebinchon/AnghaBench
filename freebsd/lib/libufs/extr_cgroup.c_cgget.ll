; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_cgroup.c_cgget.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_cgroup.c_cgget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, %struct.fs }
%struct.fs = type { i32, i32 }
%struct.cg = type { i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"unable to read cylinder group\00", align 1
@CK_CYLGRP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cylinder group checks failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgget(%struct.uufsd* %0, i32 %1, %struct.cg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uufsd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cg*, align 8
  %8 = alloca %struct.fs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.uufsd* %0, %struct.uufsd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cg* %2, %struct.cg** %7, align 8
  %11 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %12 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %11, i32 0, i32 1
  store %struct.fs* %12, %struct.fs** %8, align 8
  %13 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %14 = load %struct.fs*, %struct.fs** %8, align 8
  %15 = load %struct.fs*, %struct.fs** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cgtod(%struct.fs* %15, i32 %16)
  %18 = call i32 @fsbtodb(%struct.fs* %14, i32 %17)
  %19 = load %struct.cg*, %struct.cg** %7, align 8
  %20 = bitcast %struct.cg* %19 to i8*
  %21 = load %struct.fs*, %struct.fs** %8, align 8
  %22 = getelementptr inbounds %struct.fs, %struct.fs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bread(%struct.uufsd* %13, i32 %18, i8* %20, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %28 = call i32 @ERROR(%struct.uufsd* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %78

29:                                               ; preds = %3
  %30 = load %struct.cg*, %struct.cg** %7, align 8
  %31 = getelementptr inbounds %struct.cg, %struct.cg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.fs*, %struct.fs** %8, align 8
  %34 = getelementptr inbounds %struct.fs, %struct.fs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CK_CYLGRP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %29
  %40 = load %struct.cg*, %struct.cg** %7, align 8
  %41 = getelementptr inbounds %struct.cg, %struct.cg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.cg*, %struct.cg** %7, align 8
  %44 = getelementptr inbounds %struct.cg, %struct.cg* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.cg*, %struct.cg** %7, align 8
  %46 = bitcast %struct.cg* %45 to i8*
  %47 = load %struct.fs*, %struct.fs** %8, align 8
  %48 = getelementptr inbounds %struct.fs, %struct.fs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @calculate_crc32c(i64 -1, i8* %46, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.cg*, %struct.cg** %7, align 8
  %53 = getelementptr inbounds %struct.cg, %struct.cg* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %39, %29
  %55 = load %struct.cg*, %struct.cg** %7, align 8
  %56 = getelementptr inbounds %struct.cg, %struct.cg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load %struct.cg*, %struct.cg** %7, align 8
  %62 = call i32 @cg_chkmagic(%struct.cg* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.cg*, %struct.cg** %7, align 8
  %66 = getelementptr inbounds %struct.cg, %struct.cg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %60, %54
  %71 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %72 = call i32 @ERROR(%struct.uufsd* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  store i32 %73, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %77 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %70, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @bread(%struct.uufsd*, i32, i8*, i32) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

declare dso_local i32 @cgtod(%struct.fs*, i32) #1

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i64 @calculate_crc32c(i64, i8*, i32) #1

declare dso_local i32 @cg_chkmagic(%struct.cg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
