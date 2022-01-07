; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_calculate_path_table_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_calculate_path_table_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdd = type { i32, i32, i32, %struct.path_table* }
%struct.path_table = type { i32, %struct.isoent** }
%struct.isoent = type { i32, i32* }

@PATH_TABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdd*)* @calculate_path_table_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_path_table_size(%struct.vdd* %0) #0 {
  %2 = alloca %struct.vdd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.path_table*, align 8
  %6 = alloca %struct.isoent**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vdd* %0, %struct.vdd** %2, align 8
  %10 = load %struct.vdd*, %struct.vdd** %2, align 8
  %11 = getelementptr inbounds %struct.vdd, %struct.vdd* %10, i32 0, i32 3
  %12 = load %struct.path_table*, %struct.path_table** %11, align 8
  store %struct.path_table* %12, %struct.path_table** %5, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %73, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.vdd*, %struct.vdd** %2, align 8
  %16 = getelementptr inbounds %struct.vdd, %struct.vdd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %13
  %20 = load %struct.path_table*, %struct.path_table** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.path_table, %struct.path_table* %20, i64 %22
  %24 = getelementptr inbounds %struct.path_table, %struct.path_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %76

28:                                               ; preds = %19
  %29 = load %struct.path_table*, %struct.path_table** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.path_table, %struct.path_table* %29, i64 %31
  %33 = getelementptr inbounds %struct.path_table, %struct.path_table* %32, i32 0, i32 1
  %34 = load %struct.isoent**, %struct.isoent*** %33, align 8
  store %struct.isoent** %34, %struct.isoent*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %69, %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load %struct.isoent**, %struct.isoent*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.isoent*, %struct.isoent** %40, i64 %42
  %44 = load %struct.isoent*, %struct.isoent** %43, align 8
  %45 = getelementptr inbounds %struct.isoent, %struct.isoent* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %57

49:                                               ; preds = %39
  %50 = load %struct.isoent**, %struct.isoent*** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.isoent*, %struct.isoent** %50, i64 %52
  %54 = load %struct.isoent*, %struct.isoent** %53, align 8
  %55 = getelementptr inbounds %struct.isoent, %struct.isoent* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49, %48
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 8, %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %35

72:                                               ; preds = %35
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %13

76:                                               ; preds = %27, %13
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.vdd*, %struct.vdd** %2, align 8
  %79 = getelementptr inbounds %struct.vdd, %struct.vdd* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @PATH_TABLE_BLOCK_SIZE, align 4
  %82 = add nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @PATH_TABLE_BLOCK_SIZE, align 4
  %85 = sdiv i32 %83, %84
  %86 = load i32, i32* @PATH_TABLE_BLOCK_SIZE, align 4
  %87 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %88 = sdiv i32 %86, %87
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.vdd*, %struct.vdd** %2, align 8
  %91 = getelementptr inbounds %struct.vdd, %struct.vdd* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
