; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_dos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_partition = type { i64, i32, i64, i32, i32, i8*, i8*, i8*, i8* }

@mtpart = common dso_local global i32 0, align 4
@dos_cylsecs = common dso_local global i32 0, align 4
@dos_sectors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dos_partition*)* @dos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dos(%struct.dos_partition* %0) #0 {
  %2 = alloca %struct.dos_partition*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dos_partition* %0, %struct.dos_partition** %2, align 8
  %6 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %7 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %12 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %17 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %22 = call i32 @memcpy(%struct.dos_partition* %21, i32* @mtpart, i32 64)
  br label %86

23:                                               ; preds = %15, %10, %1
  %24 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %25 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @dos_cylsecs, align 4
  %28 = srem i32 %26, %27
  %29 = load i32, i32* @dos_sectors, align 4
  %30 = sdiv i32 %28, %29
  %31 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %32 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %34 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @dos_cylsecs, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %3, align 4
  %38 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %39 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @dos_sectors, align 4
  %42 = srem i32 %40, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i8* @DOSCYL(i32 %44)
  %46 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %47 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @DOSSECT(i32 %48, i32 %49)
  %51 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %52 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %54 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %58 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = sub nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @dos_cylsecs, align 4
  %65 = srem i32 %63, %64
  %66 = load i32, i32* @dos_sectors, align 4
  %67 = sdiv i32 %65, %66
  %68 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %69 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @dos_cylsecs, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @dos_sectors, align 4
  %75 = srem i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i8* @DOSCYL(i32 %77)
  %79 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %80 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i8* @DOSSECT(i32 %81, i32 %82)
  %84 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %85 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @memcpy(%struct.dos_partition*, i32*, i32) #1

declare dso_local i8* @DOSCYL(i32) #1

declare dso_local i8* @DOSSECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
