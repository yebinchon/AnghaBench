; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getgroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.ucred* }
%struct.ucred = type { i32, i32* }
%struct.linux_getgroups_args = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_LINUX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getgroups(%struct.thread* %0, %struct.linux_getgroups_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getgroups_args*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getgroups_args* %1, %struct.linux_getgroups_args** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load %struct.ucred*, %struct.ucred** %13, align 8
  store %struct.ucred* %14, %struct.ucred** %6, align 8
  %15 = load %struct.ucred*, %struct.ucred** %6, align 8
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.ucred*, %struct.ucred** %6, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load %struct.linux_getgroups_args*, %struct.linux_getgroups_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_getgroups_args, %struct.linux_getgroups_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %86

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @M_LINUX, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = call i32* @malloc(i32 %42, i32 %43, i32 %44)
  store i32* %45, i32** %7, align 8
  br label %46

46:                                               ; preds = %50, %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %46

63:                                               ; preds = %46
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.linux_getgroups_args*, %struct.linux_getgroups_args** %5, align 8
  %66 = getelementptr inbounds %struct.linux_getgroups_args, %struct.linux_getgroups_args* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = call i32 @copyout(i32* %64, i32 %67, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @M_LINUX, align 4
  %75 = call i32 @free(i32* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %63
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.thread*, %struct.thread** %4, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %78, %36, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
