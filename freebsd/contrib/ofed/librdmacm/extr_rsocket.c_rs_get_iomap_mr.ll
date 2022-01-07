; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_get_iomap_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_get_iomap_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_iomap_mr = type { i32, i32 }
%struct.rsocket = type { %struct.rs_iomap_mr*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rs_iomap_mr* (%struct.rsocket*)* @rs_get_iomap_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rs_iomap_mr* @rs_get_iomap_mr(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rs_iomap_mr*, align 8
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %5 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %6 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %5, i32 0, i32 0
  %7 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %6, align 8
  %8 = icmp ne %struct.rs_iomap_mr* %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %1
  %10 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %11 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.rs_iomap_mr* @calloc(i32 %13, i32 8)
  %15 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 0
  store %struct.rs_iomap_mr* %14, %struct.rs_iomap_mr** %16, align 8
  %17 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 0
  %19 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %18, align 8
  %20 = icmp ne %struct.rs_iomap_mr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  store %struct.rs_iomap_mr* null, %struct.rs_iomap_mr** %2, align 8
  br label %73

22:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %26 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 0
  %34 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %34, i64 %36
  %38 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %23

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %1
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %47 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 0
  %54 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %54, i64 %56
  %58 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %51
  %62 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 0
  %64 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %64, i64 %66
  store %struct.rs_iomap_mr* %67, %struct.rs_iomap_mr** %2, align 8
  br label %73

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %44

72:                                               ; preds = %44
  store %struct.rs_iomap_mr* null, %struct.rs_iomap_mr** %2, align 8
  br label %73

73:                                               ; preds = %72, %61, %21
  %74 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %2, align 8
  ret %struct.rs_iomap_mr* %74
}

declare dso_local %struct.rs_iomap_mr* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
