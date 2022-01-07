; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_find_levels_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_find_levels_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.block** }
%struct.icode = type { i32 }
%struct.block = type { i32, %struct.block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.icode*, %struct.block*)* @find_levels_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_levels_r(%struct.TYPE_3__* %0, %struct.icode* %1, %struct.block* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.icode*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.icode* %1, %struct.icode** %5, align 8
  store %struct.block* %2, %struct.block** %6, align 8
  %8 = load %struct.icode*, %struct.icode** %5, align 8
  %9 = load %struct.block*, %struct.block** %6, align 8
  %10 = call i64 @isMarked(%struct.icode* %8, %struct.block* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %62

13:                                               ; preds = %3
  %14 = load %struct.icode*, %struct.icode** %5, align 8
  %15 = load %struct.block*, %struct.block** %6, align 8
  %16 = call i32 @Mark(%struct.icode* %14, %struct.block* %15)
  %17 = load %struct.block*, %struct.block** %6, align 8
  %18 = getelementptr inbounds %struct.block, %struct.block* %17, i32 0, i32 1
  store %struct.block* null, %struct.block** %18, align 8
  %19 = load %struct.block*, %struct.block** %6, align 8
  %20 = call %struct.block* @JT(%struct.block* %19)
  %21 = icmp ne %struct.block* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = load %struct.icode*, %struct.icode** %5, align 8
  %25 = load %struct.block*, %struct.block** %6, align 8
  %26 = call %struct.block* @JT(%struct.block* %25)
  call void @find_levels_r(%struct.TYPE_3__* %23, %struct.icode* %24, %struct.block* %26)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = load %struct.icode*, %struct.icode** %5, align 8
  %29 = load %struct.block*, %struct.block** %6, align 8
  %30 = call %struct.block* @JF(%struct.block* %29)
  call void @find_levels_r(%struct.TYPE_3__* %27, %struct.icode* %28, %struct.block* %30)
  %31 = load %struct.block*, %struct.block** %6, align 8
  %32 = call %struct.block* @JT(%struct.block* %31)
  %33 = getelementptr inbounds %struct.block, %struct.block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.block*, %struct.block** %6, align 8
  %36 = call %struct.block* @JF(%struct.block* %35)
  %37 = getelementptr inbounds %struct.block, %struct.block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MAX(i32 %34, i32 %38)
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.block*, %struct.block** %6, align 8
  %45 = getelementptr inbounds %struct.block, %struct.block* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.block**, %struct.block*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.block*, %struct.block** %48, i64 %50
  %52 = load %struct.block*, %struct.block** %51, align 8
  %53 = load %struct.block*, %struct.block** %6, align 8
  %54 = getelementptr inbounds %struct.block, %struct.block* %53, i32 0, i32 1
  store %struct.block* %52, %struct.block** %54, align 8
  %55 = load %struct.block*, %struct.block** %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.block**, %struct.block*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.block*, %struct.block** %58, i64 %60
  store %struct.block* %55, %struct.block** %61, align 8
  br label %62

62:                                               ; preds = %42, %12
  ret void
}

declare dso_local i64 @isMarked(%struct.icode*, %struct.block*) #1

declare dso_local i32 @Mark(%struct.icode*, %struct.block*) #1

declare dso_local %struct.block* @JT(%struct.block*) #1

declare dso_local %struct.block* @JF(%struct.block*) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
