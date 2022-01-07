; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_parserate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_parserate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"usage: %s (all|get|put),maximum-bytes[,increment-bytes]]\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"usage: %s (all|get|put) [maximum-bytes [increment-bytes]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@DEFAULTINCR = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@rate_get = common dso_local global i32 0, align 4
@rate_get_incr = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"Get transfer rate throttle: %s; maximum: %d; increment %d.\0A\00", align 1
@rate_put = common dso_local global i32 0, align 4
@rate_put_incr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"Put transfer rate throttle: %s; maximum: %d; increment %d.\0A\00", align 1
@RATE_ALL = common dso_local global i32 0, align 4
@RATE_GET = common dso_local global i32 0, align 4
@RATE_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parserate(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 3, i32 2
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16, %3
  br label %24

24:                                               ; preds = %83, %71, %59, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @UPRINTF(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %37

32:                                               ; preds = %24
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @UPRINTF(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %27
  store i32 -1, i32* %4, align 4
  br label %148

38:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcasecmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 3, i32* %8, align 4
  br label %62

45:                                               ; preds = %38
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %61

52:                                               ; preds = %45
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcasecmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 2, i32* %8, align 4
  br label %60

59:                                               ; preds = %52
  br label %24

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 3
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8**, i8*** %6, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strsuftoi(i8* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %24

72:                                               ; preds = %65
  br label %74

73:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8**, i8*** %6, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strsuftoi(i8* %80)
  store i32 %81, i32* %10, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %24

84:                                               ; preds = %77
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @DEFAULTINCR, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %84
  %88 = load i32, i32* @SIGUSR1, align 4
  %89 = load i32, i32* @SIG_IGN, align 4
  %90 = call i32 @xsignal(i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @SIGUSR2, align 4
  %92 = load i32, i32* @SIG_IGN, align 4
  %93 = call i32 @xsignal(i32 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %87
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* @rate_get, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* @rate_get_incr, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* @verbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @ttyout, align 4
  %111 = load i32, i32* @rate_get, align 4
  %112 = call i8* @onoff(i32 %111)
  %113 = load i32, i32* @rate_get, align 4
  %114 = load i32, i32* @rate_get_incr, align 4
  %115 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %106
  br label %117

117:                                              ; preds = %116, %87
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* @rate_put, align 4
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* @rate_put_incr, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i64, i64* @verbose, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130, %127
  %134 = load i32, i32* @ttyout, align 4
  %135 = load i32, i32* @rate_put, align 4
  %136 = call i8* @onoff(i32 %135)
  %137 = load i32, i32* @rate_put, align 4
  %138 = load i32, i32* @rate_put_incr, align 4
  %139 = call i32 @fprintf(i32 %134, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %130
  br label %141

141:                                              ; preds = %140, %117
  %142 = load i32, i32* @SIGUSR1, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @xsignal(i32 %142, i32 %143)
  %145 = load i32, i32* @SIGUSR2, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @xsignal(i32 %145, i32 %146)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %37
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strsuftoi(i8*) #1

declare dso_local i32 @xsignal(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
