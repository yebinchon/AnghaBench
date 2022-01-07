; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_setup_bg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_setup_bg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32, i32 }
%struct.comm_base = type { i32 }

@tube_handle_write = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tube_setup_bg_w: commpoint creation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tube_setup_bg_write(%struct.tube* %0, %struct.comm_base* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tube*, align 8
  %5 = alloca %struct.comm_base*, align 8
  %6 = alloca i32, align 4
  store %struct.tube* %0, %struct.tube** %4, align 8
  store %struct.comm_base* %1, %struct.comm_base** %5, align 8
  %7 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %8 = load %struct.tube*, %struct.tube** %4, align 8
  %9 = getelementptr inbounds %struct.tube, %struct.tube* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @tube_handle_write, align 4
  %12 = load %struct.tube*, %struct.tube** %4, align 8
  %13 = call i32 @comm_point_create_raw(%struct.comm_base* %7, i32 %10, i32 1, i32 %11, %struct.tube* %12)
  %14 = load %struct.tube*, %struct.tube** %4, align 8
  %15 = getelementptr inbounds %struct.tube, %struct.tube* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = icmp ne i32 %13, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %6, align 4
  %19 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @comm_point_create_raw(%struct.comm_base*, i32, i32, i32, %struct.tube*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
