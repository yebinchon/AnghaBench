; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nptv6.c_ipfw_nptv6_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nptv6.c_ipfw_nptv6_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"nptv6 needs instance name\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"nptv6 instance name %s is invalid\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"nptv6 needs command\00", align 1
@nptv6cmds = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"nptv6 command\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"nptv6 instance name required\00", align 1
@nptv6_show_cb = common dso_local global i32 0, align 4
@nptv6_destroy_cb = common dso_local global i32 0, align 4
@nptv6statscmds = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"stats command\00", align 1
@TOK_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_nptv6_handler(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %12 = sub nsw i64 %11, 1
  store i64 %12, i64* %7, align 8
  br label %14

13:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %4, align 8
  %19 = call i32 @NEED1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @nptv6_check_name(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %5, align 8
  br label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @EX_USAGE, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i32, i8*, ...) @errx(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %29
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %4, align 8
  %40 = call i32 @NEED1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @nptv6cmds, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @get_token(i32 %41, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %44, i32* %6, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 130
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 129
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EX_USAGE, align 4
  %55 = call i32 (i32, i8*, ...) @errx(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50, %47, %35
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %109 [
    i32 131, label %58
    i32 129, label %68
    i32 130, label %73
    i32 128, label %85
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %3, align 4
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i8**, i8*** %4, align 8
  %67 = call i32 @nptv6_create(i8* %63, i64 %64, i32 %65, i8** %66)
  br label %109

68:                                               ; preds = %56
  %69 = load i32, i32* @nptv6_show_cb, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @nptv6_foreach(i32 %69, i8* %70, i64 %71, i32 1)
  br label %109

73:                                               ; preds = %56
  %74 = load i8*, i8** %5, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @nptv6_destroy_cb, align 4
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @nptv6_foreach(i32 %77, i8* null, i64 %78, i32 0)
  br label %84

80:                                               ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @nptv6_destroy(i8* %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %109

85:                                               ; preds = %56
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %3, align 4
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %4, align 8
  %90 = load i32, i32* %3, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i8*, i8** %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @nptv6_stats(i8* %93, i64 %94)
  br label %109

96:                                               ; preds = %85
  %97 = load i32, i32* @nptv6statscmds, align 4
  %98 = load i8**, i8*** %4, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @get_token(i32 %97, i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @TOK_RESET, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @nptv6_reset_stats(i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %104, %96
  br label %109

109:                                              ; preds = %108, %56, %92, %84, %68, %58
  ret void
}

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i64 @nptv6_check_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i32 @nptv6_create(i8*, i64, i32, i8**) #1

declare dso_local i32 @nptv6_foreach(i32, i8*, i64, i32) #1

declare dso_local i32 @nptv6_destroy(i8*, i64) #1

declare dso_local i32 @nptv6_stats(i8*, i64) #1

declare dso_local i32 @nptv6_reset_stats(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
