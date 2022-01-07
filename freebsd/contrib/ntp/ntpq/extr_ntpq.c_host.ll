; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@havehost = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"current host is %s\0A\00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"no current host\0A\00", align 1
@ai_fam_default = common dso_local global i32 0, align 4
@ai_fam_templ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"current host set to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"current host remains %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"still no current host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.parse*, %struct.parse** %3, align 8
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, i64* @havehost, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** @currenthost, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %20

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %13
  br label %84

21:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %22 = load i32, i32* @ai_fam_default, align 4
  store i32 %22, i32* @ai_fam_templ, align 4
  %23 = load %struct.parse*, %struct.parse** %3, align 8
  %24 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load %struct.parse*, %struct.parse** %3, align 8
  %29 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @AF_INET, align 4
  store i32 %39, i32* @ai_fam_templ, align 4
  br label %55

40:                                               ; preds = %27
  %41 = load %struct.parse*, %struct.parse** %3, align 8
  %42 = getelementptr inbounds %struct.parse, %struct.parse* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @AF_INET6, align 4
  store i32 %52, i32* @ai_fam_templ, align 4
  br label %54

53:                                               ; preds = %40
  br label %73

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %38
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.parse*, %struct.parse** %3, align 8
  %58 = getelementptr inbounds %struct.parse, %struct.parse* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ai_fam_templ, align 4
  %66 = call i64 @openhost(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** @currenthost, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  br label %84

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i64, i64* @havehost, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** @currenthost, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  br label %83

80:                                               ; preds = %73
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %20, %83, %68
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @openhost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
