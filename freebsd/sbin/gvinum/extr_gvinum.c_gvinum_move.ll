; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"no destination or object(s) to move specified\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"no object(s) to move specified\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"can't move object(s):  %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_move(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %26 [
    i32 102, label %21
    i32 63, label %25
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @GV_FLAG_F, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %27

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %19, %25
  br label %88

27:                                               ; preds = %21
  br label %14

28:                                               ; preds = %14
  %29 = load i32, i32* @optind, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @optind, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8** %35, i8*** %4, align 8
  br label %36

36:                                               ; preds = %28, %2
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %42 [
    i32 0, label %38
    i32 1, label %40
  ]

38:                                               ; preds = %36
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %88

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %88

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %44, %struct.gctl_req** %5, align 8
  %45 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %46 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %48 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %49 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %50 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4, i32* %3)
  %51 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %52 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 4, i32* %8)
  %53 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 -1, i8* %56)
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %74, %43
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @snprintf(i8* %63, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  %66 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %66, i8* %67, i32 -1, i8* %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %79 = call i8* @gctl_issue(%struct.gctl_req* %78)
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %87 = call i32 @gctl_free(%struct.gctl_req* %86)
  br label %88

88:                                               ; preds = %85, %40, %38, %26
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
