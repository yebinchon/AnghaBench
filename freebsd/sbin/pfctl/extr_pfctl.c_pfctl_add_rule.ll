; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_add_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.pf_ruleset }
%struct.pf_ruleset = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.pf_rule = type { %struct.TYPE_12__, %struct.TYPE_9__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }

@PF_RULESET_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid rule type %d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pfctl_add_rule: calloc\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pfctl_add_rule: strlcpy\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"pfctl_add_rule: bad anchor name %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_add_rule(%struct.pfctl* %0, %struct.pf_rule* %1, i8* %2) #0 {
  %4 = alloca %struct.pfctl*, align 8
  %5 = alloca %struct.pf_rule*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pf_rule*, align 8
  %9 = alloca %struct.pf_ruleset*, align 8
  %10 = alloca i8*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %4, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %12 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @pf_get_ruleset_number(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PF_RULESET_MAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %20 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %25 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.pf_ruleset* %27, %struct.pf_ruleset** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %98

33:                                               ; preds = %23
  %34 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %35 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %98

38:                                               ; preds = %33
  %39 = call i8* @calloc(i32 1, i32 16)
  %40 = bitcast i8* %39 to %struct.TYPE_9__*
  %41 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %42 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %41, i32 0, i32 1
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %48 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = call i32 @pf_init_ruleset(%struct.TYPE_13__* %50)
  %52 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %53 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %56 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %59, align 8
  %60 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %61 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strlcpy(i32 %64, i8* %65, i32 4)
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %67, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %46
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %46
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @strrchr(i8* %72, i8 signext 47)
  store i8* %73, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %75
  br label %85

83:                                               ; preds = %71
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %87 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @strlcpy(i32 %90, i8* %91, i32 4)
  %93 = sext i32 %92 to i64
  %94 = icmp uge i64 %93, 4
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %85
  br label %98

98:                                               ; preds = %97, %33, %23
  %99 = call i8* @calloc(i32 1, i32 24)
  %100 = bitcast i8* %99 to %struct.pf_rule*
  store %struct.pf_rule* %100, %struct.pf_rule** %8, align 8
  %101 = icmp eq %struct.pf_rule* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %98
  %105 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %106 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %107 = call i32 @bcopy(%struct.pf_rule* %105, %struct.pf_rule* %106, i32 24)
  %108 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %109 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = call i32 @TAILQ_INIT(i32* %110)
  %112 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %113 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %112, i32 0, i32 0
  %114 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %115 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %114, i32 0, i32 0
  %116 = call i32 @pfctl_move_pool(%struct.TYPE_12__* %113, %struct.TYPE_12__* %115)
  %117 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %118 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %126 = load i32, i32* @entries, align 4
  %127 = call i32 @TAILQ_INSERT_TAIL(i32 %124, %struct.pf_rule* %125, i32 %126)
  ret i32 0
}

declare dso_local i64 @pf_get_ruleset_number(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @pf_init_ruleset(%struct.TYPE_13__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bcopy(%struct.pf_rule*, %struct.pf_rule*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @pfctl_move_pool(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32, %struct.pf_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
