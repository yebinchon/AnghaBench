; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_active_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_active_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futx = type { i32, i32 }

@_PATH_UTX_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futx*)* @utx_active_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utx_active_remove(%struct.futx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.futx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.futx, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.futx* %0, %struct.futx** %3, align 8
  %8 = load i32, i32* @_PATH_UTX_ACTIVE, align 4
  %9 = call i32* @futx_open(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load i32, i32* @ESRCH, align 4
  store i32 %14, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %15

15:                                               ; preds = %53, %35, %13
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fread(%struct.futx* %5, i32 8, i32 1, i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %54

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.futx, %struct.futx* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %53 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %24, %24, %24
  %28 = load %struct.futx*, %struct.futx** %3, align 8
  %29 = getelementptr inbounds %struct.futx, %struct.futx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.futx, %struct.futx* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcmp(i32 %30, i32 %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %15

36:                                               ; preds = %27
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @SEEK_CUR, align 4
  %39 = call i32 @fseeko(i32* %37, i32 -8, i32 %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load %struct.futx*, %struct.futx** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @fwrite(%struct.futx* %44, i32 8, i32 1, i32* %45)
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %48
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %24
  br label %15

54:                                               ; preds = %22
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* @errno, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32* @futx_open(i32) #1

declare dso_local i32 @fread(%struct.futx*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @fwrite(%struct.futx*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
