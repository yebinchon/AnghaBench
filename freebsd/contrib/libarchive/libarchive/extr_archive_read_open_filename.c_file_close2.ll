; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_close2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_close2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_file_data = type { i32, i64, i32*, i32, i32 }

@FNT_STDIN = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @file_close2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_close2(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.read_file_data*, align 8
  %6 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.read_file_data*
  store %struct.read_file_data* %8, %struct.read_file_data** %5, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %11 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %2
  %15 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %16 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %22 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISCHR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %20
  %27 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %28 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_ISBLK(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %44, %32
  %34 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %35 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %38 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %41 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @read(i32 %36, i32* %39, i32 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %33, label %47

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %26, %20, %14
  %49 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %50 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FNT_STDIN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %56 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %62 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %66 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.read_file_data*, %struct.read_file_data** %5, align 8
  %68 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %69
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i64 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
