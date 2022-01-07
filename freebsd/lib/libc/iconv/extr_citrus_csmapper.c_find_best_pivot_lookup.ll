; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c_find_best_pivot_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_csmapper.c_find_best_pivot_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._lookup = type { i32 }
%struct._region = type { i32 }
%struct.parse_arg = type { i64, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@CS_PIVOT = common dso_local global i32 0, align 4
@_LOOKUP_CASE_IGNORE = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i64*)* @find_best_pivot_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_best_pivot_lookup(i8* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct._lookup*, align 8
  %13 = alloca %struct._region, align 4
  %14 = alloca %struct.parse_arg, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* @CS_PIVOT, align 4
  %25 = load i32, i32* @_LOOKUP_CASE_IGNORE, align 4
  %26 = call i32 @_lookup_seq_open(%struct._lookup** %12, i32 %24, i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

31:                                               ; preds = %5
  %32 = load i64, i64* @ULONG_MAX, align 8
  store i64 %32, i64* %17, align 8
  %33 = load %struct._lookup*, %struct._lookup** %12, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @_lookup_seq_lookup(%struct._lookup* %33, i8* %34, %struct._region* %13)
  store i32 %35, i32* %18, align 4
  br label %36

36:                                               ; preds = %61, %31
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = call i32 @parse_line(%struct.parse_arg* %14, %struct._region* %13)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %64

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @find_dst(%struct.parse_arg* %14, i8* %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %64

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %14, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %17, align 8
  %58 = getelementptr inbounds %struct.parse_arg, %struct.parse_arg* %14, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlcpy(i8* %23, i8* %59, i64 %21)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct._lookup*, %struct._lookup** %12, align 8
  %63 = call i32 @_lookup_seq_next(%struct._lookup* %62, i32* null, %struct._region* %13)
  store i32 %63, i32* %18, align 4
  br label %36

64:                                               ; preds = %49, %43, %36
  %65 = load %struct._lookup*, %struct._lookup** %12, align 8
  %66 = call i32 @_lookup_seq_close(%struct._lookup* %65)
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @ENOENT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

72:                                               ; preds = %64
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* @ULONG_MAX, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @ENOENT, align 4
  store i32 %77, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @strlcpy(i8* %79, i8* %23, i64 %80)
  %82 = load i64*, i64** %11, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i64, i64* %17, align 8
  %86 = load i64*, i64** %11, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %78
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %87, %76, %70, %29
  %89 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_lookup_seq_open(%struct._lookup**, i32, i32) #2

declare dso_local i32 @_lookup_seq_lookup(%struct._lookup*, i8*, %struct._region*) #2

declare dso_local i32 @parse_line(%struct.parse_arg*, %struct._region*) #2

declare dso_local i32 @find_dst(%struct.parse_arg*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @_lookup_seq_next(%struct._lookup*, i32*, %struct._region*) #2

declare dso_local i32 @_lookup_seq_close(%struct._lookup*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
