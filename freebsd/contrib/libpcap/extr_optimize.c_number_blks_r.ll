; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_number_blks_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_number_blks_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.block**, i32 }
%struct.icode = type { i32 }
%struct.block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.icode*, %struct.block*)* @number_blks_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @number_blks_r(%struct.TYPE_3__* %0, %struct.icode* %1, %struct.block* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.icode*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.icode* %1, %struct.icode** %5, align 8
  store %struct.block* %2, %struct.block** %6, align 8
  %8 = load %struct.block*, %struct.block** %6, align 8
  %9 = icmp eq %struct.block* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.icode*, %struct.icode** %5, align 8
  %12 = load %struct.block*, %struct.block** %6, align 8
  %13 = call i64 @isMarked(%struct.icode* %11, %struct.block* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %3
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.icode*, %struct.icode** %5, align 8
  %18 = load %struct.block*, %struct.block** %6, align 8
  %19 = call i32 @Mark(%struct.icode* %17, %struct.block* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.block*, %struct.block** %6, align 8
  %26 = getelementptr inbounds %struct.block, %struct.block* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.block*, %struct.block** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.block**, %struct.block*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.block*, %struct.block** %30, i64 %32
  store %struct.block* %27, %struct.block** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = load %struct.icode*, %struct.icode** %5, align 8
  %36 = load %struct.block*, %struct.block** %6, align 8
  %37 = call %struct.block* @JT(%struct.block* %36)
  call void @number_blks_r(%struct.TYPE_3__* %34, %struct.icode* %35, %struct.block* %37)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = load %struct.icode*, %struct.icode** %5, align 8
  %40 = load %struct.block*, %struct.block** %6, align 8
  %41 = call %struct.block* @JF(%struct.block* %40)
  call void @number_blks_r(%struct.TYPE_3__* %38, %struct.icode* %39, %struct.block* %41)
  br label %42

42:                                               ; preds = %16, %15
  ret void
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
