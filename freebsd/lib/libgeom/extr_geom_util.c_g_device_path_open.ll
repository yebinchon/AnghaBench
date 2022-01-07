; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_util.c_g_device_path_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_util.c_g_device_path_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32)* @g_device_path_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_device_path_open(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32 -1, i32* %13, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @O_RDWR, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @O_RDONLY, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @open(i8* %15, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @close(i32 %32)
  store i8* null, i8** %4, align 8
  br label %86

34:                                               ; preds = %27
  br label %65

35:                                               ; preds = %22
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %4, align 8
  br label %86

41:                                               ; preds = %35
  %42 = load i32, i32* @_PATH_DEV, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %86

48:                                               ; preds = %41
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @O_RDWR, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @O_RDONLY, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @open(i8* %49, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @free(i8* %62)
  store i8* null, i8** %4, align 8
  br label %86

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @g_sectorsize(i32 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i32, i32* @EFTYPE, align 4
  store i32 %74, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %86

75:                                               ; preds = %65
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @close(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %84, %69, %61, %47, %40, %31
  %87 = load i8*, i8** %4, align 8
  ret i8* %87
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @g_sectorsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
