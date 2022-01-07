; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk_mbr_enc.c_dos_partition_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk_mbr_enc.c_dos_partition_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dos_partition_enc(i8* %0, %struct.dos_partition* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dos_partition*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dos_partition* %1, %struct.dos_partition** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %8 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %11, align 1
  %12 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %13 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %14, i8* %16, align 1
  %17 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %18 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %17, i32 0, i32 2
  %19 = load i8, i8* %18, align 2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 %19, i8* %21, align 1
  %22 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %23 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %22, i32 0, i32 3
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8 %24, i8* %26, align 1
  %27 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %28 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %27, i32 0, i32 4
  %29 = load i8, i8* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8 %29, i8* %31, align 1
  %32 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %33 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %32, i32 0, i32 5
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  store i8 %34, i8* %36, align 1
  %37 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %38 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %37, i32 0, i32 6
  %39 = load i8, i8* %38, align 2
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  store i8 %39, i8* %41, align 1
  %42 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %43 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %42, i32 0, i32 7
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  %49 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %50 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32enc(i8* %48, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 12
  %55 = load %struct.dos_partition*, %struct.dos_partition** %4, align 8
  %56 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32enc(i8* %54, i32 %57)
  ret void
}

declare dso_local i32 @le32enc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
