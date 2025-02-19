; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/label/extr_geom_label.c_label_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/label/extr_geom_label.c_label_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't refresh metadata from %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Metadata from %s refreshed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @label_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @label_refresh(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %7 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %8 = call i32 @gctl_get_int(%struct.gctl_req* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %13 = call i32 @gctl_error(%struct.gctl_req* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %41

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %38, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @gctl_get_ascii(%struct.gctl_req* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @g_open(i8* %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %30)
  br label %37

32:                                               ; preds = %19
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @g_close(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %15

41:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @g_open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @g_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
