; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_update_intr_delay_resolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_update_intr_delay_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, i32, %struct.ena_intr_moder_entry* }
%struct.ena_intr_moder_entry = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"Illegal intr_delay_resolution provided. Going to use default 1 usec resolution\0A\00", align 1
@ENA_INTR_MAX_NUM_OF_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*, i32)* @ena_com_update_intr_delay_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_update_intr_delay_resolution(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_intr_moder_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 2
  %9 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %8, align 8
  store %struct.ena_intr_moder_entry* %9, %struct.ena_intr_moder_entry** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @ena_trc_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %31, %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ENA_INTR_MAX_NUM_OF_LEVELS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ena_intr_moder_entry*, %struct.ena_intr_moder_entry** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.ena_intr_moder_entry, %struct.ena_intr_moder_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, %23
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %37 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, %35
  store i32 %39, i32* %37, align 4
  ret void
}

declare dso_local i32 @ena_trc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
