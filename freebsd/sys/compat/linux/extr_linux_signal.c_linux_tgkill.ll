; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_tgkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_tgkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.linux_tgkill_args = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@SI_LWP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_tgkill(%struct.thread* %0, %struct.linux_tgkill_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_tgkill_args*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_tgkill_args* %1, %struct.linux_tgkill_args** %5, align 8
  %9 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %15 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %13
  %21 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %22 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @LINUX_SIG_VALID(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %26, %20
  %34 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %35 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @linux_to_bsd_signal(i64 %41)
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.linux_tgkill_args*, %struct.linux_tgkill_args** %5, align 8
  %50 = getelementptr inbounds %struct.linux_tgkill_args, %struct.linux_tgkill_args* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.thread* @linux_tdfind(%struct.thread* %45, i64 %48, i64 %51)
  store %struct.thread* %52, %struct.thread** %6, align 8
  %53 = load %struct.thread*, %struct.thread** %6, align 8
  %54 = icmp eq %struct.thread* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @ESRCH, align 4
  store i32 %56, i32* %3, align 4
  br label %81

57:                                               ; preds = %44
  %58 = call i32 @ksiginfo_init(%struct.TYPE_8__* %7)
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @SI_LWP, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.thread*, %struct.thread** %4, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.thread*, %struct.thread** %4, align 8
  %79 = load %struct.thread*, %struct.thread** %6, align 8
  %80 = call i32 @linux_do_tkill(%struct.thread* %78, %struct.thread* %79, %struct.TYPE_8__* %7)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %57, %55, %31, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @LINUX_SIG_VALID(i64) #1

declare dso_local i32 @linux_to_bsd_signal(i64) #1

declare dso_local %struct.thread* @linux_tdfind(%struct.thread*, i64, i64) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_8__*) #1

declare dso_local i32 @linux_do_tkill(%struct.thread*, %struct.thread*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
