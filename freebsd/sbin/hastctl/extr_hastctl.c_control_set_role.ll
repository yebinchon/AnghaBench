; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_control_set_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_control_set_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"resource%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"error%u\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Received error %d from hastd.\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"role%u\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Role unchanged (%s).\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Role changed from %s to %s.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv*, i8*)* @control_set_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_set_role(%struct.nv* %0, i8* %1) #0 {
  %3 = alloca %struct.nv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load %struct.nv*, %struct.nv** %3, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @nv_get_string(%struct.nv* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %52

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.nv*, %struct.nv** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @nv_get_int16(%struct.nv* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %49

33:                                               ; preds = %17
  %34 = load %struct.nv*, %struct.nv** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @nv_get_string(%struct.nv* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strcmp(i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i32, i8*, i8*, ...) @pjdlog_debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  br label %48

44:                                               ; preds = %33
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %10

52:                                               ; preds = %16
  %53 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i8* @nv_get_string(%struct.nv*, i8*, i32) #1

declare dso_local i32 @pjdlog_prefix_set(i8*, i8*) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*, i32) #1

declare dso_local i32 @pjdlog_warning(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
