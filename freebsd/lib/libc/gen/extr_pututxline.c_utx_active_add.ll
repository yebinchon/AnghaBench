; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_active_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_active_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futx = type { i32, i32 }

@_PATH_UTX_ACTIVE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futx*)* @utx_active_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utx_active_add(%struct.futx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.futx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.futx, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.futx* %0, %struct.futx** %3, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @_PATH_UTX_ACTIVE, align 4
  %10 = call i32* @futx_open(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fread(%struct.futx* %5, i32 8, i32 1, i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.futx, %struct.futx* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %41 [
    i32 132, label %22
    i32 128, label %23
    i32 130, label %23
    i32 129, label %23
    i32 131, label %23
  ]

22:                                               ; preds = %19
  br label %54

23:                                               ; preds = %19, %19, %19, %19
  %24 = load %struct.futx*, %struct.futx** %3, align 8
  %25 = getelementptr inbounds %struct.futx, %struct.futx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.futx, %struct.futx* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcmp(i32 %26, i32 %28, i32 4)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @SEEK_CUR, align 4
  %34 = call i32 @fseeko(i32* %32, i32 -8, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %64

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.futx, %struct.futx* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 131
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %54

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %19, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ftello(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 8
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %39, %22
  br label %15

55:                                               ; preds = %15
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i32 @fseeko(i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %31
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %7, align 4
  br label %78

69:                                               ; preds = %64
  %70 = load %struct.futx*, %struct.futx** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @fwrite(%struct.futx* %70, i32 8, i32 1, i32* %71)
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %7, align 4
  br label %77

76:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %74
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* @errno, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 1
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32* @futx_open(i32) #1

declare dso_local i32 @fread(%struct.futx*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @ftello(i32*) #1

declare dso_local i32 @fwrite(%struct.futx*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
