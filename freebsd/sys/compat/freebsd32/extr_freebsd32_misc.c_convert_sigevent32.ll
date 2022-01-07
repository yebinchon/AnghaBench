; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_convert_sigevent32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_convert_sigevent32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sigevent32 = type { i32 }
%struct.sigevent = type { i32 }

@sigev_notify = common dso_local global i32 0, align 4
@sigev_notify_thread_id = common dso_local global i32 0, align 4
@sigev_signo = common dso_local global i32 0, align 4
@sigev_value = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sigev_notify_kqueue = common dso_local global i32 0, align 4
@sigev_notify_kevent_flags = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_sigevent32(%struct.sigevent32* %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent32*, align 8
  %5 = alloca %struct.sigevent*, align 8
  store %struct.sigevent32* %0, %struct.sigevent32** %4, align 8
  store %struct.sigevent* %1, %struct.sigevent** %5, align 8
  %6 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %7 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %8 = load i32, i32* @sigev_notify, align 4
  %9 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %6, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %7, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CP(i32 %10, i32 %12, i32 %8)
  %14 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %15 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %69 [
    i32 130, label %17
    i32 128, label %18
    i32 129, label %27
    i32 131, label %44
  ]

17:                                               ; preds = %2
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %20 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %21 = load i32, i32* @sigev_notify_thread_id, align 4
  %22 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %19, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %20, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CP(i32 %23, i32 %25, i32 %21)
  br label %27

27:                                               ; preds = %2, %18
  %28 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %29 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %30 = load i32, i32* @sigev_signo, align 4
  %31 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %28, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %29, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CP(i32 %32, i32 %34, i32 %30)
  %36 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %37 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sigev_value, i32 0, i32 0), align 4
  %39 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %36, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %37, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTRIN_CP(i32 %40, i32 %42, i32 %38)
  br label %71

44:                                               ; preds = %2
  %45 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %46 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %47 = load i32, i32* @sigev_notify_kqueue, align 4
  %48 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %45, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %46, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CP(i32 %49, i32 %51, i32 %47)
  %53 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %54 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %55 = load i32, i32* @sigev_notify_kevent_flags, align 4
  %56 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %53, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %54, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CP(i32 %57, i32 %59, i32 %55)
  %61 = load %struct.sigevent32*, %struct.sigevent32** %4, align 8
  %62 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sigev_value, i32 0, i32 0), align 4
  %64 = getelementptr inbounds %struct.sigevent32, %struct.sigevent32* %61, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %62, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTRIN_CP(i32 %65, i32 %67, i32 %63)
  br label %71

69:                                               ; preds = %2
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %44, %27, %17
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @PTRIN_CP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
