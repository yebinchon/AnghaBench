; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_str2time_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_str2time_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2time_t(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = call i32 @memset(%struct.tm* %7, i32 0, i32 12)
  %11 = call i32 @memset(%struct.tm* %8, i32 0, i32 12)
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @isspace(i8 zeroext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %12

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @parse_time(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %102

36:                                               ; preds = %26
  %37 = call i64 @time(i32* null)
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %37
  store i64 %40, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %102

41:                                               ; preds = %20
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64*, i64** %5, align 8
  store i64 0, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %102

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i64 @time(i32* null)
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %102

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = call i8* @strptime(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %7)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %102

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %66, %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  br label %61

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = call i8* @strptime(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %8)
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  store i32 %87, i32* %88, align 4
  br label %93

89:                                               ; preds = %75, %69
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  store i32 23, i32* %90, align 4
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  store i32 59, i32* %91, align 4
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  store i32 59, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %79
  %94 = bitcast { i64, i32 }* %9 to i8*
  %95 = bitcast %struct.tm* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 12, i1 false)
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @tm2time(i64 %97, i32 %99, i32 0)
  %101 = load i64*, i64** %5, align 8
  store i64 %100, i64* %101, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %59, %51, %45, %36, %35
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @parse_time(i8*, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i64 @tm2time(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
