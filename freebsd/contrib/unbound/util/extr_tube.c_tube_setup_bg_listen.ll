; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_setup_bg_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_setup_bg_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32, i32, i8*, i32* }
%struct.comm_base = type { i32 }

@tube_handle_listen = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tube_setup_bg_l: commpoint creation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tube_setup_bg_listen(%struct.tube* %0, %struct.comm_base* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tube*, align 8
  %7 = alloca %struct.comm_base*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tube* %0, %struct.tube** %6, align 8
  store %struct.comm_base* %1, %struct.comm_base** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load %struct.tube*, %struct.tube** %6, align 8
  %13 = getelementptr inbounds %struct.tube, %struct.tube* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.tube*, %struct.tube** %6, align 8
  %16 = getelementptr inbounds %struct.tube, %struct.tube* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.comm_base*, %struct.comm_base** %7, align 8
  %18 = load %struct.tube*, %struct.tube** %6, align 8
  %19 = getelementptr inbounds %struct.tube, %struct.tube* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @tube_handle_listen, align 4
  %22 = load %struct.tube*, %struct.tube** %6, align 8
  %23 = call i32 @comm_point_create_raw(%struct.comm_base* %17, i32 %20, i32 0, i32 %21, %struct.tube* %22)
  %24 = load %struct.tube*, %struct.tube** %6, align 8
  %25 = getelementptr inbounds %struct.tube, %struct.tube* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = icmp ne i32 %23, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %10, align 4
  %29 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* @errno, align 4
  store i32 0, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @comm_point_create_raw(%struct.comm_base*, i32, i32, i32, %struct.tube*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
