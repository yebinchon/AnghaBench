; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_lun_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_lun_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.ctl_be_block_lun = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"\09<num_threads>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"</num_threads>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbuf*)* @ctl_be_block_lun_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_lun_info(i8* %0, %struct.sbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.ctl_be_block_lun*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ctl_be_block_lun*
  store %struct.ctl_be_block_lun* %8, %struct.ctl_be_block_lun** %5, align 8
  %9 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %10 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %16 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %5, align 8
  %17 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %25 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %22, %13
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
