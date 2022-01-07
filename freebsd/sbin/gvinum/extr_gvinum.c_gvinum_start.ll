; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"initsize\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"can't start: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_start(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [20 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %84

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %25 [
    i32 83, label %22
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @atoi(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %20
  br label %84

26:                                               ; preds = %22
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @optind, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @optind, align 4
  %32 = load i8**, i8*** %4, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8** %34, i8*** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 512, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %39, %struct.gctl_req** %5, align 8
  %40 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %43 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %45 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* %3)
  %46 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %47 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 4, i32* %7)
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @snprintf(i8* %56, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %59, i8* %60, i32 -1, i8* %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %51

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %73 = call i8* @gctl_issue(%struct.gctl_req* %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %77)
  %79 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %80 = call i32 @gctl_free(%struct.gctl_req* %79)
  br label %84

81:                                               ; preds = %71
  %82 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %83 = call i32 @gctl_free(%struct.gctl_req* %82)
  br label %84

84:                                               ; preds = %81, %76, %25, %13
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
