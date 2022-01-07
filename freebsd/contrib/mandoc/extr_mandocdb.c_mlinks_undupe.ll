; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mlinks_undupe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mlinks_undupe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i64, %struct.mlink* }
%struct.mlink = type { i64, %struct.mlink*, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@FORM_CAT = common dso_local global i64 0, align 8
@FORM_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@mlinks = common dso_local global i32 0, align 4
@warnings = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Man source exists: %s\00", align 1
@use_all = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*)* @mlinks_undupe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlinks_undupe(%struct.mpage* %0) #0 {
  %2 = alloca %struct.mpage*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlink**, align 8
  %6 = alloca %struct.mlink*, align 8
  %7 = alloca i8*, align 8
  store %struct.mpage* %0, %struct.mpage** %2, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i64, i64* @FORM_CAT, align 8
  %13 = load %struct.mpage*, %struct.mpage** %2, align 8
  %14 = getelementptr inbounds %struct.mpage, %struct.mpage* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.mpage*, %struct.mpage** %2, align 8
  %16 = getelementptr inbounds %struct.mpage, %struct.mpage* %15, i32 0, i32 1
  store %struct.mlink** %16, %struct.mlink*** %5, align 8
  br label %17

17:                                               ; preds = %78, %71, %1
  %18 = load %struct.mlink**, %struct.mlink*** %5, align 8
  %19 = load %struct.mlink*, %struct.mlink** %18, align 8
  store %struct.mlink* %19, %struct.mlink** %6, align 8
  %20 = icmp ne %struct.mlink* null, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i64, i64* @FORM_CAT, align 8
  %23 = load %struct.mlink*, %struct.mlink** %6, align 8
  %24 = getelementptr inbounds %struct.mlink, %struct.mlink* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @FORM_NONE, align 8
  %29 = load %struct.mpage*, %struct.mpage** %2, align 8
  %30 = getelementptr inbounds %struct.mpage, %struct.mpage* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %78

31:                                               ; preds = %21
  %32 = load %struct.mlink*, %struct.mlink** %6, align 8
  %33 = getelementptr inbounds %struct.mlink, %struct.mlink* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = trunc i64 %9 to i32
  %36 = call i32 @strlcpy(i8* %11, i32 %34, i32 %35)
  %37 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* null, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @memcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %44 = call i8* @strrchr(i8* %11, i8 signext 46)
  store i8* %44, i8** %7, align 8
  %45 = icmp ne i8* null, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %31
  %50 = load %struct.mlink*, %struct.mlink** %6, align 8
  %51 = getelementptr inbounds %struct.mlink, %struct.mlink* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = trunc i64 %9 to i32
  %54 = call i32 @strlcat(i8* %11, i32 %52, i32 %53)
  %55 = call i32 @ohash_qlookup(i32* @mlinks, i8* %11)
  %56 = call i32* @ohash_find(i32* @mlinks, i32 %55)
  %57 = icmp eq i32* null, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %78

59:                                               ; preds = %49
  %60 = load i64, i64* @warnings, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.mlink*, %struct.mlink** %6, align 8
  %64 = getelementptr inbounds %struct.mlink, %struct.mlink* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @say(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i64, i64* @use_all, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %78

71:                                               ; preds = %67
  %72 = load %struct.mlink*, %struct.mlink** %6, align 8
  %73 = getelementptr inbounds %struct.mlink, %struct.mlink* %72, i32 0, i32 1
  %74 = load %struct.mlink*, %struct.mlink** %73, align 8
  %75 = load %struct.mlink**, %struct.mlink*** %5, align 8
  store %struct.mlink* %74, %struct.mlink** %75, align 8
  %76 = load %struct.mlink*, %struct.mlink** %6, align 8
  %77 = call i32 @mlink_free(%struct.mlink* %76)
  br label %17

78:                                               ; preds = %70, %58, %27
  %79 = load %struct.mlink**, %struct.mlink*** %5, align 8
  %80 = load %struct.mlink*, %struct.mlink** %79, align 8
  %81 = getelementptr inbounds %struct.mlink, %struct.mlink* %80, i32 0, i32 1
  store %struct.mlink** %81, %struct.mlink*** %5, align 8
  br label %17

82:                                               ; preds = %17
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcat(i8*, i32, i32) #2

declare dso_local i32* @ohash_find(i32*, i32) #2

declare dso_local i32 @ohash_qlookup(i32*, i8*) #2

declare dso_local i32 @say(i32, i8*, i8*) #2

declare dso_local i32 @mlink_free(%struct.mlink*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
