; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_rew.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_rew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32 }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"113|No previous files to rewind\00", align 1
@E_C_FORCE = common dso_local global i32 0, align 4
@FS_ALL = common dso_local global i32 0, align 4
@FS_POSSIBLE = common dso_local global i32 0, align 4
@FS_SETALT = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4
@SC_STATUS_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_rew(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i32, i32* @M_ERR, align 4
  %14 = call i32 @msgq(%struct.TYPE_10__* %12, i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @E_C_FORCE, align 4
  %21 = call i64 @FL_ISSET(i32 %19, i32 %20)
  %22 = load i32, i32* @FS_ALL, align 4
  %23 = load i32, i32* @FS_POSSIBLE, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @file_m1(%struct.TYPE_10__* %16, i64 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %67

28:                                               ; preds = %15
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @file_add(%struct.TYPE_10__* %34, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %67

42:                                               ; preds = %28
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @FS_SETALT, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @E_C_FORCE, align 4
  %50 = call i64 @FL_ISSET(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @FS_FORCE, align 4
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %45, %56
  %58 = call i64 @file_init(%struct.TYPE_10__* %43, i32* %44, i32* null, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = load i32, i32* @SC_FSWITCH, align 4
  %64 = load i32, i32* @SC_STATUS_CNT, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @F_SET(%struct.TYPE_10__* %62, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %60, %41, %27, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @msgq(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i64 @file_m1(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32* @file_add(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @file_init(%struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
