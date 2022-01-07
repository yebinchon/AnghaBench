; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_sigaltstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_sigaltstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sigaltstack_args = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sigaltstack(%struct.thread* %0, %struct.linux_sigaltstack_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_sigaltstack_args*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_sigaltstack_args* %1, %struct.linux_sigaltstack_args** %5, align 8
  %10 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @copyin(i32* %17, %struct.TYPE_8__* %8, i32 12)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %79

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PTRIN(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @linux_to_bsd_sigaltstack(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi %struct.TYPE_7__* [ %6, %41 ], [ null, %42 ]
  %45 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %49
  %52 = phi %struct.TYPE_7__* [ %7, %49 ], [ null, %50 ]
  %53 = call i32 @kern_sigaltstack(%struct.thread* %36, %struct.TYPE_7__* %44, %struct.TYPE_7__* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %51
  %57 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %58 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTROUT(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bsd_to_linux_sigaltstack(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.linux_sigaltstack_args*, %struct.linux_sigaltstack_args** %5, align 8
  %74 = getelementptr inbounds %struct.linux_sigaltstack_args, %struct.linux_sigaltstack_args* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @copyout(%struct.TYPE_8__* %8, i32* %75, i32 12)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %61, %56, %51
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @copyin(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @linux_to_bsd_sigaltstack(i32) #1

declare dso_local i32 @kern_sigaltstack(%struct.thread*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @PTROUT(i32) #1

declare dso_local i32 @bsd_to_linux_sigaltstack(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
