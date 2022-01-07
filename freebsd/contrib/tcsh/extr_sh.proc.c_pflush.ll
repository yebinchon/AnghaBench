; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i64, i64, i32, %struct.process*, i32, %struct.process* }
%struct.TYPE_2__ = type { %struct.process* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"BUG: process flushed twice\00", align 1
@pcurrjob = common dso_local global %struct.process* null, align 8
@PNEEDNOTE = common dso_local global i32 0, align 4
@pmaxindex = common dso_local global i32 0, align 4
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.process*)* @pflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pflush(%struct.process* %0) #0 {
  %2 = alloca %struct.process*, align 8
  %3 = alloca %struct.process*, align 8
  %4 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %2, align 8
  %5 = load %struct.process*, %struct.process** %2, align 8
  %6 = getelementptr inbounds %struct.process, %struct.process* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @CGETS(i32 17, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %80

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %21, %12
  %14 = load %struct.process*, %struct.process** %2, align 8
  %15 = getelementptr inbounds %struct.process, %struct.process* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.process*, %struct.process** %2, align 8
  %18 = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.process*, %struct.process** %2, align 8
  %23 = getelementptr inbounds %struct.process, %struct.process* %22, i32 0, i32 5
  %24 = load %struct.process*, %struct.process** %23, align 8
  store %struct.process* %24, %struct.process** %2, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.process*, %struct.process** %2, align 8
  %27 = call i32 @pclrcurr(%struct.process* %26)
  %28 = load %struct.process*, %struct.process** %2, align 8
  %29 = load %struct.process*, %struct.process** @pcurrjob, align 8
  %30 = icmp eq %struct.process* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.process* null, %struct.process** @pcurrjob, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.process*, %struct.process** %2, align 8
  %34 = getelementptr inbounds %struct.process, %struct.process* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  %36 = load %struct.process*, %struct.process** %2, align 8
  store %struct.process* %36, %struct.process** %3, align 8
  br label %37

37:                                               ; preds = %48, %32
  %38 = load %struct.process*, %struct.process** %3, align 8
  %39 = getelementptr inbounds %struct.process, %struct.process* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.process*, %struct.process** %3, align 8
  %41 = getelementptr inbounds %struct.process, %struct.process* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @PNEEDNOTE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.process*, %struct.process** %3, align 8
  %45 = getelementptr inbounds %struct.process, %struct.process* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load %struct.process*, %struct.process** %3, align 8
  %50 = getelementptr inbounds %struct.process, %struct.process* %49, i32 0, i32 5
  %51 = load %struct.process*, %struct.process** %50, align 8
  store %struct.process* %51, %struct.process** %3, align 8
  %52 = load %struct.process*, %struct.process** %2, align 8
  %53 = icmp ne %struct.process* %51, %52
  br i1 %53, label %37, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @pmaxindex, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %59, %struct.process** %3, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %74, %58
  %61 = load %struct.process*, %struct.process** %3, align 8
  %62 = icmp ne %struct.process* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.process*, %struct.process** %3, align 8
  %65 = getelementptr inbounds %struct.process, %struct.process* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.process*, %struct.process** %3, align 8
  %71 = getelementptr inbounds %struct.process, %struct.process* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.process*, %struct.process** %3, align 8
  %76 = getelementptr inbounds %struct.process, %struct.process* %75, i32 0, i32 3
  %77 = load %struct.process*, %struct.process** %76, align 8
  store %struct.process* %77, %struct.process** %3, align 8
  br label %60

78:                                               ; preds = %60
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* @pmaxindex, align 4
  br label %80

80:                                               ; preds = %9, %78, %54
  ret void
}

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @pclrcurr(%struct.process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
