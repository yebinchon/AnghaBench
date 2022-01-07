; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_collect_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_collect_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdd = type { i32, i32*, %struct.isoent* }
%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.isoent* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdd*, %struct.isoent*, i32)* @isoent_collect_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_collect_dirs(%struct.vdd* %0, %struct.isoent* %1, i32 %2) #0 {
  %4 = alloca %struct.vdd*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isoent*, align 8
  store %struct.vdd* %0, %struct.vdd** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.isoent*, %struct.isoent** %5, align 8
  %9 = icmp eq %struct.isoent* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.vdd*, %struct.vdd** %4, align 8
  %12 = getelementptr inbounds %struct.vdd, %struct.vdd* %11, i32 0, i32 2
  %13 = load %struct.isoent*, %struct.isoent** %12, align 8
  store %struct.isoent* %13, %struct.isoent** %5, align 8
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.isoent*, %struct.isoent** %5, align 8
  store %struct.isoent* %15, %struct.isoent** %7, align 8
  br label %16

16:                                               ; preds = %66, %14
  %17 = load %struct.vdd*, %struct.vdd** %4, align 8
  %18 = getelementptr inbounds %struct.vdd, %struct.vdd* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.isoent*, %struct.isoent** %7, align 8
  %24 = call i32 @path_table_add_entry(i32* %22, %struct.isoent* %23)
  %25 = load %struct.isoent*, %struct.isoent** %7, align 8
  %26 = getelementptr inbounds %struct.isoent, %struct.isoent* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.isoent*, %struct.isoent** %27, align 8
  %29 = icmp ne %struct.isoent* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.vdd*, %struct.vdd** %4, align 8
  %34 = getelementptr inbounds %struct.vdd, %struct.vdd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.isoent*, %struct.isoent** %7, align 8
  %39 = getelementptr inbounds %struct.isoent, %struct.isoent* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.isoent*, %struct.isoent** %40, align 8
  store %struct.isoent* %41, %struct.isoent** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %66

44:                                               ; preds = %30, %16
  br label %45

45:                                               ; preds = %64, %44
  %46 = load %struct.isoent*, %struct.isoent** %7, align 8
  %47 = load %struct.isoent*, %struct.isoent** %5, align 8
  %48 = icmp ne %struct.isoent* %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.isoent*, %struct.isoent** %7, align 8
  %51 = getelementptr inbounds %struct.isoent, %struct.isoent* %50, i32 0, i32 0
  %52 = load %struct.isoent*, %struct.isoent** %51, align 8
  %53 = icmp eq %struct.isoent* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.isoent*, %struct.isoent** %7, align 8
  %56 = getelementptr inbounds %struct.isoent, %struct.isoent* %55, i32 0, i32 1
  %57 = load %struct.isoent*, %struct.isoent** %56, align 8
  store %struct.isoent* %57, %struct.isoent** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load %struct.isoent*, %struct.isoent** %7, align 8
  %62 = getelementptr inbounds %struct.isoent, %struct.isoent* %61, i32 0, i32 0
  %63 = load %struct.isoent*, %struct.isoent** %62, align 8
  store %struct.isoent* %63, %struct.isoent** %7, align 8
  br label %65

64:                                               ; preds = %54
  br label %45

65:                                               ; preds = %60, %45
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.isoent*, %struct.isoent** %7, align 8
  %68 = load %struct.isoent*, %struct.isoent** %5, align 8
  %69 = icmp ne %struct.isoent* %67, %68
  br i1 %69, label %16, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %71
}

declare dso_local i32 @path_table_add_entry(i32*, %struct.isoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
