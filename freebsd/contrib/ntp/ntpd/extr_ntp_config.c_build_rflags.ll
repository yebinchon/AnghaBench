; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_build_rflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_build_rflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_rflags.rfs = internal global [1024 x i8] zeroinitializer, align 16
@RES_FLAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flake\00", align 1
@RES_IGNORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@RES_KOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"kod\00", align 1
@RES_MSSNTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"mssntp\00", align 1
@RES_LIMITED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"limited\00", align 1
@RES_LPTRAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"lptrap\00", align 1
@RES_NOMODIFY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"nomodify\00", align 1
@RES_NOMRULIST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"nomrulist\00", align 1
@RES_NOEPEER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"noepeer\00", align 1
@RES_NOPEER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"nopeer\00", align 1
@RES_NOQUERY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"noquery\00", align 1
@RES_DONTSERVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"dontserve\00", align 1
@RES_NOTRAP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"notrap\00", align 1
@RES_DONTTRUST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"notrust\00", align 1
@RES_VERSION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%0x\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_rflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), align 16
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @RES_FLAKE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @RES_FLAKE, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RES_IGNORE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @RES_IGNORE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %2, align 4
  %24 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @RES_KOD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @RES_KOD, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @RES_MSSNTP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @RES_MSSNTP, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %2, align 4
  %46 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @RES_LIMITED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @RES_LIMITED, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %2, align 4
  %57 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @RES_LPTRAP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @RES_LPTRAP, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %2, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %2, align 4
  %68 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @RES_NOMODIFY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @RES_NOMODIFY, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %2, align 4
  %79 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @RES_NOMRULIST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @RES_NOMRULIST, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %2, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %2, align 4
  %90 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @RES_NOEPEER, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* @RES_NOEPEER, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %2, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %2, align 4
  %101 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @RES_NOPEER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @RES_NOPEER, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %2, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %2, align 4
  %112 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @RES_NOQUERY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @RES_NOQUERY, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %2, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %2, align 4
  %123 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %124

124:                                              ; preds = %118, %113
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @RES_DONTSERVE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @RES_DONTSERVE, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %2, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %2, align 4
  %134 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* @RES_NOTRAP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @RES_NOTRAP, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %2, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %2, align 4
  %145 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %146

146:                                              ; preds = %140, %135
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @RES_DONTTRUST, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @RES_DONTTRUST, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %2, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %2, align 4
  %156 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @RES_VERSION, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* @RES_VERSION, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %2, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %2, align 4
  %167 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %168

168:                                              ; preds = %162, %157
  %169 = load i32, i32* %2, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @snprintf(i8* %172, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %173)
  %175 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %176 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* %175)
  br label %177

177:                                              ; preds = %171, %168
  %178 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), align 16
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 0, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %177
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_rflags.rfs, i64 0, i64 0)
}

declare dso_local i32 @appendstr(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
