; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*)* }
%struct.archive_read = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.rar = type { i32, %struct.TYPE_4__, %struct.rar*, %struct.rar*, %struct.rar*, %struct.rar* }
%struct.TYPE_4__ = type { %struct.rar* }

@__archive_ppmd7_functions = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_rar_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_rar_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.rar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %4 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.rar*
  store %struct.rar* %9, %struct.rar** %3, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %11 = call i32 @free_codes(%struct.archive_read* %10)
  %12 = load %struct.rar*, %struct.rar** %3, align 8
  %13 = getelementptr inbounds %struct.rar, %struct.rar* %12, i32 0, i32 5
  %14 = load %struct.rar*, %struct.rar** %13, align 8
  %15 = call i32 @free(%struct.rar* %14)
  %16 = load %struct.rar*, %struct.rar** %3, align 8
  %17 = getelementptr inbounds %struct.rar, %struct.rar* %16, i32 0, i32 4
  %18 = load %struct.rar*, %struct.rar** %17, align 8
  %19 = call i32 @free(%struct.rar* %18)
  %20 = load %struct.rar*, %struct.rar** %3, align 8
  %21 = getelementptr inbounds %struct.rar, %struct.rar* %20, i32 0, i32 3
  %22 = load %struct.rar*, %struct.rar** %21, align 8
  %23 = call i32 @free(%struct.rar* %22)
  %24 = load %struct.rar*, %struct.rar** %3, align 8
  %25 = getelementptr inbounds %struct.rar, %struct.rar* %24, i32 0, i32 2
  %26 = load %struct.rar*, %struct.rar** %25, align 8
  %27 = call i32 @free(%struct.rar* %26)
  %28 = load %struct.rar*, %struct.rar** %3, align 8
  %29 = getelementptr inbounds %struct.rar, %struct.rar* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.rar*, %struct.rar** %30, align 8
  %32 = call i32 @free(%struct.rar* %31)
  %33 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %34 = load %struct.rar*, %struct.rar** %3, align 8
  %35 = getelementptr inbounds %struct.rar, %struct.rar* %34, i32 0, i32 0
  %36 = call i32 %33(i32* %35)
  %37 = load %struct.rar*, %struct.rar** %3, align 8
  %38 = call i32 @free(%struct.rar* %37)
  %39 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %40 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %43
}

declare dso_local i32 @free_codes(%struct.archive_read*) #1

declare dso_local i32 @free(%struct.rar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
