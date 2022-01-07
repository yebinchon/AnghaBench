; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_control_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_control_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"resource%u\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Name\09Status\09 Role\09\09Components\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"error%u\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ERR%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"status%u\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%-15s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"role%u\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"localpath%u\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"remoteaddr%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv*)* @control_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_status(%struct.nv* %0) #0 {
  %2 = alloca %struct.nv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load %struct.nv*, %struct.nv** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @nv_get_string(%struct.nv* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %63

15:                                               ; preds = %8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load %struct.nv*, %struct.nv** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @nv_get_int16(%struct.nv* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %60

36:                                               ; preds = %20
  %37 = load %struct.nv*, %struct.nv** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i8* @nv_get_string(%struct.nv* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %44 ]
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = load %struct.nv*, %struct.nv** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @nv_get_string(%struct.nv* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %50)
  %52 = load %struct.nv*, %struct.nv** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i8* @nv_get_string(%struct.nv* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load %struct.nv*, %struct.nv** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i8* @nv_get_string(%struct.nv* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %45, %33
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %8

63:                                               ; preds = %14
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i8* @nv_get_string(%struct.nv*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
