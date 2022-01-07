; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk_mbr_enc.c_dos_partition_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk_mbr_enc.c_dos_partition_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dos_partition_dec(i8* %0, %struct.dos_partition* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dos_partition*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dos_partition* %1, %struct.dos_partition** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %11 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %16 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %15, i32 0, i32 1
  store i8 %14, i8* %16, align 1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %21 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %20, i32 0, i32 2
  store i8 %19, i8* %21, align 2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %26 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %25, i32 0, i32 3
  store i8 %24, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %31 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %30, i32 0, i32 4
  store i8 %29, i8* %31, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = load i8, i8* %33, align 1
  %35 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %36 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %35, i32 0, i32 5
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %41 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %40, i32 0, i32 6
  store i8 %39, i8* %41, align 2
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %46 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %45, i32 0, i32 7
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  %49 = call i8* @le32dec(i8* %48)
  %50 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %51 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 12
  %54 = call i8* @le32dec(i8* %53)
  %55 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %56 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local i8* @le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
