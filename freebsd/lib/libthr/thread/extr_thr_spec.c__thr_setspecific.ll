; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spec.c__thr_setspecific.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spec.c__thr_setspecific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pthread = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@PTHREAD_KEYS_MAX = common dso_local global i32 0, align 4
@_thread_keytable = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_setspecific(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @PTHREAD_KEYS_MAX, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_thread_keytable, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %15
  %25 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %25, %struct.pthread** %6, align 8
  %26 = load %struct.pthread*, %struct.pthread** %6, align 8
  %27 = getelementptr inbounds %struct.pthread, %struct.pthread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* @PTHREAD_KEYS_MAX, align 4
  %32 = call i8* @__thr_calloc(i32 %31, i32 4)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %89

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_3__*
  %40 = load %struct.pthread*, %struct.pthread** %6, align 8
  %41 = getelementptr inbounds %struct.pthread, %struct.pthread* %40, i32 0, i32 0
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  br label %42

42:                                               ; preds = %37, %24
  %43 = load %struct.pthread*, %struct.pthread** %6, align 8
  %44 = getelementptr inbounds %struct.pthread, %struct.pthread* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.pthread*, %struct.pthread** %6, align 8
  %56 = getelementptr inbounds %struct.pthread, %struct.pthread* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %54, %51
  br label %69

60:                                               ; preds = %42
  %61 = load i8*, i8** %5, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.pthread*, %struct.pthread** %6, align 8
  %65 = getelementptr inbounds %struct.pthread, %struct.pthread* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i8*, i8** %5, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.pthread*, %struct.pthread** %6, align 8
  %73 = getelementptr inbounds %struct.pthread, %struct.pthread* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32* %71, i32** %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_thread_keytable, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pthread*, %struct.pthread** %6, align 8
  %84 = getelementptr inbounds %struct.pthread, %struct.pthread* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %69, %35, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i8* @__thr_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
