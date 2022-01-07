; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"MSCF\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_cab_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cab_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 64
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = call i8* @__archive_read_ahead(%struct.archive_read* %16, i32 8, i32* null)
  store i8* %17, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %88

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @memcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 64, i32* %3, align 4
  br label %88

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 77
  br i1 %30, label %31, label %87

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 90
  br i1 %36, label %37, label %87

37:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  store i32 4096, i32* %9, align 4
  br label %38

38:                                               ; preds = %79, %55, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 131072
  br i1 %40, label %41, label %86

41:                                               ; preds = %38
  %42 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i8* @__archive_read_ahead(%struct.archive_read* %42, i32 %45, i32* %7)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 128
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %88

55:                                               ; preds = %49
  br label %38

56:                                               ; preds = %41
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %74, %56
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = icmp ult i8* %63, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @find_cab_magic(i8* %70)
  store i32 %71, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 64, i32* %3, align 4
  br label %88

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %6, align 8
  br label %61

79:                                               ; preds = %61
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %38

86:                                               ; preds = %38
  br label %87

87:                                               ; preds = %86, %31, %25
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %73, %54, %24, %19, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @find_cab_magic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
