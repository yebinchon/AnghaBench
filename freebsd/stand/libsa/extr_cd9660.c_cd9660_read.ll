; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.file = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @cd9660_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.open_file*, %struct.open_file** %5, align 8
  %16 = getelementptr inbounds %struct.open_file, %struct.open_file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.file*
  store %struct.file* %18, %struct.file** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %51, %4
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = load %struct.file*, %struct.file** %9, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.file*, %struct.file** %9, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %23
  br label %68

37:                                               ; preds = %28
  %38 = load %struct.open_file*, %struct.open_file** %5, align 8
  %39 = call i32 @buf_read_file(%struct.open_file* %38, i8** %10, i64* %12)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %68

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  br label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  store i64 %52, i64* %13, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @bcopy(i8* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.file*, %struct.file** %9, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %11, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %20

68:                                               ; preds = %42, %36, %20
  %69 = load i64*, i64** %8, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = load i64*, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %14, align 4
  ret i32 %75
}

declare dso_local i32 @buf_read_file(%struct.open_file*, i8**, i64*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
