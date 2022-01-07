; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdevinfo/extr_devinfo.c_devinfo_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdevinfo/extr_devinfo.c_devinfo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_i_dev = type { %struct.devinfo_i_dev*, %struct.devinfo_i_dev*, %struct.devinfo_i_dev*, %struct.devinfo_i_dev*, %struct.devinfo_i_dev* }
%struct.devinfo_i_rman = type { %struct.devinfo_i_rman*, %struct.devinfo_i_rman*, %struct.devinfo_i_rman*, %struct.devinfo_i_rman*, %struct.devinfo_i_rman* }
%struct.devinfo_i_res = type { %struct.devinfo_i_res*, %struct.devinfo_i_res*, %struct.devinfo_i_res*, %struct.devinfo_i_res*, %struct.devinfo_i_res* }

@devinfo_dev = common dso_local global i32 0, align 4
@dd_link = common dso_local global i32 0, align 4
@devinfo_rman = common dso_local global i32 0, align 4
@dm_link = common dso_local global i32 0, align 4
@devinfo_res = common dso_local global i32 0, align 4
@dr_link = common dso_local global i32 0, align 4
@devinfo_initted = common dso_local global i64 0, align 8
@devinfo_generation = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devinfo_free() #0 {
  %1 = alloca %struct.devinfo_i_dev*, align 8
  %2 = alloca %struct.devinfo_i_rman*, align 8
  %3 = alloca %struct.devinfo_i_res*, align 8
  br label %4

4:                                                ; preds = %8, %0
  %5 = call %struct.devinfo_i_rman* @TAILQ_FIRST(i32* @devinfo_dev)
  %6 = bitcast %struct.devinfo_i_rman* %5 to %struct.devinfo_i_dev*
  store %struct.devinfo_i_dev* %6, %struct.devinfo_i_dev** %1, align 8
  %7 = icmp ne %struct.devinfo_i_dev* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %10 = bitcast %struct.devinfo_i_dev* %9 to %struct.devinfo_i_rman*
  %11 = load i32, i32* @dd_link, align 4
  %12 = call i32 @TAILQ_REMOVE(i32* @devinfo_dev, %struct.devinfo_i_rman* %10, i32 %11)
  %13 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %14 = getelementptr inbounds %struct.devinfo_i_dev, %struct.devinfo_i_dev* %13, i32 0, i32 4
  %15 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %14, align 8
  %16 = bitcast %struct.devinfo_i_dev* %15 to %struct.devinfo_i_rman*
  %17 = call i32 @free(%struct.devinfo_i_rman* %16)
  %18 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %19 = getelementptr inbounds %struct.devinfo_i_dev, %struct.devinfo_i_dev* %18, i32 0, i32 3
  %20 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %19, align 8
  %21 = bitcast %struct.devinfo_i_dev* %20 to %struct.devinfo_i_rman*
  %22 = call i32 @free(%struct.devinfo_i_rman* %21)
  %23 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %24 = getelementptr inbounds %struct.devinfo_i_dev, %struct.devinfo_i_dev* %23, i32 0, i32 2
  %25 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %24, align 8
  %26 = bitcast %struct.devinfo_i_dev* %25 to %struct.devinfo_i_rman*
  %27 = call i32 @free(%struct.devinfo_i_rman* %26)
  %28 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %29 = getelementptr inbounds %struct.devinfo_i_dev, %struct.devinfo_i_dev* %28, i32 0, i32 1
  %30 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %29, align 8
  %31 = bitcast %struct.devinfo_i_dev* %30 to %struct.devinfo_i_rman*
  %32 = call i32 @free(%struct.devinfo_i_rman* %31)
  %33 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %34 = getelementptr inbounds %struct.devinfo_i_dev, %struct.devinfo_i_dev* %33, i32 0, i32 0
  %35 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %34, align 8
  %36 = bitcast %struct.devinfo_i_dev* %35 to %struct.devinfo_i_rman*
  %37 = call i32 @free(%struct.devinfo_i_rman* %36)
  %38 = load %struct.devinfo_i_dev*, %struct.devinfo_i_dev** %1, align 8
  %39 = bitcast %struct.devinfo_i_dev* %38 to %struct.devinfo_i_rman*
  %40 = call i32 @free(%struct.devinfo_i_rman* %39)
  br label %4

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %45, %41
  %43 = call %struct.devinfo_i_rman* @TAILQ_FIRST(i32* @devinfo_rman)
  store %struct.devinfo_i_rman* %43, %struct.devinfo_i_rman** %2, align 8
  %44 = icmp ne %struct.devinfo_i_rman* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.devinfo_i_rman*, %struct.devinfo_i_rman** %2, align 8
  %47 = load i32, i32* @dm_link, align 4
  %48 = call i32 @TAILQ_REMOVE(i32* @devinfo_rman, %struct.devinfo_i_rman* %46, i32 %47)
  %49 = load %struct.devinfo_i_rman*, %struct.devinfo_i_rman** %2, align 8
  %50 = call i32 @free(%struct.devinfo_i_rman* %49)
  br label %42

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %56, %51
  %53 = call %struct.devinfo_i_rman* @TAILQ_FIRST(i32* @devinfo_res)
  %54 = bitcast %struct.devinfo_i_rman* %53 to %struct.devinfo_i_res*
  store %struct.devinfo_i_res* %54, %struct.devinfo_i_res** %3, align 8
  %55 = icmp ne %struct.devinfo_i_res* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.devinfo_i_res*, %struct.devinfo_i_res** %3, align 8
  %58 = bitcast %struct.devinfo_i_res* %57 to %struct.devinfo_i_rman*
  %59 = load i32, i32* @dr_link, align 4
  %60 = call i32 @TAILQ_REMOVE(i32* @devinfo_res, %struct.devinfo_i_rman* %58, i32 %59)
  %61 = load %struct.devinfo_i_res*, %struct.devinfo_i_res** %3, align 8
  %62 = bitcast %struct.devinfo_i_res* %61 to %struct.devinfo_i_rman*
  %63 = call i32 @free(%struct.devinfo_i_rman* %62)
  br label %52

64:                                               ; preds = %52
  store i64 0, i64* @devinfo_initted, align 8
  store i64 0, i64* @devinfo_generation, align 8
  ret void
}

declare dso_local %struct.devinfo_i_rman* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.devinfo_i_rman*, i32) #1

declare dso_local i32 @free(%struct.devinfo_i_rman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
