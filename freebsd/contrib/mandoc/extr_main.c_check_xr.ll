; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_check_xr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_check_xr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manpaths = type { i64 }
%struct.mansearch = type { i32, i32, i32*, i32, i32* }
%struct.mandoc_xr = type { i32, i32, i32, i32, i64, %struct.mandoc_xr* }

@check_xr.paths = internal global %struct.manpaths zeroinitializer, align 8
@ARG_NAME = common dso_local global i32 0, align 4
@MANDOCERR_XR_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Xr %s %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Xr %s %s (%d times)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_xr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_xr() #0 {
  %1 = alloca %struct.mansearch, align 8
  %2 = alloca %struct.mandoc_xr*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.manpaths, %struct.manpaths* @check_xr.paths, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @manpath_base(%struct.manpaths* @check_xr.paths)
  br label %8

8:                                                ; preds = %6, %0
  %9 = call %struct.mandoc_xr* (...) @mandoc_xr_get()
  store %struct.mandoc_xr* %9, %struct.mandoc_xr** %2, align 8
  br label %10

10:                                               ; preds = %81, %8
  %11 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %12 = icmp ne %struct.mandoc_xr* %11, null
  br i1 %12, label %13, label %85

13:                                               ; preds = %10
  %14 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %15 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %81

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %1, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %22 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %1, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %1, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @ARG_NAME, align 4
  %27 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %1, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %1, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %30 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %29, i32 0, i32 3
  %31 = call i64 @mansearch(%struct.mansearch* %1, %struct.manpaths* @check_xr.paths, i32 1, i32* %30, i32* null, i64* %3)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %81

34:                                               ; preds = %19
  %35 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %36 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %35, i32 0, i32 3
  %37 = call i32 @fs_search(%struct.mansearch* %1, %struct.manpaths* @check_xr.paths, i32 1, i32* %36, i32* null, i64* %3)
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %81

40:                                               ; preds = %34
  %41 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %42 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32, i32* @MANDOCERR_XR_BAD, align 4
  %47 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %48 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %51 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %55 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %58 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i32, i64, i8*, i32, i32, ...) @mandoc_msg(i32 %46, i32 %49, i64 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  br label %80

61:                                               ; preds = %40
  %62 = load i32, i32* @MANDOCERR_XR_BAD, align 4
  %63 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %64 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %67 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %71 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %74 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %77 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i32, i64, i8*, i32, i32, ...) @mandoc_msg(i32 %62, i32 %65, i64 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %61, %45
  br label %81

81:                                               ; preds = %80, %39, %33, %18
  %82 = load %struct.mandoc_xr*, %struct.mandoc_xr** %2, align 8
  %83 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %82, i32 0, i32 5
  %84 = load %struct.mandoc_xr*, %struct.mandoc_xr** %83, align 8
  store %struct.mandoc_xr* %84, %struct.mandoc_xr** %2, align 8
  br label %10

85:                                               ; preds = %10
  ret void
}

declare dso_local i32 @manpath_base(%struct.manpaths*) #1

declare dso_local %struct.mandoc_xr* @mandoc_xr_get(...) #1

declare dso_local i64 @mansearch(%struct.mansearch*, %struct.manpaths*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @fs_search(%struct.mansearch*, %struct.manpaths*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i64, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
