; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_reset_file_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_reset_file_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@REDIR_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rar5*)* @reset_file_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_file_context(%struct.rar5* %0) #0 {
  %2 = alloca %struct.rar5*, align 8
  store %struct.rar5* %0, %struct.rar5** %2, align 8
  %3 = load %struct.rar5*, %struct.rar5** %2, align 8
  %4 = getelementptr inbounds %struct.rar5, %struct.rar5* %3, i32 0, i32 0
  %5 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 16)
  %6 = load %struct.rar5*, %struct.rar5** %2, align 8
  %7 = getelementptr inbounds %struct.rar5, %struct.rar5* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = call i32 @blake2sp_init(i32* %8, i32 32)
  %10 = load %struct.rar5*, %struct.rar5** %2, align 8
  %11 = getelementptr inbounds %struct.rar5, %struct.rar5* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.rar5*, %struct.rar5** %2, align 8
  %17 = getelementptr inbounds %struct.rar5, %struct.rar5* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rar5*, %struct.rar5** %2, align 8
  %21 = getelementptr inbounds %struct.rar5, %struct.rar5* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %19
  store i64 %24, i64* %22, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.rar5*, %struct.rar5** %2, align 8
  %27 = getelementptr inbounds %struct.rar5, %struct.rar5* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %15
  %30 = load %struct.rar5*, %struct.rar5** %2, align 8
  %31 = getelementptr inbounds %struct.rar5, %struct.rar5* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.rar5*, %struct.rar5** %2, align 8
  %34 = getelementptr inbounds %struct.rar5, %struct.rar5* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.rar5*, %struct.rar5** %2, align 8
  %37 = getelementptr inbounds %struct.rar5, %struct.rar5* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @REDIR_TYPE_NONE, align 4
  %40 = load %struct.rar5*, %struct.rar5** %2, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.rar5*, %struct.rar5** %2, align 8
  %44 = getelementptr inbounds %struct.rar5, %struct.rar5* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.rar5*, %struct.rar5** %2, align 8
  %47 = call i32 @free_filters(%struct.rar5* %46)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @blake2sp_init(i32*, i32) #1

declare dso_local i32 @free_filters(%struct.rar5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
