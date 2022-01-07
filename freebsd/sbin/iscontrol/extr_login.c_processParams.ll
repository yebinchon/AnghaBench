; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_login.c_processParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_login.c_processParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_11__*, i8*, i32)* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i64 }

@vflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"got: len=%d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TargetAddress\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"MaxRecvDataSegmentLength\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TargetPortalGroupTag\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"HeaderDigest\00", align 1
@DigestMethods = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"DataDigest\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"MaxOutstandingR2T\00", align 1
@GET = common dso_local global i32 0, align 4
@keyMap = common dso_local global %struct.TYPE_14__* null, align 8
@kp = common dso_local global %struct.TYPE_14__* null, align 8
@mp = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @processParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processParams(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @debug_called(i32 3)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %176, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %187

28:                                               ; preds = %25
  %29 = load i32, i32* @vflag, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 61)
  store i8* %37, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %176

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %49
  store i8* null, i8** %13, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i8* @strdup(i8* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  store i8* %57, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 91
  br i1 %63, label %64, label %84

64:                                               ; preds = %54
  %65 = load i8*, i8** %12, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 93)
  store i8* %66, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %12, align 8
  store i8 0, i8* %69, align 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = call i8* @strdup(i8* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %83

79:                                               ; preds = %64
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %12, align 8
  br label %83

83:                                               ; preds = %79, %68
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i8*, i8** %12, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 44)
  store i8* %86, i8** %11, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  store i8 0, i8* %89, align 1
  %91 = load i8*, i8** %11, align 8
  %92 = call i8* @atoi(i8* %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i8*, i8** %12, align 8
  %97 = call i8* @strchr(i8* %96, i8 signext 58)
  store i8* %97, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  store i8 0, i8* %100, align 1
  %102 = load i8*, i8** %11, align 8
  %103 = call i8* @atoi(i8* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %99, %95
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @free(i8* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %175

113:                                              ; preds = %49
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @strncmp(i8* %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i8* @strtol(i8* %120, i8** null, i32 0)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  br label %174

124:                                              ; preds = %113
  %125 = load i8*, i8** %10, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @strncmp(i8* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = call i8* @strtol(i8* %131, i8** null, i32 0)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %173

135:                                              ; preds = %124
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i32, i32* @DigestMethods, align 4
  %144 = call i8* @selectFrom(i8* %142, i32 %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  br label %172

147:                                              ; preds = %135
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i64 @strncmp(i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i32, i32* @DigestMethods, align 4
  %156 = call i8* @selectFrom(i8* %154, i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  br label %171

159:                                              ; preds = %147
  %160 = load i8*, i8** %10, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i64 @strncmp(i8* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = call i8* @strtol(i8* %166, i8** null, i32 0)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %164, %159
  br label %171

171:                                              ; preds = %170, %152
  br label %172

172:                                              ; preds = %171, %140
  br label %173

173:                                              ; preds = %172, %129
  br label %174

174:                                              ; preds = %173, %118
  br label %175

175:                                              ; preds = %174, %112
  br label %176

176:                                              ; preds = %175, %46
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @strlen(i8* %177)
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %6, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %10, align 8
  br label %25

187:                                              ; preds = %25
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i8* @selectFrom(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
