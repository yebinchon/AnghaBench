; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_clone_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_clone_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.isoent* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isoent**, %struct.isoent*)* @isoent_clone_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_clone_tree(%struct.archive_write* %0, %struct.isoent** %1, %struct.isoent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.isoent**, align 8
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca %struct.isoent*, align 8
  %10 = alloca %struct.isoent*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.isoent** %1, %struct.isoent*** %6, align 8
  store %struct.isoent* %2, %struct.isoent** %7, align 8
  %11 = load %struct.isoent*, %struct.isoent** %7, align 8
  store %struct.isoent* %11, %struct.isoent** %8, align 8
  store %struct.isoent* null, %struct.isoent** %9, align 8
  br label %12

12:                                               ; preds = %78, %3
  %13 = load %struct.isoent*, %struct.isoent** %8, align 8
  %14 = call %struct.isoent* @isoent_clone(%struct.isoent* %13)
  store %struct.isoent* %14, %struct.isoent** %10, align 8
  %15 = load %struct.isoent*, %struct.isoent** %10, align 8
  %16 = icmp eq %struct.isoent* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %19 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %18, i32 0, i32 0
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %4, align 4
  br label %86

23:                                               ; preds = %12
  %24 = load %struct.isoent*, %struct.isoent** %9, align 8
  %25 = icmp eq %struct.isoent* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.isoent*, %struct.isoent** %10, align 8
  store %struct.isoent* %27, %struct.isoent** %9, align 8
  %28 = load %struct.isoent**, %struct.isoent*** %6, align 8
  store %struct.isoent* %27, %struct.isoent** %28, align 8
  %29 = load %struct.isoent*, %struct.isoent** %9, align 8
  %30 = load %struct.isoent*, %struct.isoent** %10, align 8
  %31 = getelementptr inbounds %struct.isoent, %struct.isoent* %30, i32 0, i32 1
  store %struct.isoent* %29, %struct.isoent** %31, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.isoent*, %struct.isoent** %9, align 8
  %34 = load %struct.isoent*, %struct.isoent** %10, align 8
  %35 = call i32 @isoent_add_child_tail(%struct.isoent* %33, %struct.isoent* %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.isoent*, %struct.isoent** %8, align 8
  %38 = getelementptr inbounds %struct.isoent, %struct.isoent* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.isoent*, %struct.isoent** %8, align 8
  %43 = getelementptr inbounds %struct.isoent, %struct.isoent* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.isoent*, %struct.isoent** %44, align 8
  %46 = icmp ne %struct.isoent* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.isoent*, %struct.isoent** %8, align 8
  %49 = getelementptr inbounds %struct.isoent, %struct.isoent* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.isoent*, %struct.isoent** %50, align 8
  store %struct.isoent* %51, %struct.isoent** %8, align 8
  %52 = load %struct.isoent*, %struct.isoent** %10, align 8
  store %struct.isoent* %52, %struct.isoent** %9, align 8
  br label %78

53:                                               ; preds = %41, %36
  br label %54

54:                                               ; preds = %76, %53
  %55 = load %struct.isoent*, %struct.isoent** %8, align 8
  %56 = load %struct.isoent*, %struct.isoent** %8, align 8
  %57 = getelementptr inbounds %struct.isoent, %struct.isoent* %56, i32 0, i32 1
  %58 = load %struct.isoent*, %struct.isoent** %57, align 8
  %59 = icmp ne %struct.isoent* %55, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load %struct.isoent*, %struct.isoent** %8, align 8
  %62 = getelementptr inbounds %struct.isoent, %struct.isoent* %61, i32 0, i32 0
  %63 = load %struct.isoent*, %struct.isoent** %62, align 8
  %64 = icmp eq %struct.isoent* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.isoent*, %struct.isoent** %8, align 8
  %67 = getelementptr inbounds %struct.isoent, %struct.isoent* %66, i32 0, i32 1
  %68 = load %struct.isoent*, %struct.isoent** %67, align 8
  store %struct.isoent* %68, %struct.isoent** %8, align 8
  %69 = load %struct.isoent*, %struct.isoent** %9, align 8
  %70 = getelementptr inbounds %struct.isoent, %struct.isoent* %69, i32 0, i32 1
  %71 = load %struct.isoent*, %struct.isoent** %70, align 8
  store %struct.isoent* %71, %struct.isoent** %9, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.isoent*, %struct.isoent** %8, align 8
  %74 = getelementptr inbounds %struct.isoent, %struct.isoent* %73, i32 0, i32 0
  %75 = load %struct.isoent*, %struct.isoent** %74, align 8
  store %struct.isoent* %75, %struct.isoent** %8, align 8
  br label %77

76:                                               ; preds = %65
  br label %54

77:                                               ; preds = %72, %54
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.isoent*, %struct.isoent** %8, align 8
  %80 = load %struct.isoent*, %struct.isoent** %8, align 8
  %81 = getelementptr inbounds %struct.isoent, %struct.isoent* %80, i32 0, i32 1
  %82 = load %struct.isoent*, %struct.isoent** %81, align 8
  %83 = icmp ne %struct.isoent* %79, %82
  br i1 %83, label %12, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.isoent* @isoent_clone(%struct.isoent*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @isoent_add_child_tail(%struct.isoent*, %struct.isoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
