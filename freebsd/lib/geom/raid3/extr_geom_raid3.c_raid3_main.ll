; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/raid3/extr_geom_raid3.c_raid3_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/raid3/extr_geom_raid3.c_raid3_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@G_FLAG_VERBOSE = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown command: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, i32)* @raid3_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid3_main(%struct.gctl_req* %0, i32 %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @G_FLAG_VERBOSE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* @verbose, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %13 = call i8* @gctl_get_ascii(%struct.gctl_req* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i32 @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %46

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i32 @raid3_label(%struct.gctl_req* %24)
  br label %46

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %32 = call i32 @raid3_clear(%struct.gctl_req* %31)
  br label %45

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %39 = call i32 @raid3_dump(%struct.gctl_req* %38)
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %16, %45, %23
  ret void
}

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @raid3_label(%struct.gctl_req*) #1

declare dso_local i32 @raid3_clear(%struct.gctl_req*) #1

declare dso_local i32 @raid3_dump(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
