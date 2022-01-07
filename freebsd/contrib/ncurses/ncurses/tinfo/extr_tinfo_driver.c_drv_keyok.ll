; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_keyok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_keyok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERR = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @drv_keyok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_keyok(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ERR, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = call i32 (...) @AssertTCB()
  %14 = call i32 (...) @SetSP()
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %49, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @_nc_expand_try(i32 %25, i32 %26, i32* %9, i64 0)
  store i8* %27, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @_nc_remove_key(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %29, %22
  %36 = phi i1 [ false, %22 ], [ %34, %29 ]
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @_nc_add_to_try(i32* %39, i8* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  store i32 0, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %37
  br label %22

50:                                               ; preds = %48, %35
  br label %81

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %79, %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @_nc_expand_try(i32 %55, i32 %56, i32* %9, i64 0)
  store i8* %57, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @_nc_remove_key(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %59, %52
  %66 = phi i1 [ false, %52 ], [ %64, %59 ]
  br i1 %66, label %67, label %80

67:                                               ; preds = %65
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @_nc_add_to_try(i32* %69, i8* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @free(i8* %73)
  store i32 0, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %80

79:                                               ; preds = %67
  br label %52

80:                                               ; preds = %78, %65
  br label %81

81:                                               ; preds = %80, %50
  br label %82

82:                                               ; preds = %81, %3
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @SetSP(...) #1

declare dso_local i8* @_nc_expand_try(i32, i32, i32*, i64) #1

declare dso_local i64 @_nc_remove_key(i32*, i32) #1

declare dso_local i32 @_nc_add_to_try(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
