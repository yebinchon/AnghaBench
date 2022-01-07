; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_files_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-utils.c_gr_files_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"\09Attached to %s\00", align 1
@baud_rate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"at %d baud\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@exec_bfd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"\09and running program %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\09using the %s protocol.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gr_files_info(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  %3 = call i32 (...) @sr_get_device()
  %4 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @baud_rate, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @baud_rate, align 4
  %9 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i64, i64* @exec_bfd, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* @exec_bfd, align 8
  %16 = call i32 @bfd_get_filename(i64 %15)
  %17 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %20 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @sr_get_device(...) #1

declare dso_local i32 @bfd_get_filename(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
