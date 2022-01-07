; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_write.c_ex_xit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_write.c_ex_xit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@F_MODIFIED = common dso_local global i32 0, align 4
@XIT = common dso_local global i32 0, align 4
@E_C_FORCE = common dso_local global i32 0, align 4
@SC_EXIT_FORCE = common dso_local global i32 0, align 4
@SC_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_xit(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %9 = call i32 @NEEDFILE(%struct.TYPE_12__* %7, %struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @F_MODIFIED, align 4
  %14 = call i64 @F_ISSET(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = load i32, i32* @XIT, align 4
  %20 = call i64 @exwr(%struct.TYPE_12__* %17, %struct.TYPE_13__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %50

23:                                               ; preds = %16, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i64 @file_m3(%struct.TYPE_12__* %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %50

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @E_C_FORCE, align 4
  %33 = call i32 @FL_ISSET(i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ex_ncheck(%struct.TYPE_12__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %50

39:                                               ; preds = %28
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @SC_EXIT_FORCE, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @SC_EXIT, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @F_SET(%struct.TYPE_12__* %40, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %38, %27, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i64 @F_ISSET(i32, i32) #1

declare dso_local i64 @exwr(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @file_m3(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i64 @ex_ncheck(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
