; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_getarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@OPT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"***Association index `%s' invalid/undecodable\0A\00", align 1
@numassoc = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"***No associations found, `%s' unknown\0A\00", align 1
@assoc_cache = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"***Illegal unsigned value %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"***Illegal integer value %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"***Version must be either 4 or 6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_4__*)* @getarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getarg(i8* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OPT, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  switch i32 %12, label %107 [
    i32 129, label %13
    i32 131, label %17
    i32 128, label %25
    i32 130, label %77
    i32 132, label %88
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %107

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = call i32 @getnetnum(i8* %18, i32* %20, i32* null, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %108

24:                                               ; preds = %17
  br label %107

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 38, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @atouint(i8* %33, i32* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 0, i32* %4, align 4
  br label %108

40:                                               ; preds = %31
  %41 = load i32, i32* @numassoc, align 4
  %42 = icmp eq i32 0, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 @dogetassoc(i32 %44)
  %46 = load i32, i32* @numassoc, align 4
  %47 = icmp eq i32 0, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 0, i32* %4, align 4
  br label %108

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @numassoc, align 4
  %56 = call i32 @min(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @assoc_cache, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %107

66:                                               ; preds = %25
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = call i32 @atouint(i8* %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  store i32 0, i32* %4, align 4
  br label %108

76:                                               ; preds = %66
  br label %107

77:                                               ; preds = %3
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i32 @atoint(i8* %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  store i32 0, i32* %4, align 4
  br label %108

87:                                               ; preds = %77
  br label %107

88:                                               ; preds = %3
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 6, i32* %94, align 8
  br label %106

95:                                               ; preds = %88
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 4, i32* %101, align 8
  br label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %108

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %92
  br label %107

107:                                              ; preds = %3, %106, %87, %76, %53, %24, %13
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %102, %83, %72, %48, %36, %23
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @getnetnum(i8*, i32*, i32*, i32) #1

declare dso_local i32 @atouint(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dogetassoc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @atoint(i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
