; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-nat.c_s390_remove_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-nat.c_s390_remove_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch_area = type { i32, i32, %struct.watch_area* }

@watch_base = common dso_local global %struct.watch_area* null, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Attempt to remove nonexistent watchpoint.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_remove_watchpoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.watch_area*, align 8
  %7 = alloca %struct.watch_area**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.watch_area** @watch_base, %struct.watch_area*** %7, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  %10 = load %struct.watch_area*, %struct.watch_area** %9, align 8
  %11 = icmp ne %struct.watch_area* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  %14 = load %struct.watch_area*, %struct.watch_area** %13, align 8
  %15 = getelementptr inbounds %struct.watch_area, %struct.watch_area* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  %21 = load %struct.watch_area*, %struct.watch_area** %20, align 8
  %22 = getelementptr inbounds %struct.watch_area, %struct.watch_area* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19, %12
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  %33 = load %struct.watch_area*, %struct.watch_area** %32, align 8
  %34 = getelementptr inbounds %struct.watch_area, %struct.watch_area* %33, i32 0, i32 2
  store %struct.watch_area** %34, %struct.watch_area*** %7, align 8
  br label %8

35:                                               ; preds = %29, %8
  %36 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  %37 = load %struct.watch_area*, %struct.watch_area** %36, align 8
  %38 = icmp ne %struct.watch_area* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @gdb_stderr, align 4
  %41 = call i32 @fprintf_unfiltered(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %52

42:                                               ; preds = %35
  %43 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  %44 = load %struct.watch_area*, %struct.watch_area** %43, align 8
  store %struct.watch_area* %44, %struct.watch_area** %6, align 8
  %45 = load %struct.watch_area*, %struct.watch_area** %6, align 8
  %46 = getelementptr inbounds %struct.watch_area, %struct.watch_area* %45, i32 0, i32 2
  %47 = load %struct.watch_area*, %struct.watch_area** %46, align 8
  %48 = load %struct.watch_area**, %struct.watch_area*** %7, align 8
  store %struct.watch_area* %47, %struct.watch_area** %48, align 8
  %49 = load %struct.watch_area*, %struct.watch_area** %6, align 8
  %50 = call i32 @xfree(%struct.watch_area* %49)
  %51 = call i32 (...) @s390_fix_watch_points()
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @xfree(%struct.watch_area*) #1

declare dso_local i32 @s390_fix_watch_points(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
