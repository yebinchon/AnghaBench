; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_check_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_check_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i64, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"minfree\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"`minfree` didn't contain a valid size (`%s`). Defaulting to 0\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"no dump: not enough free space on device (need at least %jdkB for dump; %jdkB available; %jdkB reserved)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"dump performed, but free space threshold crossed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @check_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_space(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [100 x i8], align 16
  %11 = alloca %struct.statfs, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @fstatfs(i32 %19, %struct.statfs* %11)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i32, i8*, ...) @logmsg(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %30, %32
  %34 = sdiv i32 %33, 1024
  store i32 %34, i32* %15, align 4
  %35 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %37, %39
  %41 = sdiv i32 %40, 1024
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = call i32* @xfopenat(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %44, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %99

47:                                               ; preds = %27
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %49 = load i32*, i32** %12, align 8
  %50 = call i32* @fgets(i8* %48, i32 100, i32* %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %96

53:                                               ; preds = %47
  store i64 0, i64* @errno, align 8
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %55 = call i32 @strtoll(i8* %54, i8** %18, i32 10)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* @errno, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %14, align 4
  br label %88

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i8*, i8** %18, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i8*, i8** %18, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isspace(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i1 [ false, %63 ], [ %72, %68 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %18, align 8
  br label %63

78:                                               ; preds = %73
  %79 = load i8*, i8** %18, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %78
  store i32 -1, i32* %14, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %61
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @LOG_WARNING, align 4
  %93 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %94 = call i32 (i32, i8*, ...) @logmsg(i32 %92, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %52
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @fclose(i32* %97)
  br label %99

99:                                               ; preds = %96, %46
  %100 = load i32, i32* %14, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %103, %104
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %16, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %105, %102 ], [ %107, %106 ]
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sdiv i32 %110, 1024
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @saved_dump_size(i32 %113, i32 %114)
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %108
  %124 = load i32, i32* @LOG_WARNING, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = call i32 (i32, i8*, ...) @logmsg(i32 %124, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i64 %126, i64 %131, i64 %133)
  store i32 0, i32* %5, align 4
  br label %144

135:                                              ; preds = %108
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %17, align 4
  %138 = sub nsw i32 %136, %137
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @LOG_WARNING, align 4
  %142 = call i32 (i32, i8*, ...) @logmsg(i32 %141, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %135
  store i32 1, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %123
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i64 @fstatfs(i32, %struct.statfs*) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @xfopenat(i32, i8*, i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @saved_dump_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
