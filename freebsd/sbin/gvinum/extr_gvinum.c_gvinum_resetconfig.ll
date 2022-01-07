; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_resetconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_resetconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid flag: %c\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Please enter this command from a tty device\0A\00", align 1
@.str.3 = private unnamed_addr constant [175 x i8] c" WARNING!  This command will completely wipe out your gvinum configuration.\0A All data will be lost.  If you really want to do this, enter the text\0A\0A NO FUTURE\0A Enter text -> \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"NO FUTURE\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\0A No change\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"resetconfig\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"can't reset config: %s\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"gvinum configuration obliterated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_resetconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_resetconfig(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %21 [
    i32 102, label %17
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @GV_FLAG_F, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %66

24:                                               ; preds = %17
  br label %10

25:                                               ; preds = %10
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GV_FLAG_F, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* @STDIN_FILENO, align 4
  %32 = call i32 @isatty(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %66

36:                                               ; preds = %30
  %37 = call i32 @printf(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.3, i64 0, i64 0))
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %39 = load i32, i32* @stdin, align 4
  %40 = call i32 @fgets(i8* %38, i32 32, i32 %39)
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %66

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %25
  %48 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %48, %struct.gctl_req** %5, align 8
  %49 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %50 = call i32 @gctl_ro_param(%struct.gctl_req* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %51 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %52 = call i32 @gctl_ro_param(%struct.gctl_req* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %53 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %54 = call i8* @gctl_issue(%struct.gctl_req* %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %58)
  %60 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %61 = call i32 @gctl_free(%struct.gctl_req* %60)
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %64 = call i32 @gctl_free(%struct.gctl_req* %63)
  %65 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57, %44, %34, %21
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
