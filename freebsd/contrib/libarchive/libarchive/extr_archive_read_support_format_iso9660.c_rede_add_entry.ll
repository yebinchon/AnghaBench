; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_rede_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_rede_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { %struct.file_info*, %struct.TYPE_2__, %struct.file_info*, i32 }
%struct.TYPE_2__ = type { %struct.file_info** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*)* @rede_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rede_add_entry(%struct.file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.file_info*, align 8
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  %5 = load %struct.file_info*, %struct.file_info** %3, align 8
  %6 = getelementptr inbounds %struct.file_info, %struct.file_info* %5, i32 0, i32 2
  %7 = load %struct.file_info*, %struct.file_info** %6, align 8
  store %struct.file_info* %7, %struct.file_info** %4, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load %struct.file_info*, %struct.file_info** %4, align 8
  %10 = icmp ne %struct.file_info* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.file_info*, %struct.file_info** %4, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.file_info*, %struct.file_info** %4, align 8
  %21 = getelementptr inbounds %struct.file_info, %struct.file_info* %20, i32 0, i32 2
  %22 = load %struct.file_info*, %struct.file_info** %21, align 8
  store %struct.file_info* %22, %struct.file_info** %4, align 8
  br label %8

23:                                               ; preds = %17
  %24 = load %struct.file_info*, %struct.file_info** %4, align 8
  %25 = icmp eq %struct.file_info* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %40

27:                                               ; preds = %23
  %28 = load %struct.file_info*, %struct.file_info** %3, align 8
  %29 = getelementptr inbounds %struct.file_info, %struct.file_info* %28, i32 0, i32 0
  store %struct.file_info* null, %struct.file_info** %29, align 8
  %30 = load %struct.file_info*, %struct.file_info** %3, align 8
  %31 = load %struct.file_info*, %struct.file_info** %4, align 8
  %32 = getelementptr inbounds %struct.file_info, %struct.file_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.file_info**, %struct.file_info*** %33, align 8
  store %struct.file_info* %30, %struct.file_info** %34, align 8
  %35 = load %struct.file_info*, %struct.file_info** %3, align 8
  %36 = getelementptr inbounds %struct.file_info, %struct.file_info* %35, i32 0, i32 0
  %37 = load %struct.file_info*, %struct.file_info** %4, align 8
  %38 = getelementptr inbounds %struct.file_info, %struct.file_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.file_info** %36, %struct.file_info*** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
