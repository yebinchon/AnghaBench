; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c__kafs_realm_of_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c__kafs_realm_of_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { i8* (%struct.kafs_data*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kafs_realm_of_cell(%struct.kafs_data* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kafs_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.kafs_data* %0, %struct.kafs_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.kafs_data*, %struct.kafs_data** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @file_find_cell(%struct.kafs_data* %10, i8* %11, i8** %12, i32 1)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %21 = call i64 @dns_find_cell(i8* %19, i8* %20, i32 1024)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.kafs_data*, %struct.kafs_data** %5, align 8
  %25 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %24, i32 0, i32 0
  %26 = load i8* (%struct.kafs_data*, i8*)*, i8* (%struct.kafs_data*, i8*)** %25, align 8
  %27 = load %struct.kafs_data*, %struct.kafs_data** %5, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %29 = call i8* %26(%struct.kafs_data* %27, i8* %28)
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %41

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.kafs_data*, %struct.kafs_data** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8**, i8*** %7, align 8
  %40 = call i32 @file_find_cell(%struct.kafs_data* %37, i8* %38, i8** %39, i32 0)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %34, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @file_find_cell(%struct.kafs_data*, i8*, i8**, i32) #1

declare dso_local i64 @dns_find_cell(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
