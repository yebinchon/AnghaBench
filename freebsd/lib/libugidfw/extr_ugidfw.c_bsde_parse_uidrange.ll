; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_uidrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_uidrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid uid: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i64, i8*)* @bsde_parse_uidrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsde_parse_uidrange(i8* %0, i64* %1, i64* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %16, align 8
  %20 = call i8* @strsep(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %15, align 8
  %21 = load i8*, i8** %15, align 8
  %22 = call %struct.passwd* @getpwnam(i8* %21)
  store %struct.passwd* %22, %struct.passwd** %12, align 8
  %23 = load %struct.passwd*, %struct.passwd** %12, align 8
  %24 = icmp ne %struct.passwd* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.passwd*, %struct.passwd** %12, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  br label %43

29:                                               ; preds = %5
  %30 = load i8*, i8** %15, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %17, i32 10)
  store i64 %31, i64* %18, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %6, align 4
  br label %78

41:                                               ; preds = %29
  %42 = load i64, i64* %18, align 8
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = load i8*, i8** %16, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %13, align 8
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %6, align 4
  br label %78

50:                                               ; preds = %43
  %51 = load i8*, i8** %16, align 8
  %52 = call %struct.passwd* @getpwnam(i8* %51)
  store %struct.passwd* %52, %struct.passwd** %12, align 8
  %53 = load %struct.passwd*, %struct.passwd** %12, align 8
  %54 = icmp ne %struct.passwd* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.passwd*, %struct.passwd** %12, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  br label %73

59:                                               ; preds = %50
  %60 = load i8*, i8** %16, align 8
  %61 = call i64 @strtoul(i8* %60, i8** %17, i32 10)
  store i64 %61, i64* %18, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = call i32 @snprintf(i8* %67, i64 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 -1, i32* %6, align 4
  br label %78

71:                                               ; preds = %59
  %72 = load i64, i64* %18, align 8
  store i64 %72, i64* %14, align 8
  br label %73

73:                                               ; preds = %71, %55
  %74 = load i64, i64* %13, align 8
  %75 = load i64*, i64** %8, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64*, i64** %9, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %73, %66, %46, %36
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
