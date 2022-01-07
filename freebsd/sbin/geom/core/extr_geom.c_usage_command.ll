; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_usage_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_usage_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_command = type { i8*, i32, %struct.g_option*, i32* }
%struct.g_option = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s %s %s %s\0A\00", align 1
@comm = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@G_FLAG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" [-v]\00", align 1
@G_TYPE_BOOL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_command*, i8*)* @usage_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_command(%struct.g_command* %0, i8* %1) #0 {
  %3 = alloca %struct.g_command*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.g_command* %0, %struct.g_command** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.g_command*, %struct.g_command** %3, align 8
  %11 = getelementptr inbounds %struct.g_command, %struct.g_command* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.g_command*, %struct.g_command** %3, align 8
  %16 = getelementptr inbounds %struct.g_command, %struct.g_command* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i8* @strdup(i32* %17)
  store i8* %18, i8** %8, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %28, %27, %14
  %20 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %19

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** @comm, align 8
  %32 = load %struct.g_command*, %struct.g_command** %3, align 8
  %33 = getelementptr inbounds %struct.g_command, %struct.g_command* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i8* %34, i8* %35)
  br label %19

37:                                               ; preds = %19
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @free(i8* %38)
  br label %122

40:                                               ; preds = %2
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** @comm, align 8
  %44 = load %struct.g_command*, %struct.g_command** %3, align 8
  %45 = getelementptr inbounds %struct.g_command, %struct.g_command* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %43, i8* %46)
  %48 = load %struct.g_command*, %struct.g_command** %3, align 8
  %49 = getelementptr inbounds %struct.g_command, %struct.g_command* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @G_FLAG_VERBOSE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %40
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %116, %57
  %59 = load %struct.g_command*, %struct.g_command** %3, align 8
  %60 = getelementptr inbounds %struct.g_command, %struct.g_command* %59, i32 0, i32 2
  %61 = load %struct.g_option*, %struct.g_option** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.g_option, %struct.g_option* %61, i64 %63
  store %struct.g_option* %64, %struct.g_option** %5, align 8
  %65 = load %struct.g_option*, %struct.g_option** %5, align 8
  %66 = getelementptr inbounds %struct.g_option, %struct.g_option* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %119

70:                                               ; preds = %58
  %71 = load %struct.g_option*, %struct.g_option** %5, align 8
  %72 = getelementptr inbounds %struct.g_option, %struct.g_option* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.g_option*, %struct.g_option** %5, align 8
  %77 = call i64 @G_OPT_TYPE(%struct.g_option* %76)
  %78 = load i64, i64* @G_TYPE_BOOL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.g_option*, %struct.g_option** %5, align 8
  %89 = getelementptr inbounds %struct.g_option, %struct.g_option* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load %struct.g_option*, %struct.g_option** %5, align 8
  %93 = call i64 @G_OPT_TYPE(%struct.g_option* %92)
  %94 = load i64, i64* @G_TYPE_BOOL, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load i32, i32* @stderr, align 4
  %98 = load %struct.g_option*, %struct.g_option** %5, align 8
  %99 = getelementptr inbounds %struct.g_option, %struct.g_option* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %96, %86
  %103 = load %struct.g_option*, %struct.g_option** %5, align 8
  %104 = getelementptr inbounds %struct.g_option, %struct.g_option* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.g_option*, %struct.g_option** %5, align 8
  %109 = call i64 @G_OPT_TYPE(%struct.g_option* %108)
  %110 = load i64, i64* @G_TYPE_BOOL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %102
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %58

119:                                              ; preds = %69
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %37
  ret void
}

declare dso_local i8* @strdup(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @G_OPT_TYPE(%struct.g_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
