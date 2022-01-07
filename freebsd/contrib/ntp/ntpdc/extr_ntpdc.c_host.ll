; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@havehost = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"current host is %s\0A\00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"no current host\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@ai_fam_templ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"current host remains %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"still no current host\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"current host set to %s\0A\00", align 1
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
  br label %91

21:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load %struct.parse*, %struct.parse** %3, align 8
  %28 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @AF_INET, align 4
  store i32 %38, i32* @ai_fam_templ, align 4
  br label %64

39:                                               ; preds = %26
  %40 = load %struct.parse*, %struct.parse** %3, align 8
  %41 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @AF_INET6, align 4
  store i32 %51, i32* @ai_fam_templ, align 4
  br label %63

52:                                               ; preds = %39
  %53 = load i64, i64* @havehost, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** @currenthost, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  br label %91

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %37
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.parse*, %struct.parse** %3, align 8
  %67 = getelementptr inbounds %struct.parse, %struct.parse* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @openhost(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** @currenthost, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  br label %91

80:                                               ; preds = %65
  %81 = load i64, i64* @havehost, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = load i8*, i8** @currenthost, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %20, %62, %90, %76
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @openhost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
