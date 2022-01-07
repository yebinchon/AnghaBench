; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@GV_FLAG_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"can't remove: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_rm(i32 %0, i8** %1) #0 {
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
  store i32 0, i32* %6, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %26 [
    i32 102, label %18
    i32 114, label %22
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @GV_FLAG_F, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @GV_FLAG_R, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %16
  br label %81

27:                                               ; preds = %22, %18
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* @optind, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @optind, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8** %35, i8*** %4, align 8
  %36 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %36, %struct.gctl_req** %5, align 8
  %37 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %38 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %40 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %42 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* %3)
  %43 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %44 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 4, i32* %6)
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @snprintf(i8* %53, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %58 = load i8**, i8*** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %56, i8* %57, i32 -1, i8* %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %48

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %28
  %69 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %70 = call i8* @gctl_issue(%struct.gctl_req* %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %74)
  %76 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %77 = call i32 @gctl_free(%struct.gctl_req* %76)
  br label %81

78:                                               ; preds = %68
  %79 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %80 = call i32 @gctl_free(%struct.gctl_req* %79)
  br label %81

81:                                               ; preds = %78, %73, %26
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

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
