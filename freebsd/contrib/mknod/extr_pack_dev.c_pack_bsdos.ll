; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mknod/extr_pack_dev.c_pack_bsdos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mknod/extr_pack_dev.c_pack_bsdos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iMajorError = common dso_local global i8* null, align 8
@iMinorError = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"invalid unit number\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid subunit number\00", align 1
@tooManyFields = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8**)* @pack_bsdos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_bsdos(i32 %0, i64* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %38

10:                                               ; preds = %3
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @makedev_12_20(i64 %13, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @major_12_20(i32 %18)
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load i8*, i8** @iMajorError, align 8
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @minor_12_20(i32 %28)
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** @iMinorError, align 8
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  br label %84

38:                                               ; preds = %3
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %80

41:                                               ; preds = %38
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @makedev_12_12_8(i64 %44, i64 %47, i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @major_12_12_8(i32 %52)
  %54 = load i64*, i64** %5, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i8*, i8** @iMajorError, align 8
  %60 = load i8**, i8*** %6, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %41
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @unit_12_12_8(i32 %62)
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %69, align 8
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @subunit_12_12_8(i32 %71)
  %73 = load i64*, i64** %5, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %78, align 8
  br label %79

79:                                               ; preds = %77, %70
  br label %83

80:                                               ; preds = %38
  %81 = load i8*, i8** @tooManyFields, align 8
  %82 = load i8**, i8*** %6, align 8
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %80, %79
  br label %84

84:                                               ; preds = %83, %37
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @makedev_12_20(i64, i64) #1

declare dso_local i64 @major_12_20(i32) #1

declare dso_local i64 @minor_12_20(i32) #1

declare dso_local i32 @makedev_12_12_8(i64, i64, i64) #1

declare dso_local i64 @major_12_12_8(i32) #1

declare dso_local i64 @unit_12_12_8(i32) #1

declare dso_local i64 @subunit_12_12_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
