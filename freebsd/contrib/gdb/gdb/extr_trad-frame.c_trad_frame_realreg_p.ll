; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_trad-frame.c_trad_frame_realreg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_trad-frame.c_trad_frame_realreg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_frame_saved_reg = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trad_frame_realreg_p(%struct.trad_frame_saved_reg* %0, i32 %1) #0 {
  %3 = alloca %struct.trad_frame_saved_reg*, align 8
  %4 = alloca i32, align 4
  store %struct.trad_frame_saved_reg* %0, %struct.trad_frame_saved_reg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %5, i64 %7
  %9 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %13, i64 %15
  %17 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, -1
  br label %20

20:                                               ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
