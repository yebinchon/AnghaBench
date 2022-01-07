; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_count_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_count_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icode = type { i32 }
%struct.block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icode*, %struct.block*)* @count_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_blocks(%struct.icode* %0, %struct.block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icode*, align 8
  %5 = alloca %struct.block*, align 8
  store %struct.icode* %0, %struct.icode** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  %6 = load %struct.block*, %struct.block** %5, align 8
  %7 = icmp eq %struct.block* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.icode*, %struct.icode** %4, align 8
  %10 = load %struct.block*, %struct.block** %5, align 8
  %11 = call i64 @isMarked(%struct.icode* %9, %struct.block* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %28

14:                                               ; preds = %8
  %15 = load %struct.icode*, %struct.icode** %4, align 8
  %16 = load %struct.block*, %struct.block** %5, align 8
  %17 = call i32 @Mark(%struct.icode* %15, %struct.block* %16)
  %18 = load %struct.icode*, %struct.icode** %4, align 8
  %19 = load %struct.block*, %struct.block** %5, align 8
  %20 = call %struct.block* @JT(%struct.block* %19)
  %21 = call i32 @count_blocks(%struct.icode* %18, %struct.block* %20)
  %22 = load %struct.icode*, %struct.icode** %4, align 8
  %23 = load %struct.block*, %struct.block** %5, align 8
  %24 = call %struct.block* @JF(%struct.block* %23)
  %25 = call i32 @count_blocks(%struct.icode* %22, %struct.block* %24)
  %26 = add nsw i32 %21, %25
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @isMarked(%struct.icode*, %struct.block*) #1

declare dso_local i32 @Mark(%struct.icode*, %struct.block*) #1

declare dso_local %struct.block* @JT(%struct.block*) #1

declare dso_local %struct.block* @JF(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
