; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"RESETLOG\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@IP_FW_XRESETLOG = common dso_local global i32 0, align 4
@IP_FW_XZERO = common dso_local global i32 0, align 4
@IPFW_RCFLAG_ALL = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"setsockopt(IP_FW_X%s)\00", align 1
@co = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Accounting cleared\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Logging counts reset\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid rule number %s\0A\00", align 1
@IPFW_RCFLAG_RANGE = common dso_local global i32 0, align 4
@IPFW_RCFLAG_SET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"rule %u: setsockopt(IP_FW_X%s)\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Entry %d not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Entry %d %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"cleared\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"logging count reset\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid rule number ``%s''\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_zero(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* @EX_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @IP_FW_XRESETLOG, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @IP_FW_XZERO, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %23
  %32 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 32)
  %33 = load i32, i32* @IPFW_RCFLAG_ALL, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @do_range_cmd(i32 %35, %struct.TYPE_5__* %7)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @EX_UNAVAILABLE, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @err(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 1), align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IP_FW_XZERO, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %45, %42
  br label %142

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %130, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %135

57:                                               ; preds = %54
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %125

63:                                               ; preds = %57
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strtonum(i8* %65, i32 0, i32 65535, i8** %8)
  store i32 %66, i32* %10, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @EX_DATAERR, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @errx(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %63
  %75 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 32)
  %76 = load i32, i32* %10, align 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %74
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %88 = sub nsw i64 %87, 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* @IPFW_RCFLAG_SET, align 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %86, %74
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @do_range_cmd(i32 %95, %struct.TYPE_5__* %7)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %99, i8* %100)
  %102 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %102, i32* %11, align 4
  br label %124

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %110, i32* %11, align 4
  br label %123

111:                                              ; preds = %103
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 1), align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @IP_FW_XZERO, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0)
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %115, i8* %120)
  br label %122

122:                                              ; preds = %114, %111
  br label %123

123:                                              ; preds = %122, %107
  br label %124

124:                                              ; preds = %123, %98
  br label %130

125:                                              ; preds = %57
  %126 = load i32, i32* @EX_USAGE, align 4
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @errx(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %125, %124
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %5, align 8
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  br label %54

135:                                              ; preds = %54
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @EX_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @exit(i32 %140) #3
  unreachable

142:                                              ; preds = %52, %135
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @do_range_cmd(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @warn(i8*, i32, i8*) #1

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
