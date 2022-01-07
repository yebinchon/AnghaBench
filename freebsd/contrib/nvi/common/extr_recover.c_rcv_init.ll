; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*, i8*, i32)* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, i32)* }

@F_FIRSTMODIFY = common dso_local global i32 0, align 4
@F_RCV_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"057|Copying file for recovery...\00", align 1
@BUSY_ON = common dso_local global i32 0, align 4
@R_RECNOSYNC = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"058|Preservation failed: %s\00", align 1
@BUSY_OFF = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"059|Modifications not recoverable if the session fails\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcv_init(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = load i32, i32* @F_FIRSTMODIFY, align 4
  %11 = call i32 @F_CLR(%struct.TYPE_18__* %9, i32 %10)
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = load i32, i32* @F_RCV_ON, align 4
  %14 = call i32 @F_ISSET(%struct.TYPE_18__* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = load i32, i32* @F_RCV_ON, align 4
  %20 = call i32 @F_CLR(%struct.TYPE_18__* %18, i32 %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %79

25:                                               ; preds = %17
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = call i64 @rcv_mailfile(%struct.TYPE_17__* %26, i32 0, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %90

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = call i64 @db_last(%struct.TYPE_17__* %31, i32* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %90

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_17__*, i8*, i32)*, i32 (%struct.TYPE_17__*, i8*, i32)** %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = load i32, i32* @BUSY_ON, align 4
  %43 = call i32 %40(%struct.TYPE_17__* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_19__*, i32)*, i64 (%struct.TYPE_19__*, i32)** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = load i32, i32* @R_RECNOSYNC, align 4
  %53 = call i64 %48(%struct.TYPE_19__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %35
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = load i32, i32* @M_SYSERR, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @msgq_str(%struct.TYPE_17__* %56, i32 %57, i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_17__*, i8*, i32)*, i32 (%struct.TYPE_17__*, i8*, i32)** %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = load i32, i32* @BUSY_OFF, align 4
  %69 = call i32 %66(%struct.TYPE_17__* %67, i8* null, i32 %68)
  br label %90

70:                                               ; preds = %35
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_17__*, i8*, i32)*, i32 (%struct.TYPE_17__*, i8*, i32)** %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = load i32, i32* @BUSY_OFF, align 4
  %78 = call i32 %75(%struct.TYPE_17__* %76, i8* null, i32 %77)
  br label %79

79:                                               ; preds = %70, %17
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @S_IRUSR, align 4
  %84 = load i32, i32* @S_IWUSR, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @chmod(i32 %82, i32 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = load i32, i32* @F_RCV_ON, align 4
  %89 = call i32 @F_SET(%struct.TYPE_18__* %87, i32 %88)
  store i32 0, i32* %2, align 4
  br label %94

90:                                               ; preds = %55, %34, %29
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = load i32, i32* @M_ERR, align 4
  %93 = call i32 @msgq(%struct.TYPE_17__* %91, i32 %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %79, %16
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @F_CLR(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @rcv_mailfile(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i64 @db_last(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @msgq_str(%struct.TYPE_17__*, i32, i32, i8*) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_17__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
