; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_free_codes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_free_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rar = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_read*)* @free_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_codes(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.rar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %4 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.rar*
  store %struct.rar* %9, %struct.rar** %3, align 8
  %10 = load %struct.rar*, %struct.rar** %3, align 8
  %11 = getelementptr inbounds %struct.rar, %struct.rar* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @free(i32 %13)
  %15 = load %struct.rar*, %struct.rar** %3, align 8
  %16 = getelementptr inbounds %struct.rar, %struct.rar* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free(i32 %18)
  %20 = load %struct.rar*, %struct.rar** %3, align 8
  %21 = getelementptr inbounds %struct.rar, %struct.rar* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free(i32 %23)
  %25 = load %struct.rar*, %struct.rar** %3, align 8
  %26 = getelementptr inbounds %struct.rar, %struct.rar* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free(i32 %28)
  %30 = load %struct.rar*, %struct.rar** %3, align 8
  %31 = getelementptr inbounds %struct.rar, %struct.rar* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free(i32 %33)
  %35 = load %struct.rar*, %struct.rar** %3, align 8
  %36 = getelementptr inbounds %struct.rar, %struct.rar* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @free(i32 %38)
  %40 = load %struct.rar*, %struct.rar** %3, align 8
  %41 = getelementptr inbounds %struct.rar, %struct.rar* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @free(i32 %43)
  %45 = load %struct.rar*, %struct.rar** %3, align 8
  %46 = getelementptr inbounds %struct.rar, %struct.rar* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @free(i32 %48)
  %50 = load %struct.rar*, %struct.rar** %3, align 8
  %51 = getelementptr inbounds %struct.rar, %struct.rar* %50, i32 0, i32 3
  %52 = call i32 @memset(%struct.TYPE_4__* %51, i32 0, i32 8)
  %53 = load %struct.rar*, %struct.rar** %3, align 8
  %54 = getelementptr inbounds %struct.rar, %struct.rar* %53, i32 0, i32 2
  %55 = call i32 @memset(%struct.TYPE_4__* %54, i32 0, i32 8)
  %56 = load %struct.rar*, %struct.rar** %3, align 8
  %57 = getelementptr inbounds %struct.rar, %struct.rar* %56, i32 0, i32 1
  %58 = call i32 @memset(%struct.TYPE_4__* %57, i32 0, i32 8)
  %59 = load %struct.rar*, %struct.rar** %3, align 8
  %60 = getelementptr inbounds %struct.rar, %struct.rar* %59, i32 0, i32 0
  %61 = call i32 @memset(%struct.TYPE_4__* %60, i32 0, i32 8)
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
