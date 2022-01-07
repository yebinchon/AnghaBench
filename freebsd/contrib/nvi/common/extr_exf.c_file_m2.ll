; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_m2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@F_MODIFIED = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"264|File modified since last complete write; write or use ! to override\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_m2(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load i32, i32* @F_MODIFIED, align 4
  %16 = call i64 @F_ISSET(%struct.TYPE_8__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i32, i32* @M_ERR, align 4
  %29 = call i32 @msgq(%struct.TYPE_7__* %27, i32 %28, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %34

30:                                               ; preds = %23, %18, %13
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @file_m3(%struct.TYPE_7__* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @F_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @file_m3(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
