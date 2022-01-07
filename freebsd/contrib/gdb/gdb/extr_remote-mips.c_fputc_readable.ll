; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_fputc_readable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_fputc_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"^%c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[%02x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*)* @fputc_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputc_readable(i32 %0, %struct.ui_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_file*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %9 = call i32 @fputc_unfiltered(i32 10, %struct.ui_file* %8)
  br label %39

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %15 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %38

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 64
  %23 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %37

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 127
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 255
  %31 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %35 = call i32 @fputc_unfiltered(i32 %33, %struct.ui_file* %34)
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %13
  br label %39

39:                                               ; preds = %38, %7
  ret void
}

declare dso_local i32 @fputc_unfiltered(i32, %struct.ui_file*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
