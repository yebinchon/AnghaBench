; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_do_serial_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_do_serial_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i64, %struct.serial*, %struct.serial*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.serial*)* }

@last_serial_opened = common dso_local global i32* null, align 8
@serial_logfp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"\0AEnd of log\0A\00", align 1
@serial_current_type = common dso_local global i64 0, align 8
@scb_base = common dso_local global %struct.serial* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serial*, i32)* @do_serial_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_serial_close(%struct.serial* %0, i32 %1) #0 {
  %3 = alloca %struct.serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.serial*, align 8
  store %struct.serial* %0, %struct.serial** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** @last_serial_opened, align 8
  %6 = load i32*, i32** @serial_logfp, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32*, i32** @serial_logfp, align 8
  %10 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i64 0, i64* @serial_current_type, align 8
  %11 = load i32*, i32** @serial_logfp, align 8
  %12 = call i32 @ui_file_delete(i32* %11)
  store i32* null, i32** @serial_logfp, align 8
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.serial*, %struct.serial** %3, align 8
  %15 = icmp ne %struct.serial* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %92

17:                                               ; preds = %13
  %18 = load %struct.serial*, %struct.serial** %3, align 8
  %19 = getelementptr inbounds %struct.serial, %struct.serial* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.serial*, %struct.serial** %3, align 8
  %23 = getelementptr inbounds %struct.serial, %struct.serial* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %92

27:                                               ; preds = %17
  %28 = load %struct.serial*, %struct.serial** %3, align 8
  %29 = getelementptr inbounds %struct.serial, %struct.serial* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.serial*, %struct.serial** %3, align 8
  %34 = call i32 @serial_async(%struct.serial* %33, i32* null, i32* null)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.serial*, %struct.serial** %3, align 8
  %40 = getelementptr inbounds %struct.serial, %struct.serial* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.serial*)*, i32 (%struct.serial*)** %42, align 8
  %44 = load %struct.serial*, %struct.serial** %3, align 8
  %45 = call i32 %43(%struct.serial* %44)
  br label %46

46:                                               ; preds = %38, %35
  %47 = load %struct.serial*, %struct.serial** %3, align 8
  %48 = getelementptr inbounds %struct.serial, %struct.serial* %47, i32 0, i32 2
  %49 = load %struct.serial*, %struct.serial** %48, align 8
  %50 = icmp ne %struct.serial* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.serial*, %struct.serial** %3, align 8
  %53 = getelementptr inbounds %struct.serial, %struct.serial* %52, i32 0, i32 2
  %54 = load %struct.serial*, %struct.serial** %53, align 8
  %55 = call i32 @xfree(%struct.serial* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.serial*, %struct.serial** @scb_base, align 8
  %58 = load %struct.serial*, %struct.serial** %3, align 8
  %59 = icmp eq %struct.serial* %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.serial*, %struct.serial** @scb_base, align 8
  %62 = getelementptr inbounds %struct.serial, %struct.serial* %61, i32 0, i32 1
  %63 = load %struct.serial*, %struct.serial** %62, align 8
  store %struct.serial* %63, %struct.serial** @scb_base, align 8
  br label %89

64:                                               ; preds = %56
  %65 = load %struct.serial*, %struct.serial** @scb_base, align 8
  store %struct.serial* %65, %struct.serial** %5, align 8
  br label %66

66:                                               ; preds = %84, %64
  %67 = load %struct.serial*, %struct.serial** %5, align 8
  %68 = icmp ne %struct.serial* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.serial*, %struct.serial** %5, align 8
  %71 = getelementptr inbounds %struct.serial, %struct.serial* %70, i32 0, i32 1
  %72 = load %struct.serial*, %struct.serial** %71, align 8
  %73 = load %struct.serial*, %struct.serial** %3, align 8
  %74 = icmp ne %struct.serial* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %84

76:                                               ; preds = %69
  %77 = load %struct.serial*, %struct.serial** %5, align 8
  %78 = getelementptr inbounds %struct.serial, %struct.serial* %77, i32 0, i32 1
  %79 = load %struct.serial*, %struct.serial** %78, align 8
  %80 = getelementptr inbounds %struct.serial, %struct.serial* %79, i32 0, i32 1
  %81 = load %struct.serial*, %struct.serial** %80, align 8
  %82 = load %struct.serial*, %struct.serial** %5, align 8
  %83 = getelementptr inbounds %struct.serial, %struct.serial* %82, i32 0, i32 1
  store %struct.serial* %81, %struct.serial** %83, align 8
  br label %88

84:                                               ; preds = %75
  %85 = load %struct.serial*, %struct.serial** %5, align 8
  %86 = getelementptr inbounds %struct.serial, %struct.serial* %85, i32 0, i32 1
  %87 = load %struct.serial*, %struct.serial** %86, align 8
  store %struct.serial* %87, %struct.serial** %5, align 8
  br label %66

88:                                               ; preds = %76, %66
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.serial*, %struct.serial** %3, align 8
  %91 = call i32 @xfree(%struct.serial* %90)
  br label %92

92:                                               ; preds = %89, %26, %16
  ret void
}

declare dso_local i32 @fputs_unfiltered(i8*, i32*) #1

declare dso_local i32 @ui_file_delete(i32*) #1

declare dso_local i32 @serial_async(%struct.serial*, i32*, i32*) #1

declare dso_local i32 @xfree(%struct.serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
