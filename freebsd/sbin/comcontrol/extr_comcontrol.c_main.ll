; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/comcontrol/extr_comcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/comcontrol/extr_comcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"couldn't open file %s\00", align 1
@TIOCMGDTRWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"TIOCMGDTRWAIT\00", align 1
@TIOCGDRAINWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"TIOCGDRAINWAIT\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dtrwait %d \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"drainwait %d \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dtrwait\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"drainwait\00", align 1
@TIOCMSDTRWAIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"TIOCMSDTRWAIT\00", align 1
@TIOCSDRAINWAIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"TIOCSDRAINWAIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @usage()
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %23, i32* %6, align 4
  br label %40

24:                                               ; preds = %16
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open(i8* %27, i32 %30, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 1, i32* %3, align 4
  br label %184

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %81

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TIOCMGDTRWAIT, align 4
  %46 = call i64 @ioctl(i32 %44, i32 %45, i32* %10)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOTTY, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  %53 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TIOCGDRAINWAIT, align 4
  %58 = call i64 @ioctl(i32 %56, i32 %57, i32* %11)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOTTY, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  %65 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %180

81:                                               ; preds = %40
  br label %82

82:                                               ; preds = %156, %81
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %157

87:                                               ; preds = %82
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (...) @usage()
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 3
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @isdigit(i8 signext %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %103, %98
  %112 = call i32 (...) @usage()
  br label %113

113:                                              ; preds = %111, %103
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @atoi(i8* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 2
  store i8** %119, i8*** %5, align 8
  br label %156

120:                                              ; preds = %87
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %153, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 (...) @usage()
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 3
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @isdigit(i8 signext %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %136, %131
  %145 = call i32 (...) @usage()
  br label %146

146:                                              ; preds = %144, %136
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @atoi(i8* %149)
  store i32 %150, i32* %11, align 4
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 2
  store i8** %152, i8*** %5, align 8
  br label %155

153:                                              ; preds = %120
  %154 = call i32 (...) @usage()
  br label %155

155:                                              ; preds = %153, %146
  br label %156

156:                                              ; preds = %155, %113
  br label %82

157:                                              ; preds = %82
  %158 = load i32, i32* %10, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @TIOCMSDTRWAIT, align 4
  %163 = call i64 @ioctl(i32 %161, i32 %162, i32* %10)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  store i32 1, i32* %7, align 4
  %166 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  br label %168

168:                                              ; preds = %167, %157
  %169 = load i32, i32* %11, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @TIOCSDRAINWAIT, align 4
  %174 = call i64 @ioctl(i32 %172, i32 %173, i32* %11)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  store i32 1, i32* %7, align 4
  %177 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %171
  br label %179

179:                                              ; preds = %178, %168
  br label %180

180:                                              ; preds = %179, %79
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @close(i32 %181)
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %180, %34
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
