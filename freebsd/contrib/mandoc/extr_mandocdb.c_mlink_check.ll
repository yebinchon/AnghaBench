; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mlink_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mlink_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i64, i32, i32 }
%struct.mlink = type { i32, i32, i32, i32 }
%struct.str = type { i32 }

@FORM_SRC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Section \22%s\22 manual in %s directory\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Architecture \22%s\22 manual in \22%s\22 directory\00", align 1
@FORM_CAT = common dso_local global i64 0, align 8
@names = common dso_local global i32 0, align 4
@NAME_TITLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Name missing in NAME section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, %struct.mlink*)* @mlink_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlink_check(%struct.mpage* %0, %struct.mlink* %1) #0 {
  %3 = alloca %struct.mpage*, align 8
  %4 = alloca %struct.mlink*, align 8
  %5 = alloca %struct.str*, align 8
  %6 = alloca i32, align 4
  store %struct.mpage* %0, %struct.mpage** %3, align 8
  store %struct.mlink* %1, %struct.mlink** %4, align 8
  %7 = load i64, i64* @FORM_SRC, align 8
  %8 = load %struct.mpage*, %struct.mpage** %3, align 8
  %9 = getelementptr inbounds %struct.mpage, %struct.mpage* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.mpage*, %struct.mpage** %3, align 8
  %14 = getelementptr inbounds %struct.mpage, %struct.mpage* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlink*, %struct.mlink** %4, align 8
  %17 = getelementptr inbounds %struct.mlink, %struct.mlink* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcasecmp(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.mlink*, %struct.mlink** %4, align 8
  %23 = getelementptr inbounds %struct.mlink, %struct.mlink* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mpage*, %struct.mpage** %3, align 8
  %26 = getelementptr inbounds %struct.mpage, %struct.mpage* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlink*, %struct.mlink** %4, align 8
  %29 = getelementptr inbounds %struct.mlink, %struct.mlink* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @say(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %21, %12, %2
  %33 = load %struct.mpage*, %struct.mpage** %3, align 8
  %34 = getelementptr inbounds %struct.mpage, %struct.mpage* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mlink*, %struct.mlink** %4, align 8
  %37 = getelementptr inbounds %struct.mlink, %struct.mlink* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcasecmp(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.mlink*, %struct.mlink** %4, align 8
  %43 = getelementptr inbounds %struct.mlink, %struct.mlink* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpage*, %struct.mpage** %3, align 8
  %46 = getelementptr inbounds %struct.mpage, %struct.mpage* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlink*, %struct.mlink** %4, align 8
  %49 = getelementptr inbounds %struct.mlink, %struct.mlink* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @say(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %32
  %53 = load i64, i64* @FORM_CAT, align 8
  %54 = load %struct.mpage*, %struct.mpage** %3, align 8
  %55 = getelementptr inbounds %struct.mpage, %struct.mpage* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %81

59:                                               ; preds = %52
  %60 = load %struct.mlink*, %struct.mlink** %4, align 8
  %61 = getelementptr inbounds %struct.mlink, %struct.mlink* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ohash_qlookup(i32* @names, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call %struct.str* @ohash_find(i32* @names, i32 %64)
  store %struct.str* %65, %struct.str** %5, align 8
  %66 = load %struct.str*, %struct.str** %5, align 8
  %67 = icmp ne %struct.str* null, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* @NAME_TITLE, align 4
  %71 = load %struct.str*, %struct.str** %5, align 8
  %72 = getelementptr inbounds %struct.str, %struct.str* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %59
  %77 = load %struct.mlink*, %struct.mlink** %4, align 8
  %78 = getelementptr inbounds %struct.mlink, %struct.mlink* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @say(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %58, %76, %59
  ret void
}

declare dso_local i64 @strcasecmp(i32, i32) #1

declare dso_local i32 @say(i32, i8*, ...) #1

declare dso_local i32 @ohash_qlookup(i32*, i32) #1

declare dso_local %struct.str* @ohash_find(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
