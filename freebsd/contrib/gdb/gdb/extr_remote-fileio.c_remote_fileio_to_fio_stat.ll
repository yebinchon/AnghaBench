; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_to_fio_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_to_fio_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.fio_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat*, %struct.fio_stat*)* @remote_fileio_to_fio_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_to_fio_stat(%struct.stat* %0, %struct.fio_stat* %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.fio_stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  store %struct.fio_stat* %1, %struct.fio_stat** %4, align 8
  %5 = load %struct.stat*, %struct.stat** %3, align 8
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %9 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @remote_fileio_to_fio_uint(i64 %7, i32 %10)
  %12 = load %struct.stat*, %struct.stat** %3, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %16 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @remote_fileio_to_fio_mode(i32 %14, i32 %17)
  %19 = load %struct.stat*, %struct.stat** %3, align 8
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %23 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @remote_fileio_to_fio_uint(i64 %21, i32 %24)
  %26 = load %struct.stat*, %struct.stat** %3, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %30 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @remote_fileio_to_fio_uint(i64 %28, i32 %31)
  %33 = load %struct.stat*, %struct.stat** %3, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %37 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @remote_fileio_to_fio_uint(i64 %35, i32 %38)
  %40 = load %struct.stat*, %struct.stat** %3, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %44 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @remote_fileio_to_fio_uint(i64 %42, i32 %45)
  %47 = load %struct.stat*, %struct.stat** %3, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %52 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @remote_fileio_to_fio_ulong(i32 %50, i32 %53)
  %55 = load %struct.stat*, %struct.stat** %3, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %60 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @remote_fileio_to_fio_ulong(i32 %58, i32 %61)
  %63 = load %struct.stat*, %struct.stat** %3, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = load %struct.stat*, %struct.stat** %3, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = sub nsw i64 %71, 1
  %73 = load %struct.stat*, %struct.stat** %3, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = sdiv i64 %72, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %81 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @remote_fileio_to_fio_ulong(i32 %79, i32 %82)
  %84 = load %struct.stat*, %struct.stat** %3, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %88 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @remote_fileio_to_fio_time(i32 %86, i32 %89)
  %91 = load %struct.stat*, %struct.stat** %3, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %95 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @remote_fileio_to_fio_time(i32 %93, i32 %96)
  %98 = load %struct.stat*, %struct.stat** %3, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.fio_stat*, %struct.fio_stat** %4, align 8
  %102 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @remote_fileio_to_fio_time(i32 %100, i32 %103)
  ret void
}

declare dso_local i32 @remote_fileio_to_fio_uint(i64, i32) #1

declare dso_local i32 @remote_fileio_to_fio_mode(i32, i32) #1

declare dso_local i32 @remote_fileio_to_fio_ulong(i32, i32) #1

declare dso_local i32 @remote_fileio_to_fio_time(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
