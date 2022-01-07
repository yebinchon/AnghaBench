; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_sigaltstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_machdep.c_linux_sigaltstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sigaltstack_args = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@sigaltstack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%p, %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sigaltstack(%struct.thread* %0, %struct.linux_sigaltstack_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sigaltstack_args*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sigaltstack_args* %1, %struct.linux_sigaltstack_args** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_9__* %8, i32 0, i32 12)
  %11 = load i32, i32* @sigaltstack, align 4
  %12 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %13 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @LINUX_CTR2(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %17)
  %19 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %25 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @copyin(i32* %26, %struct.TYPE_9__* %8, i32 12)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTRIN(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @linux_to_bsd_sigaltstack(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %32, %2
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %50
  %53 = phi %struct.TYPE_8__* [ %6, %50 ], [ null, %51 ]
  %54 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %55 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %58
  %61 = phi %struct.TYPE_8__* [ %7, %58 ], [ null, %59 ]
  %62 = call i32 @kern_sigaltstack(%struct.thread* %45, %struct.TYPE_8__* %53, %struct.TYPE_8__* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %60
  %66 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %67 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTROUT(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bsd_to_linux_sigaltstack(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %83 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @copyout(%struct.TYPE_9__* %8, i32* %84, i32 12)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %70, %65, %60
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @LINUX_CTR2(i32, i8*, i32*, i32*) #1

declare dso_local i32 @copyin(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @linux_to_bsd_sigaltstack(i32) #1

declare dso_local i32 @kern_sigaltstack(%struct.thread*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @PTROUT(i32) #1

declare dso_local i32 @bsd_to_linux_sigaltstack(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
