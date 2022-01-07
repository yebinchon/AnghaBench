; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_count_stmts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_count_stmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icode = type { i32 }
%struct.block = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.icode*, %struct.block*)* @count_stmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_stmts(%struct.icode* %0, %struct.block* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.icode*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca i64, align 8
  store %struct.icode* %0, %struct.icode** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  %7 = load %struct.block*, %struct.block** %5, align 8
  %8 = icmp eq %struct.block* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.icode*, %struct.icode** %4, align 8
  %11 = load %struct.block*, %struct.block** %5, align 8
  %12 = call i64 @isMarked(%struct.icode* %10, %struct.block* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i64 0, i64* %3, align 8
  br label %43

15:                                               ; preds = %9
  %16 = load %struct.icode*, %struct.icode** %4, align 8
  %17 = load %struct.block*, %struct.block** %5, align 8
  %18 = call i32 @Mark(%struct.icode* %16, %struct.block* %17)
  %19 = load %struct.icode*, %struct.icode** %4, align 8
  %20 = load %struct.block*, %struct.block** %5, align 8
  %21 = call %struct.block* @JT(%struct.block* %20)
  %22 = call i64 @count_stmts(%struct.icode* %19, %struct.block* %21)
  %23 = load %struct.icode*, %struct.icode** %4, align 8
  %24 = load %struct.block*, %struct.block** %5, align 8
  %25 = call %struct.block* @JF(%struct.block* %24)
  %26 = call i64 @count_stmts(%struct.icode* %23, %struct.block* %25)
  %27 = add nsw i64 %22, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.block*, %struct.block** %5, align 8
  %29 = getelementptr inbounds %struct.block, %struct.block* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @slength(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %31, %32
  %34 = add nsw i64 %33, 1
  %35 = load %struct.block*, %struct.block** %5, align 8
  %36 = getelementptr inbounds %struct.block, %struct.block* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.block*, %struct.block** %5, align 8
  %40 = getelementptr inbounds %struct.block, %struct.block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i64 @isMarked(%struct.icode*, %struct.block*) #1

declare dso_local i32 @Mark(%struct.icode*, %struct.block*) #1

declare dso_local %struct.block* @JT(%struct.block*) #1

declare dso_local %struct.block* @JF(%struct.block*) #1

declare dso_local i64 @slength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
