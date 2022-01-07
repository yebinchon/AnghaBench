; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.format_opts = type { i64, i64, i32, i32, i32 }

@co = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Testing only, list disabled\0A\00", align 1
@IPFW_CFG_GET_STATIC = common dso_local global i32 0, align 4
@IPFW_CFG_GET_STATES = common dso_local global i32 0, align 4
@IPFW_CFG_GET_COUNTERS = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"retrieving config failed\00", align 1
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_list(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.format_opts, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 3), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %136

20:                                               ; preds = %3
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 2), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dummynet_list(i32 %24, i8** %25, i32 %26)
  br label %136

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  %33 = call i32 @memset(%struct.format_opts* %8, i32 0, i32 32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i8**, i8*** %5, align 8
  store i8** %38, i8*** %12, align 8
  br label %39

39:                                               ; preds = %80, %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %39
  %43 = load i8**, i8*** %12, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %12, align 8
  %45 = load i8*, i8** %43, align 8
  %46 = call i64 @strtoul(i8* %45, i8** %14, i32 10)
  store i64 %46, i64* %13, align 8
  %47 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %42
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %14, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i64 @strtoul(i8* %65, i8** %14, i32 10)
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %67
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %11, align 4
  br label %39

83:                                               ; preds = %39
  br label %84

84:                                               ; preds = %83, %28
  store i32* null, i32** %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 0), align 8
  %88 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 1), align 4
  %90 = icmp ne i32 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32, i32* @IPFW_CFG_GET_STATIC, align 4
  %93 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 1), align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* @IPFW_CFG_GET_STATES, align 4
  %101 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %96
  %105 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @IPFW_CFG_GET_COUNTERS, align 4
  %113 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %8, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %104
  %117 = call i64 @ipfw_get_config(%struct.TYPE_4__* @co, %struct.format_opts* %8, i32** %7, i64* %9)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @EX_OSERR, align 4
  %121 = call i32 @err(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32*, i32** %7, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i8**, i8*** %5, align 8
  %127 = call i32 @ipfw_show_config(%struct.TYPE_4__* @co, %struct.format_opts* %8, i32* %123, i64 %124, i32 %125, i8** %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @free(i32* %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @EX_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %122
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @exit(i32 %134) #3
  unreachable

136:                                              ; preds = %17, %23, %122
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @dummynet_list(i32, i8**, i32) #1

declare dso_local i32 @memset(%struct.format_opts*, i32, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @ipfw_get_config(%struct.TYPE_4__*, %struct.format_opts*, i32**, i64*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ipfw_show_config(%struct.TYPE_4__*, %struct.format_opts*, i32*, i64, i32, i8**) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
