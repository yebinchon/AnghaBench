; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@GV_CFG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"rsvV\00", align 1
@GV_FLAG_R = common dso_local global i32 0, align 4
@GV_FLAG_S = common dso_local global i32 0, align 4
@GV_FLAG_V = common dso_local global i32 0, align 4
@GV_FLAG_VV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"can't get configuration: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @gvinum_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_list(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %15 = load i32, i32* @GV_CFG_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %2
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  br label %26

26:                                               ; preds = %54, %22
  %27 = load i32, i32* %3, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %53 [
    i32 114, label %33
    i32 115, label %37
    i32 118, label %41
    i32 86, label %45
    i32 63, label %52
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @GV_FLAG_R, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %54

37:                                               ; preds = %31
  %38 = load i32, i32* @GV_FLAG_S, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %54

41:                                               ; preds = %31
  %42 = load i32, i32* @GV_FLAG_V, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %54

45:                                               ; preds = %31
  %46 = load i32, i32* @GV_FLAG_V, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @GV_FLAG_VV, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %31, %52
  store i32 1, i32* %14, align 4
  br label %116

54:                                               ; preds = %45, %41, %37, %33
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* @optind, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @optind, align 4
  %60 = load i8**, i8*** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8** %62, i8*** %4, align 8
  br label %63

63:                                               ; preds = %55, %2
  %64 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %64, %struct.gctl_req** %5, align 8
  %65 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %66 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %68 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* %70)
  %72 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %73 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4, i32* %3)
  %74 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %75 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 4, i32* %6)
  %76 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %77 = trunc i64 %17 to i32
  %78 = call i32 @gctl_rw_param(%struct.gctl_req* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %77, i8* %19)
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @snprintf(i8* %87, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  %90 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %92 = load i8**, i8*** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %90, i8* %91, i32 -1, i8* %96)
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %82

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101, %63
  %103 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %104 = call i8* @gctl_issue(%struct.gctl_req* %103)
  store i8* %104, i8** %9, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %108)
  %110 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %111 = call i32 @gctl_free(%struct.gctl_req* %110)
  store i32 1, i32* %14, align 4
  br label %116

112:                                              ; preds = %102
  %113 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %19)
  %114 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %115 = call i32 @gctl_free(%struct.gctl_req* %114)
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %112, %107, %53
  %117 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %14, align 4
  switch i32 %118, label %120 [
    i32 0, label %119
    i32 1, label %119
  ]

119:                                              ; preds = %116, %116
  ret void

120:                                              ; preds = %116
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #2

declare dso_local i32 @gctl_rw_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @gctl_free(%struct.gctl_req*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
