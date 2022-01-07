; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_settings = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@gr_settings = common dso_local global %struct.gr_settings* null, align 8
@baud_rate = common dso_local global i32 0, align 4
@remove_breakpoints = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Remote debugging using `%s'\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" at baud rate of %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gr_open(i8* %0, i32 %1, %struct.gr_settings* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gr_settings*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gr_settings* %2, %struct.gr_settings** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @target_preopen(i32 %7)
  %9 = load %struct.gr_settings*, %struct.gr_settings** %6, align 8
  %10 = getelementptr inbounds %struct.gr_settings, %struct.gr_settings* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @sr_scan_args(i32 %13, i8* %14)
  %16 = load %struct.gr_settings*, %struct.gr_settings** %6, align 8
  %17 = getelementptr inbounds %struct.gr_settings, %struct.gr_settings* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @unpush_target(%struct.TYPE_3__* %18)
  %20 = load %struct.gr_settings*, %struct.gr_settings** %6, align 8
  store %struct.gr_settings* %20, %struct.gr_settings** @gr_settings, align 8
  %21 = call i32* (...) @sr_get_desc()
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @gr_close(i32 0)
  br label %25

25:                                               ; preds = %23, %3
  %26 = call i8* (...) @sr_get_device()
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.gr_settings*, %struct.gr_settings** %6, align 8
  %30 = getelementptr inbounds %struct.gr_settings, %struct.gr_settings* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usage(i32 %33, i32* null)
  br label %35

35:                                               ; preds = %28, %25
  %36 = call i8* (...) @sr_get_device()
  %37 = call i32 @serial_open(i8* %36)
  %38 = call i32 @sr_set_desc(i32 %37)
  %39 = call i32* (...) @sr_get_desc()
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = call i8* (...) @sr_get_device()
  %43 = call i32 @perror_with_name(i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* @baud_rate, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = call i32* (...) @sr_get_desc()
  %49 = load i32, i32* @baud_rate, align 4
  %50 = call i64 @serial_setbaudrate(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = call i32* (...) @sr_get_desc()
  %54 = call i32 @serial_close(i32* %53)
  %55 = call i8* (...) @sr_get_device()
  %56 = call i32 @perror_with_name(i8* %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %44
  %59 = call i32* (...) @sr_get_desc()
  %60 = call i32 @serial_raw(i32* %59)
  %61 = call i32* (...) @sr_get_desc()
  %62 = call i32 @serial_flush_input(i32* %61)
  %63 = call i64 (...) @sr_get_retries()
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 @sr_set_retries(i32 1)
  br label %67

67:                                               ; preds = %65, %58
  %68 = load %struct.gr_settings*, %struct.gr_settings** @gr_settings, align 8
  %69 = getelementptr inbounds %struct.gr_settings, %struct.gr_settings* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32*, i32** @remove_breakpoints, align 8
  %74 = load %struct.gr_settings*, %struct.gr_settings** @gr_settings, align 8
  %75 = getelementptr inbounds %struct.gr_settings, %struct.gr_settings* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = call i8* (...) @sr_get_device()
  %81 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @baud_rate, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @baud_rate, align 4
  %86 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %76
  %90 = load %struct.gr_settings*, %struct.gr_settings** %6, align 8
  %91 = getelementptr inbounds %struct.gr_settings, %struct.gr_settings* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = call i32 @push_target(%struct.TYPE_3__* %92)
  %94 = call i32 (...) @gr_checkin()
  %95 = call i32 (...) @gr_clear_all_breakpoints()
  ret void
}

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @sr_scan_args(i32, i8*) #1

declare dso_local i32 @unpush_target(%struct.TYPE_3__*) #1

declare dso_local i32* @sr_get_desc(...) #1

declare dso_local i32 @gr_close(i32) #1

declare dso_local i8* @sr_get_device(...) #1

declare dso_local i32 @usage(i32, i32*) #1

declare dso_local i32 @sr_set_desc(i32) #1

declare dso_local i32 @serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i64 @serial_setbaudrate(i32*, i32) #1

declare dso_local i32 @serial_close(i32*) #1

declare dso_local i32 @serial_raw(i32*) #1

declare dso_local i32 @serial_flush_input(i32*) #1

declare dso_local i64 @sr_get_retries(...) #1

declare dso_local i32 @sr_set_retries(i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @push_target(%struct.TYPE_3__*) #1

declare dso_local i32 @gr_checkin(...) #1

declare dso_local i32 @gr_clear_all_breakpoints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
