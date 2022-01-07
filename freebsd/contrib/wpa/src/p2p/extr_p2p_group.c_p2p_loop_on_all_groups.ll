; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_loop_on_all_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_loop_on_all_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, %struct.p2p_group** }
%struct.p2p_group = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_loop_on_all_groups(%struct.p2p_data* %0, i32 (%struct.p2p_group*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32 (%struct.p2p_group*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32 (%struct.p2p_group*, i8*)* %1, i32 (%struct.p2p_group*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %11 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load i32 (%struct.p2p_group*, i8*)*, i32 (%struct.p2p_group*, i8*)** %5, align 8
  %16 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 1
  %18 = load %struct.p2p_group**, %struct.p2p_group*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.p2p_group*, %struct.p2p_group** %18, i64 %20
  %22 = load %struct.p2p_group*, %struct.p2p_group** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 %15(%struct.p2p_group* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %31

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %26, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
