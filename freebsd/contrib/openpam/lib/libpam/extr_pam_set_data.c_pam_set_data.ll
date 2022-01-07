; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_set_data.c_pam_set_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_set_data.c_pam_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { void (%struct.TYPE_9__*, i8*, i32)*, i8*, %struct.TYPE_10__*, i32* }

@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_BUF_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_set_data(%struct.TYPE_9__* %0, i8* %1, i8* %2, void (%struct.TYPE_9__*, i8*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (%struct.TYPE_9__*, i8*, i32)*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (%struct.TYPE_9__*, i8*, i32)* %3, void (%struct.TYPE_9__*, i8*, i32)** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @ENTERS(i8* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  br label %16

16:                                               ; preds = %50, %4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i32* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load void (%struct.TYPE_9__*, i8*, i32)*, void (%struct.TYPE_9__*, i8*, i32)** %28, align 8
  %30 = icmp ne void (%struct.TYPE_9__*, i8*, i32)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load void (%struct.TYPE_9__*, i8*, i32)*, void (%struct.TYPE_9__*, i8*, i32)** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @PAM_SUCCESS, align 4
  call void %34(%struct.TYPE_9__* %35, i8* %38, i32 %39)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load void (%struct.TYPE_9__*, i8*, i32)*, void (%struct.TYPE_9__*, i8*, i32)** %9, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store void (%struct.TYPE_9__*, i8*, i32)* %44, void (%struct.TYPE_9__*, i8*, i32)** %46, align 8
  %47 = load i32, i32* @PAM_SUCCESS, align 4
  %48 = call i32 @RETURNC(i32 %47)
  br label %49

49:                                               ; preds = %40, %19
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %10, align 8
  br label %16

54:                                               ; preds = %16
  %55 = call %struct.TYPE_10__* @malloc(i32 32)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %10, align 8
  %56 = icmp eq %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @PAM_BUF_ERR, align 4
  %59 = call i32 @RETURNC(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8*, i8** %7, align 8
  %62 = call i32* @strdup(i8* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = icmp eq i32* %62, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = call i32 @FREE(%struct.TYPE_10__* %67)
  %69 = load i32, i32* @PAM_BUF_ERR, align 4
  %70 = call i32 @RETURNC(i32 %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load void (%struct.TYPE_9__*, i8*, i32)*, void (%struct.TYPE_9__*, i8*, i32)** %9, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store void (%struct.TYPE_9__*, i8*, i32)* %75, void (%struct.TYPE_9__*, i8*, i32)** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %85, align 8
  %86 = load i32, i32* @PAM_SUCCESS, align 4
  %87 = call i32 @RETURNC(i32 %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ENTERS(i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @FREE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
