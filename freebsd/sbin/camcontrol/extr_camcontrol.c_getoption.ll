; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_getoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camcontrol_opts = type { i8*, i32, i32, i32* }

@CC_OR_AMBIGUOUS = common dso_local global i32 0, align 4
@CC_OR_FOUND = common dso_local global i32 0, align 4
@CC_OR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getoption(%struct.camcontrol_opts* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.camcontrol_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.camcontrol_opts*, align 8
  %13 = alloca i32, align 4
  store %struct.camcontrol_opts* %0, %struct.camcontrol_opts** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %7, align 8
  store %struct.camcontrol_opts* %14, %struct.camcontrol_opts** %12, align 8
  br label %15

15:                                               ; preds = %54, %5
  %16 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %17 = icmp ne %struct.camcontrol_opts* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %20 = getelementptr inbounds %struct.camcontrol_opts, %struct.camcontrol_opts* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %57

25:                                               ; preds = %23
  %26 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %27 = getelementptr inbounds %struct.camcontrol_opts, %struct.camcontrol_opts* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call i64 @strncmp(i32* %28, i8* %29, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %36 = getelementptr inbounds %struct.camcontrol_opts, %struct.camcontrol_opts* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %40 = getelementptr inbounds %struct.camcontrol_opts, %struct.camcontrol_opts* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %44 = getelementptr inbounds %struct.camcontrol_opts, %struct.camcontrol_opts* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %11, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @CC_OR_AMBIGUOUS, align 4
  store i32 %51, i32* %6, align 4
  br label %64

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.camcontrol_opts*, %struct.camcontrol_opts** %12, align 8
  %56 = getelementptr inbounds %struct.camcontrol_opts, %struct.camcontrol_opts* %55, i32 1
  store %struct.camcontrol_opts* %56, %struct.camcontrol_opts** %12, align 8
  br label %15

57:                                               ; preds = %23
  %58 = load i32, i32* %13, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @CC_OR_FOUND, align 4
  store i32 %61, i32* %6, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @CC_OR_NOT_FOUND, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %60, %50
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
