; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_close_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_close_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nexttape = common dso_local global i64 0, align 8
@nogripe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Change Volumes: Mount volume #%d\0A\00", align 1
@tapeno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"CHANGE DUMP VOLUMES!\07\07\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Is the new volume mounted and ready to go?\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Do you want to abort?\00", align 1
@tstart_writing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_rewind() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @trewind()
  %4 = load i64, i64* @nexttape, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %42

7:                                                ; preds = %0
  %8 = call i32 @time(i64* %1)
  %9 = load i32, i32* @nogripe, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* @tapeno, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = call i32 @broadcast(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %7
  br label %17

17:                                               ; preds = %26, %16
  %18 = call i64 @query(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = call i64 @query(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @dumpabort(i32 0)
  br label %26

26:                                               ; preds = %24, %21
  br label %17

27:                                               ; preds = %17
  %28 = call i32 @time(i64* %2)
  %29 = load i64, i64* %1, align 8
  %30 = icmp ne i64 %29, -1
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* %1, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i32, i32* @tstart_writing, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @tstart_writing, align 4
  br label %42

42:                                               ; preds = %6, %34, %31, %27
  ret void
}

declare dso_local i32 @trewind(...) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @msg(i8*, i64) #1

declare dso_local i32 @broadcast(i8*) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @dumpabort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
