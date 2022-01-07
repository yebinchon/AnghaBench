; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/tools/extr_audump.c_audump_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/tools/extr_audump.c_audump_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"getacflg\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getacflg: %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"flags:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"getacmin\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"getacmin: %d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"min:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"getacna\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"getacna: %d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"naflags:%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"getacdir\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"getacdir: %d\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"dir:%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"getacpol\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"au_strtopol\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"au_poltostr\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"policy:%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"getacfilesz\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"getacfilesz: %d\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"filesz:%ldB\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"getacqsize\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"getacqzize: %d\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"qsize:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"getachost\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"getachost: %d\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"host:%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"getacexpire\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"getacexpire: %d\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"expire-after:%ldB  %s %lds\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @audump_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audump_control() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = call i32 @getacflg(i8* %13, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -2
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %31 = call i32 @getacmin(i32* %5)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, -2
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @PATH_MAX, align 4
  %46 = call i32 @getacna(i8* %13, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, -2
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %13)
  %59 = call i32 (...) @setac()
  br label %60

60:                                               ; preds = %79, %57
  %61 = load i32, i32* @PATH_MAX, align 4
  %62 = call i32 @getacdir(i8* %13, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %82

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, -2
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  br label %79

79:                                               ; preds = %77
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %60, label %82

82:                                               ; preds = %79, %65
  %83 = load i32, i32* @PATH_MAX, align 4
  %84 = call i32 @getacpol(i8* %13, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = call i64 @au_strtopol(i8* %13, i64* %7)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* @PATH_MAX, align 4
  %97 = call i64 @au_poltostr(i64 %95, i32 %96, i8* %16)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %16)
  %103 = call i32 @getacfilesz(i64* %9)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, -2
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i64, i64* %9, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i64 %115)
  %117 = call i32 @getacqsize(i32* %6)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %118, -2
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %114
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %4, align 4
  %127 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @PATH_MAX, align 4
  %132 = call i32 @getachost(i8* %13, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %133, -2
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %128
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %138, -3
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %4, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* %13)
  br label %151

151:                                              ; preds = %149, %146, %143
  %152 = call i32 @getacexpire(i32* %5, i32* %8, i64* %9)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp eq i32 %153, -2
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %4, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 1
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i64, i64* %9, align 8
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i64 %170, i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %169, %166, %163
  %178 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getacflg(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @getacmin(i32*) #2

declare dso_local i32 @getacna(i8*, i32) #2

declare dso_local i32 @setac(...) #2

declare dso_local i32 @getacdir(i8*, i32) #2

declare dso_local i32 @getacpol(i8*, i32) #2

declare dso_local i64 @au_strtopol(i8*, i64*) #2

declare dso_local i64 @au_poltostr(i64, i32, i8*) #2

declare dso_local i32 @getacfilesz(i64*) #2

declare dso_local i32 @getacqsize(i32*) #2

declare dso_local i32 @getachost(i8*, i32) #2

declare dso_local i32 @getacexpire(i32*, i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
