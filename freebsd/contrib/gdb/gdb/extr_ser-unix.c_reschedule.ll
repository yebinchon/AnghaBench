; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_reschedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_reschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i32, i32, i32 }

@push_event = common dso_local global i32 0, align 4
@fd_event = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[fd%d->fd-scheduled]\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[fd%d->timer-scheduled]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serial*)* @reschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reschedule(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  %3 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %2, align 8
  %4 = load %struct.serial*, %struct.serial** %2, align 8
  %5 = call i64 @serial_is_async_p(%struct.serial* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %99

7:                                                ; preds = %1
  %8 = load %struct.serial*, %struct.serial** %2, align 8
  %9 = getelementptr inbounds %struct.serial, %struct.serial* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %43 [
    i32 129, label %11
    i32 128, label %26
  ]

11:                                               ; preds = %7
  %12 = load %struct.serial*, %struct.serial** %2, align 8
  %13 = getelementptr inbounds %struct.serial, %struct.serial* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 129, i32* %3, align 4
  br label %25

17:                                               ; preds = %11
  %18 = load %struct.serial*, %struct.serial** %2, align 8
  %19 = getelementptr inbounds %struct.serial, %struct.serial* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @delete_file_handler(i32 %20)
  %22 = load i32, i32* @push_event, align 4
  %23 = load %struct.serial*, %struct.serial** %2, align 8
  %24 = call i32 @create_timer(i32 0, i32 %22, %struct.serial* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %16
  br label %64

26:                                               ; preds = %7
  %27 = load %struct.serial*, %struct.serial** %2, align 8
  %28 = getelementptr inbounds %struct.serial, %struct.serial* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.serial*, %struct.serial** %2, align 8
  %33 = getelementptr inbounds %struct.serial, %struct.serial* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @fd_event, align 4
  %36 = load %struct.serial*, %struct.serial** %2, align 8
  %37 = call i32 @add_file_handler(i32 %34, i32 %35, %struct.serial* %36)
  store i32 129, i32* %3, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load i32, i32* @push_event, align 4
  %40 = load %struct.serial*, %struct.serial** %2, align 8
  %41 = call i32 @create_timer(i32 0, i32 %39, %struct.serial* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %31
  br label %64

43:                                               ; preds = %7
  %44 = load %struct.serial*, %struct.serial** %2, align 8
  %45 = getelementptr inbounds %struct.serial, %struct.serial* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.serial*, %struct.serial** %2, align 8
  %50 = getelementptr inbounds %struct.serial, %struct.serial* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @delete_timer(i32 %51)
  %53 = load %struct.serial*, %struct.serial** %2, align 8
  %54 = getelementptr inbounds %struct.serial, %struct.serial* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @fd_event, align 4
  %57 = load %struct.serial*, %struct.serial** %2, align 8
  %58 = call i32 @add_file_handler(i32 %55, i32 %56, %struct.serial* %57)
  store i32 129, i32* %3, align 4
  br label %63

59:                                               ; preds = %43
  %60 = load %struct.serial*, %struct.serial** %2, align 8
  %61 = getelementptr inbounds %struct.serial, %struct.serial* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %48
  br label %64

64:                                               ; preds = %63, %42, %25
  %65 = load %struct.serial*, %struct.serial** %2, align 8
  %66 = call i64 @serial_debug_p(%struct.serial* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  switch i32 %69, label %82 [
    i32 129, label %70
  ]

70:                                               ; preds = %68
  %71 = load %struct.serial*, %struct.serial** %2, align 8
  %72 = getelementptr inbounds %struct.serial, %struct.serial* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 129
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @gdb_stdlog, align 4
  %77 = load %struct.serial*, %struct.serial** %2, align 8
  %78 = getelementptr inbounds %struct.serial, %struct.serial* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fprintf_unfiltered(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  br label %94

82:                                               ; preds = %68
  %83 = load %struct.serial*, %struct.serial** %2, align 8
  %84 = getelementptr inbounds %struct.serial, %struct.serial* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 129
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @gdb_stdlog, align 4
  %89 = load %struct.serial*, %struct.serial** %2, align 8
  %90 = getelementptr inbounds %struct.serial, %struct.serial* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fprintf_unfiltered(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.serial*, %struct.serial** %2, align 8
  %98 = getelementptr inbounds %struct.serial, %struct.serial* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %1
  ret void
}

declare dso_local i64 @serial_is_async_p(%struct.serial*) #1

declare dso_local i32 @delete_file_handler(i32) #1

declare dso_local i32 @create_timer(i32, i32, %struct.serial*) #1

declare dso_local i32 @add_file_handler(i32, i32, %struct.serial*) #1

declare dso_local i32 @delete_timer(i32) #1

declare dso_local i64 @serial_debug_p(%struct.serial*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
