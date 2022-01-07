; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_aw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_aw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@F_MODIFIED = common dso_local global i32 0, align 4
@O_AUTOWRITE = common dso_local global i32 0, align 4
@O_READONLY = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"266|File readonly, modifications not auto-written\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_aw(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @F_MODIFIED, align 4
  %10 = call i32 @F_ISSET(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i32, i32* @O_AUTOWRITE, align 4
  %16 = call i64 @O_ISSET(%struct.TYPE_6__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %32

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load i32, i32* @O_READONLY, align 4
  %22 = call i64 @O_ISSET(%struct.TYPE_6__* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i32, i32* @M_INFO, align 4
  %27 = call i32 @msgq(%struct.TYPE_6__* %25, i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @file_write(%struct.TYPE_6__* %29, i32* null, i32* null, i32* null, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %24, %18, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @F_ISSET(i32, i32) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @file_write(%struct.TYPE_6__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
