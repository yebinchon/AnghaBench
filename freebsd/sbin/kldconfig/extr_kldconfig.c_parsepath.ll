; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldconfig/extr_kldconfig.c_parsepath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldconfig/extr_kldconfig.c_parsepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathhead = type { i32 }
%struct.pathentry = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"allocating path element\00", align 1
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pathhead*, i8*, i32)* @parsepath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsepath(%struct.pathhead* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pathhead*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pathentry*, align 8
  store %struct.pathhead* %0, %struct.pathhead** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = call %struct.pathentry* @malloc(i32 8)
  store %struct.pathentry* %16, %struct.pathentry** %8, align 8
  %17 = icmp eq %struct.pathentry* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @strdup(i8* %19)
  %21 = load %struct.pathentry*, %struct.pathentry** %8, align 8
  %22 = getelementptr inbounds %struct.pathentry, %struct.pathentry* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %15
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* @errno, align 4
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.pathhead*, %struct.pathhead** %4, align 8
  %29 = load %struct.pathentry*, %struct.pathentry** %8, align 8
  %30 = load i32, i32* @next, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(%struct.pathhead* %28, %struct.pathentry* %29, i32 %30)
  br label %36

32:                                               ; preds = %12
  %33 = load %struct.pathhead*, %struct.pathhead** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @addpath(%struct.pathhead* %33, i8* %34, i32 1, i32 0)
  br label %36

36:                                               ; preds = %32, %27
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.pathentry* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.pathhead*, %struct.pathentry*, i32) #1

declare dso_local i32 @addpath(%struct.pathhead*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
