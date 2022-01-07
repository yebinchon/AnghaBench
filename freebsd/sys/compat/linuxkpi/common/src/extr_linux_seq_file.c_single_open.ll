; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_seq_file.c_single_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_seq_file.c_single_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_file = type { i64 }
%struct.seq_file = type { i8* }
%struct.seq_operations = type { i32 (%struct.seq_file.0*, i8*)*, i32, i32, i32 }
%struct.seq_file.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@M_LSEQ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@single_start = common dso_local global i32 0, align 4
@single_next = common dso_local global i32 0, align 4
@single_stop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @single_open(%struct.linux_file* %0, i32 (%struct.seq_file*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.linux_file*, align 8
  %5 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.seq_operations*, align 8
  %8 = alloca i32, align 4
  store %struct.linux_file* %0, %struct.linux_file** %4, align 8
  store i32 (%struct.seq_file*, i8*)* %1, i32 (%struct.seq_file*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @M_LSEQ, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = call %struct.seq_operations* @malloc(i32 24, i32 %11, i32 %12)
  store %struct.seq_operations* %13, %struct.seq_operations** %7, align 8
  %14 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %15 = icmp ne %struct.seq_operations* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load i32, i32* @single_start, align 4
  %18 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %19 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @single_next, align 4
  %21 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %22 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @single_stop, align 4
  %24 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %25 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %5, align 8
  %27 = bitcast i32 (%struct.seq_file*, i8*)* %26 to i32 (%struct.seq_file.0*, i8*)*
  %28 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %29 = getelementptr inbounds %struct.seq_operations, %struct.seq_operations* %28, i32 0, i32 0
  store i32 (%struct.seq_file.0*, i8*)* %27, i32 (%struct.seq_file.0*, i8*)** %29, align 8
  %30 = load %struct.linux_file*, %struct.linux_file** %4, align 8
  %31 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %32 = call i32 @seq_open(%struct.linux_file* %30, %struct.seq_operations* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %16
  %36 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %37 = load i32, i32* @M_LSEQ, align 4
  %38 = call i32 @free(%struct.seq_operations* %36, i32 %37)
  br label %46

39:                                               ; preds = %16
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.linux_file*, %struct.linux_file** %4, align 8
  %42 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.seq_file*
  %45 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %44, i32 0, i32 0
  store i8* %40, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %35
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.seq_operations* @malloc(i32, i32, i32) #1

declare dso_local i32 @seq_open(%struct.linux_file*, %struct.seq_operations*) #1

declare dso_local i32 @free(%struct.seq_operations*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
