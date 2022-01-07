; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_convert_path_separator_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_convert_path_separator_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cab = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cab*, %struct.archive_entry*)* @cab_convert_path_separator_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cab_convert_path_separator_2(%struct.cab* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.cab*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.cab* %0, %struct.cab** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %7 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %8 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %7)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = load %struct.cab*, %struct.cab** %3, align 8
  %12 = getelementptr inbounds %struct.cab, %struct.cab* %11, i32 0, i32 0
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @archive_wstrcpy(%struct.TYPE_3__* %12, i32* %13)
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %38, %10
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.cab*, %struct.cab** %3, align 8
  %18 = getelementptr inbounds %struct.cab, %struct.cab* %17, i32 0, i32 0
  %19 = call i64 @archive_strlen(%struct.TYPE_3__* %18)
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.cab*, %struct.cab** %3, align 8
  %23 = getelementptr inbounds %struct.cab, %struct.cab* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.cab*, %struct.cab** %3, align 8
  %32 = getelementptr inbounds %struct.cab, %struct.cab* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 47, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = load %struct.cab*, %struct.cab** %3, align 8
  %44 = getelementptr inbounds %struct.cab, %struct.cab* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %42, i32* %46)
  br label %48

48:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32* @archive_entry_pathname_w(%struct.archive_entry*) #1

declare dso_local i32 @archive_wstrcpy(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_3__*) #1

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
