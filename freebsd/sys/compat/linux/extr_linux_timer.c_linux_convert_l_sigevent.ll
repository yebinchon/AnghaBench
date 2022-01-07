; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_timer.c_linux_convert_l_sigevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_timer.c_linux_convert_l_sigevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.l_sigevent = type { i32, i32 }
%struct.sigevent = type { i8*, i32 }

@sigev_notify = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@sigev_value = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SIGEV_NONE = common dso_local global i32 0, align 4
@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@_l_sigev_un = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sigev_notify_thread_id = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SIGEV_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l_sigevent*, %struct.sigevent*)* @linux_convert_l_sigevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_convert_l_sigevent(%struct.l_sigevent* %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l_sigevent*, align 8
  %5 = alloca %struct.sigevent*, align 8
  store %struct.l_sigevent* %0, %struct.l_sigevent** %4, align 8
  store %struct.sigevent* %1, %struct.sigevent** %5, align 8
  %6 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %7 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %8 = load i32, i32* @sigev_notify, align 4
  %9 = bitcast %struct.l_sigevent* %6 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = bitcast %struct.sigevent* %7 to { i8*, i32 }*
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %11, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CP(i64 %10, i8* %13, i32 %15, i32 %8)
  %17 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %18 = getelementptr inbounds %struct.l_sigevent, %struct.l_sigevent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %96 [
    i32 130, label %20
    i32 131, label %49
    i32 129, label %53
    i32 128, label %55
  ]

20:                                               ; preds = %2
  %21 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %22 = getelementptr inbounds %struct.l_sigevent, %struct.l_sigevent* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LINUX_SIG_VALID(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %99

28:                                               ; preds = %20
  %29 = load i32, i32* @SIGEV_SIGNAL, align 4
  %30 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %31 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %33 = getelementptr inbounds %struct.l_sigevent, %struct.l_sigevent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @linux_to_bsd_signal(i32 %34)
  %36 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %37 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %39 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sigev_value, i32 0, i32 0), align 4
  %41 = bitcast %struct.l_sigevent* %38 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = bitcast %struct.sigevent* %39 to { i8*, i32 }*
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %43, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTRIN_CP(i64 %42, i8* %45, i32 %47, i32 %40)
  br label %98

49:                                               ; preds = %2
  %50 = load i32, i32* @SIGEV_NONE, align 4
  %51 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %52 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %98

53:                                               ; preds = %2
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %99

55:                                               ; preds = %2
  %56 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %57 = getelementptr inbounds %struct.l_sigevent, %struct.l_sigevent* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LINUX_SIG_VALID(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %3, align 4
  br label %99

63:                                               ; preds = %55
  %64 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %65 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %66 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %68 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_l_sigev_un, i32 0, i32 0), align 4
  %70 = load i32, i32* @sigev_notify_thread_id, align 4
  %71 = bitcast %struct.l_sigevent* %67 to i64*
  %72 = load i64, i64* %71, align 4
  %73 = bitcast %struct.sigevent* %68 to { i8*, i32 }*
  %74 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %73, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @CP2(i64 %72, i8* %75, i32 %77, i32 %69, i32 %70)
  %79 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %80 = getelementptr inbounds %struct.l_sigevent, %struct.l_sigevent* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @linux_to_bsd_signal(i32 %81)
  %83 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %84 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.l_sigevent*, %struct.l_sigevent** %4, align 8
  %86 = load %struct.sigevent*, %struct.sigevent** %5, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sigev_value, i32 0, i32 0), align 4
  %88 = bitcast %struct.l_sigevent* %85 to i64*
  %89 = load i64, i64* %88, align 4
  %90 = bitcast %struct.sigevent* %86 to { i8*, i32 }*
  %91 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %90, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTRIN_CP(i64 %89, i8* %92, i32 %94, i32 %87)
  br label %98

96:                                               ; preds = %2
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %63, %49, %28
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %96, %61, %53, %26
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @CP(i64, i8*, i32, i32) #1

declare dso_local i32 @LINUX_SIG_VALID(i32) #1

declare dso_local i8* @linux_to_bsd_signal(i32) #1

declare dso_local i32 @PTRIN_CP(i64, i8*, i32, i32) #1

declare dso_local i32 @CP2(i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
