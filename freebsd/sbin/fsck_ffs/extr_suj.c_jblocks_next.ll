; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_jblocks_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_jblocks_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.jblocks = type { i64, i32, i64, %struct.jextent* }
%struct.jextent = type { i32, i32 }

@disk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jblocks*, i32, i32*)* @jblocks_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jblocks_next(%struct.jblocks* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jblocks*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.jextent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jblocks* %0, %struct.jblocks** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 0), align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %16 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %15, i32 0, i32 3
  %17 = load %struct.jextent*, %struct.jextent** %16, align 8
  %18 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %19 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.jextent, %struct.jextent* %17, i64 %20
  store %struct.jextent* %21, %struct.jextent** %8, align 8
  %22 = load %struct.jextent*, %struct.jextent** %8, align 8
  %23 = getelementptr inbounds %struct.jextent, %struct.jextent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %26 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %3
  %32 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %33 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %35 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %39 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %73

43:                                               ; preds = %31
  %44 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %45 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %44, i32 0, i32 3
  %46 = load %struct.jextent*, %struct.jextent** %45, align 8
  %47 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %48 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.jextent, %struct.jextent* %46, i64 %49
  store %struct.jextent* %50, %struct.jextent** %8, align 8
  %51 = load %struct.jextent*, %struct.jextent** %8, align 8
  %52 = getelementptr inbounds %struct.jextent, %struct.jextent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %43, %3
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 0), align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.jextent*, %struct.jextent** %8, align 8
  %66 = getelementptr inbounds %struct.jextent, %struct.jextent* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.jblocks*, %struct.jblocks** %5, align 8
  %69 = getelementptr inbounds %struct.jblocks, %struct.jblocks* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %60, %42
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
