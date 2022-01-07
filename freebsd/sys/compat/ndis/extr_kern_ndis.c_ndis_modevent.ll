; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_ndis.c_ndis_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_ndis.c_ndis_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@kernndis_functbl = common dso_local global %struct.TYPE_3__* null, align 8
@ndis_devhead = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ndis_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %84 [
    i32 130, label %10
    i32 129, label %40
    i32 128, label %64
  ]

10:                                               ; preds = %3
  %11 = call i32 (...) @hal_libinit()
  %12 = call i32 (...) @ntoskrnl_libinit()
  %13 = call i32 (...) @windrv_libinit()
  %14 = call i32 (...) @ndis_libinit()
  %15 = call i32 (...) @usbd_libinit()
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernndis_functbl, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  br label %17

17:                                               ; preds = %22, %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @windrv_wrap(i32 %26, i32* %28, i32 %31, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 1
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %8, align 8
  br label %17

38:                                               ; preds = %17
  %39 = call i32 @TAILQ_INIT(i32* @ndis_devhead)
  br label %86

40:                                               ; preds = %3
  %41 = call i32* @TAILQ_FIRST(i32* @ndis_devhead)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = call i32 (...) @ndis_libfini()
  %45 = call i32 (...) @usbd_libfini()
  %46 = call i32 (...) @windrv_libfini()
  %47 = call i32 (...) @ntoskrnl_libfini()
  %48 = call i32 (...) @hal_libfini()
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernndis_functbl, align 8
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %8, align 8
  br label %50

50:                                               ; preds = %55, %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @windrv_unwrap(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 1
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %8, align 8
  br label %50

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %40
  br label %86

64:                                               ; preds = %3
  %65 = call i32 (...) @ndis_libfini()
  %66 = call i32 (...) @usbd_libfini()
  %67 = call i32 (...) @windrv_libfini()
  %68 = call i32 (...) @ntoskrnl_libfini()
  %69 = call i32 (...) @hal_libfini()
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernndis_functbl, align 8
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %8, align 8
  br label %71

71:                                               ; preds = %76, %64
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @windrv_unwrap(i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 1
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %8, align 8
  br label %71

83:                                               ; preds = %71
  br label %86

84:                                               ; preds = %3
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %83, %63, %38
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @hal_libinit(...) #1

declare dso_local i32 @ntoskrnl_libinit(...) #1

declare dso_local i32 @windrv_libinit(...) #1

declare dso_local i32 @ndis_libinit(...) #1

declare dso_local i32 @usbd_libinit(...) #1

declare dso_local i32 @windrv_wrap(i32, i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ndis_libfini(...) #1

declare dso_local i32 @usbd_libfini(...) #1

declare dso_local i32 @windrv_libfini(...) #1

declare dso_local i32 @ntoskrnl_libfini(...) #1

declare dso_local i32 @hal_libfini(...) #1

declare dso_local i32 @windrv_unwrap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
