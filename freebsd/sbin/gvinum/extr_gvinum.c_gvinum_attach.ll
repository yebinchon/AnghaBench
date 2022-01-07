; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"usage:\09attach <subdisk> <plex> [rename] [<plexoffset>]\0A\09attach <plex> <volume> [rename]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"attach failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_attach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  br label %67

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 3
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 4
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strtol(i8* %28, i32* null, i32 0)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %25, %22
  br label %36

31:                                               ; preds = %16
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strtol(i8* %34, i32* null, i32 0)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %30
  br label %37

37:                                               ; preds = %36, %13
  %38 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %38, %struct.gctl_req** %5, align 8
  %39 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %40 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %42 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1, i8* %46)
  %48 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* %51)
  %53 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %54 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 4, i32* %8)
  %55 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %56 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* %7)
  %57 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %58 = call i8* @gctl_issue(%struct.gctl_req* %57)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %37
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %37
  %65 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %66 = call i32 @gctl_free(%struct.gctl_req* %65)
  br label %67

67:                                               ; preds = %64, %11
  ret void
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

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
