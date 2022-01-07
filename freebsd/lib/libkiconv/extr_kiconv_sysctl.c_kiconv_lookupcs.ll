; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkiconv/extr_kiconv_sysctl.c_kiconv_lookupcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkiconv/extr_kiconv_sysctl.c_kiconv_lookupcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_cspair_info = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"kern.iconv.cslist\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kiconv_lookupcs(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iconv_cspair_info*, align 8
  %9 = alloca %struct.iconv_cspair_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.iconv_cspair_info* null, i64* %7, i32* null, i32 0)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.iconv_cspair_info* @malloc(i64 %18)
  store %struct.iconv_cspair_info* %19, %struct.iconv_cspair_info** %8, align 8
  %20 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %8, align 8
  %21 = icmp eq %struct.iconv_cspair_info* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %17
  %25 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %8, align 8
  %26 = call i32 @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.iconv_cspair_info* %25, i64* %7, i32* null, i32 0)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %8, align 8
  %30 = call i32 @free(%struct.iconv_cspair_info* %29)
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  %33 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %8, align 8
  store %struct.iconv_cspair_info* %33, %struct.iconv_cspair_info** %9, align 8
  br label %34

34:                                               ; preds = %57, %32
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = udiv i64 %36, 8
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %9, align 8
  %41 = getelementptr inbounds %struct.iconv_cspair_info, %struct.iconv_cspair_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @strcmp(i32 %42, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %9, align 8
  %48 = getelementptr inbounds %struct.iconv_cspair_info, %struct.iconv_cspair_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i32 %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %8, align 8
  %55 = call i32 @free(%struct.iconv_cspair_info* %54)
  store i32 0, i32* %3, align 4
  br label %65

56:                                               ; preds = %46, %39
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  %60 = load %struct.iconv_cspair_info*, %struct.iconv_cspair_info** %9, align 8
  %61 = getelementptr inbounds %struct.iconv_cspair_info, %struct.iconv_cspair_info* %60, i32 1
  store %struct.iconv_cspair_info* %61, %struct.iconv_cspair_info** %9, align 8
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %14
  %64 = load i32, i32* @ENOENT, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %53, %28, %22, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @sysctlbyname(i8*, %struct.iconv_cspair_info*, i64*, i32*, i32) #1

declare dso_local %struct.iconv_cspair_info* @malloc(i64) #1

declare dso_local i32 @free(%struct.iconv_cspair_info*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
