; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_ser_unix_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_ser_unix_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i32, i32 }

@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[fd%d->asynchronous]\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[fd%d->synchronous]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ser_unix_async(%struct.serial* %0, i32 %1) #0 {
  %3 = alloca %struct.serial*, align 8
  %4 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.serial*, %struct.serial** %3, align 8
  %9 = getelementptr inbounds %struct.serial, %struct.serial* %8, i32 0, i32 0
  store i32 128, i32* %9, align 4
  %10 = load %struct.serial*, %struct.serial** %3, align 8
  %11 = call i64 @serial_debug_p(%struct.serial* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i32, i32* @gdb_stdlog, align 4
  %15 = load %struct.serial*, %struct.serial** %3, align 8
  %16 = getelementptr inbounds %struct.serial, %struct.serial* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fprintf_unfiltered(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %7
  %20 = load %struct.serial*, %struct.serial** %3, align 8
  %21 = call i32 @reschedule(%struct.serial* %20)
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.serial*, %struct.serial** %3, align 8
  %24 = call i64 @serial_debug_p(%struct.serial* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @gdb_stdlog, align 4
  %28 = load %struct.serial*, %struct.serial** %3, align 8
  %29 = getelementptr inbounds %struct.serial, %struct.serial* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fprintf_unfiltered(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.serial*, %struct.serial** %3, align 8
  %34 = getelementptr inbounds %struct.serial, %struct.serial* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %42 [
    i32 129, label %36
    i32 128, label %41
  ]

36:                                               ; preds = %32
  %37 = load %struct.serial*, %struct.serial** %3, align 8
  %38 = getelementptr inbounds %struct.serial, %struct.serial* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @delete_file_handler(i32 %39)
  br label %47

41:                                               ; preds = %32
  br label %47

42:                                               ; preds = %32
  %43 = load %struct.serial*, %struct.serial** %3, align 8
  %44 = getelementptr inbounds %struct.serial, %struct.serial* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @delete_timer(i32 %45)
  br label %47

47:                                               ; preds = %42, %41, %36
  br label %48

48:                                               ; preds = %47, %19
  ret void
}

declare dso_local i64 @serial_debug_p(%struct.serial*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @reschedule(%struct.serial*) #1

declare dso_local i32 @delete_file_handler(i32) #1

declare dso_local i32 @delete_timer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
