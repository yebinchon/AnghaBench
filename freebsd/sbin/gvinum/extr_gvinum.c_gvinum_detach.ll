; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid flag: %c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"usage: detach [-f] <subdisk> | <plex>\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"detach failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_detach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %20 [
    i32 102, label %16
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @GV_FLAG_F, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %59

23:                                               ; preds = %16
  br label %9

24:                                               ; preds = %9
  %25 = load i32, i32* @optind, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @optind, align 4
  %29 = load i8**, i8*** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %59

36:                                               ; preds = %24
  %37 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %37, %struct.gctl_req** %6, align 8
  %38 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %39 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* %45)
  %47 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %48 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 4, i32* %7)
  %49 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %50 = call i8* @gctl_issue(%struct.gctl_req* %49)
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %36
  %57 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %58 = call i32 @gctl_free(%struct.gctl_req* %57)
  br label %59

59:                                               ; preds = %56, %34, %20
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
