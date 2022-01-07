; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_run_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_command = type { i32, i32 (%struct.gctl_req*, i32)*, i32 }
%struct.gctl_req = type { i8* }

@GEOM_CLASS_CMDS = common dso_local global i32 0, align 4
@GEOM_STD_CMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %s.\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Command '%s' not available; try 'load' first.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@G_FLAG_LOADKLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@gclass_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@version = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @run_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.g_command*, align 8
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @GEOM_CLASS_CMDS, align 4
  %14 = call %struct.g_command* @find_command(i8* %12, i32 %13)
  store %struct.g_command* %14, %struct.g_command** %5, align 8
  %15 = load %struct.g_command*, %struct.g_command** %5, align 8
  %16 = icmp eq %struct.g_command* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @GEOM_STD_CMDS, align 4
  %22 = call %struct.g_command* @find_command(i8* %20, i32 %21)
  store %struct.g_command* %22, %struct.g_command** %5, align 8
  %23 = load %struct.g_command*, %struct.g_command** %5, align 8
  %24 = icmp eq %struct.g_command* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %25, %17
  %32 = load %struct.g_command*, %struct.g_command** %5, align 8
  %33 = getelementptr inbounds %struct.g_command, %struct.g_command* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @std_available(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @exit(i32 %42) #3
  unreachable

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.g_command*, %struct.g_command** %5, align 8
  %47 = getelementptr inbounds %struct.g_command, %struct.g_command* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @G_FLAG_LOADKLD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (...) @load_module()
  br label %54

54:                                               ; preds = %52, %45
  %55 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %55, %struct.gctl_req** %6, align 8
  %56 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %57 = load i8*, i8** @gclass_name, align 8
  %58 = call i32 @gctl_ro_param(%struct.gctl_req* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* %57)
  %59 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @gctl_ro_param(%struct.gctl_req* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* %62)
  %64 = load i8*, i8** @version, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %68 = load i8*, i8** @version, align 8
  %69 = call i32 @gctl_ro_param(%struct.gctl_req* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 1, i8* %68)
  br label %70

70:                                               ; preds = %66, %54
  %71 = load %struct.g_command*, %struct.g_command** %5, align 8
  %72 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %73 = call i32 @parse_arguments(%struct.g_command* %71, %struct.gctl_req* %72, i32* %3, i8*** %4)
  %74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %75 = call i32 @bzero(i8* %74, i32 4096)
  %76 = load %struct.g_command*, %struct.g_command** %5, align 8
  %77 = getelementptr inbounds %struct.g_command, %struct.g_command* %76, i32 0, i32 1
  %78 = load i32 (%struct.gctl_req*, i32)*, i32 (%struct.gctl_req*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.gctl_req*, i32)* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = load %struct.g_command*, %struct.g_command** %5, align 8
  %82 = call i32 @set_flags(%struct.g_command* %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.g_command*, %struct.g_command** %5, align 8
  %84 = getelementptr inbounds %struct.g_command, %struct.g_command* %83, i32 0, i32 1
  %85 = load i32 (%struct.gctl_req*, i32)*, i32 (%struct.gctl_req*, i32)** %84, align 8
  %86 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 %85(%struct.gctl_req* %86, i32 %87)
  %89 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %90 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %7, align 8
  br label %98

92:                                               ; preds = %70
  %93 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %95 = call i32 @gctl_rw_param(%struct.gctl_req* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 4096, i8* %94)
  %96 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %97 = call i8* @gctl_issue(%struct.gctl_req* %96)
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %92, %80
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i64 @strncmp(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %116 = call i32 @gctl_free(%struct.gctl_req* %115)
  %117 = load i32, i32* @EXIT_FAILURE, align 4
  %118 = call i32 @exit(i32 %117) #3
  unreachable

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %101, %98
  %121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %122 = load i8, i8* %121, align 16
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %130 = call i32 @gctl_free(%struct.gctl_req* %129)
  %131 = load i64, i64* @verbose, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %128
  %136 = load i32, i32* @EXIT_SUCCESS, align 4
  %137 = call i32 @exit(i32 %136) #3
  unreachable
}

declare dso_local %struct.g_command* @find_command(i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @std_available(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @load_module(...) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i32 @parse_arguments(%struct.g_command*, %struct.gctl_req*, i32*, i8***) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @set_flags(%struct.g_command*) #1

declare dso_local i32 @gctl_rw_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
