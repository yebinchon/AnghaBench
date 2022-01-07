; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_handle_output_debug_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_handle_output_debug_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.target_waitstatus = type { i32 }

@current_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@current_process_handle = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_waitstatus*)* @handle_output_debug_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_output_debug_string(%struct.target_waitstatus* %0) #0 {
  %2 = alloca %struct.target_waitstatus*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [255 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.target_waitstatus* %0, %struct.target_waitstatus** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sgt i32 %9, 255
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 255, i32* %7, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 256)
  %15 = load i32, i32* @current_process_handle, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0, i32 0, i32 1), align 4
  %17 = bitcast [256 x i8]* %3 to i8**
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @read_process_memory(i32 %15, i32 %16, i8** %17, i32 %18, i32* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %12
  br label %49

26:                                               ; preds = %21
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 255)
  %29 = load i32, i32* @CP_ACP, align 4
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %34 = call i32 @WideCharToMultiByte(i32 %29, i32 0, i32 %31, i32 %32, i8* %33, i32 254, i32* null, i32* null)
  %35 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %36 = call i8* @strchr(i8* %35, i8 signext 10)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %5, align 8
  store i8 13, i8* %42, align 1
  br i1 true, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %26
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %48 = call i32 @warning(i8* %47)
  br label %49

49:                                               ; preds = %46, %25
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read_process_memory(i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
