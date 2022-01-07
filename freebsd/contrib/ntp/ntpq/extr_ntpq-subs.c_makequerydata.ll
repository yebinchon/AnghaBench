; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_makequerydata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_makequerydata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i64, i64 }

@MAXLIST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"***Ignoring variables starting with `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varlist*, i64*, i8*)* @makequerydata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makequerydata(%struct.varlist* %0, i64* %1, i8* %2) #0 {
  %4 = alloca %struct.varlist*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.varlist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.varlist* %0, %struct.varlist** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = load %struct.varlist*, %struct.varlist** %4, align 8
  store %struct.varlist* %18, %struct.varlist** %7, align 8
  br label %19

19:                                               ; preds = %108, %3
  %20 = load %struct.varlist*, %struct.varlist** %7, align 8
  %21 = load %struct.varlist*, %struct.varlist** %4, align 8
  %22 = load i32, i32* @MAXLIST, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.varlist, %struct.varlist* %21, i64 %23
  %25 = icmp ult %struct.varlist* %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.varlist*, %struct.varlist** %7, align 8
  %28 = getelementptr inbounds %struct.varlist, %struct.varlist* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i1 [ false, %19 ], [ %30, %26 ]
  br i1 %32, label %33, label %111

33:                                               ; preds = %31
  %34 = load %struct.varlist*, %struct.varlist** %7, align 8
  %35 = getelementptr inbounds %struct.varlist, %struct.varlist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @strlen(i64 %36)
  store i64 %37, i64* %10, align 8
  %38 = load %struct.varlist*, %struct.varlist** %7, align 8
  %39 = getelementptr inbounds %struct.varlist, %struct.varlist* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i64 0, i64* %11, align 8
  br label %48

43:                                               ; preds = %33
  %44 = load %struct.varlist*, %struct.varlist** %7, align 8
  %45 = getelementptr inbounds %struct.varlist, %struct.varlist* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @strlen(i64 %46)
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = add i64 %51, %55
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %57, %58
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = add i64 %56, %61
  store i64 %62, i64* %12, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %48
  %69 = load i32, i32* @stderr, align 4
  %70 = load %struct.varlist*, %struct.varlist** %7, align 8
  %71 = getelementptr inbounds %struct.varlist, %struct.varlist* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %72)
  br label %111

74:                                               ; preds = %48
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  store i8 44, i8* %79, align 1
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.varlist*, %struct.varlist** %7, align 8
  %84 = getelementptr inbounds %struct.varlist, %struct.varlist* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @memcpy(i8* %82, i8* %86, i64 %87)
  %89 = load i64, i64* %10, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %81
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  store i8 61, i8* %95, align 1
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.varlist*, %struct.varlist** %7, align 8
  %99 = getelementptr inbounds %struct.varlist, %struct.varlist* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @memcpy(i8* %97, i8* %101, i64 %102)
  %104 = load i64, i64* %11, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %8, align 8
  br label %107

107:                                              ; preds = %94, %81
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.varlist*, %struct.varlist** %7, align 8
  %110 = getelementptr inbounds %struct.varlist, %struct.varlist* %109, i32 1
  store %struct.varlist* %110, %struct.varlist** %7, align 8
  br label %19

111:                                              ; preds = %68, %31
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = load i64*, i64** %5, align 8
  store i64 %116, i64* %117, align 8
  ret void
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
