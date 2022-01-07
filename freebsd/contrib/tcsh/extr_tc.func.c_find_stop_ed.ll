; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_find_stop_ed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_find_stop_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i64, i64, i32, i32, %struct.process* }
%struct.TYPE_2__ = type { %struct.process* }
%struct.varent = type { i32** }

@pcurrent = common dso_local global %struct.process* null, align 8
@STReditors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PALLSTATES = common dso_local global i32 0, align 4
@PINTERRUPTED = common dso_local global i32 0, align 4
@PSTOPPED = common dso_local global i32 0, align 4
@PSIGNALED = common dso_local global i32 0, align 4
@pprevious = common dso_local global %struct.process* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.process* @find_stop_ed() #0 {
  %1 = alloca %struct.process*, align 8
  %2 = alloca %struct.process*, align 8
  %3 = alloca %struct.process*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.varent*, align 8
  %12 = alloca i32**, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.process*, %struct.process** @pcurrent, align 8
  %14 = icmp eq %struct.process* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store %struct.process* null, %struct.process** %1, align 8
  br label %226

16:                                               ; preds = %0
  %17 = load i32, i32* @STReditors, align 4
  %18 = call %struct.varent* @adrof(i32 %17)
  store %struct.varent* %18, %struct.varent** %11, align 8
  %19 = icmp ne %struct.varent* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.varent*, %struct.varent** %11, align 8
  %22 = getelementptr inbounds %struct.varent, %struct.varent* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  store i32** %23, i32*** %12, align 8
  br label %25

24:                                               ; preds = %16
  store i32** null, i32*** %12, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32**, i32*** %12, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %97, label %28

28:                                               ; preds = %25
  %29 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strrchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %35, %31
  br label %40

39:                                               ; preds = %28
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 47)
  store i8* %45, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %47, %43
  br label %52

51:                                               ; preds = %40
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %52

52:                                               ; preds = %51, %50
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @isspace(i8 zeroext %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %60, %53
  %69 = phi i1 [ false, %53 ], [ %67, %60 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %53

74:                                               ; preds = %68
  store i64 0, i64* %8, align 8
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @isspace(i8 zeroext %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %82, %75
  %91 = phi i1 [ false, %75 ], [ %89, %82 ]
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %75

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %25
  store %struct.process* null, %struct.process** %3, align 8
  %98 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %98, %struct.process** %2, align 8
  br label %99

99:                                               ; preds = %220, %97
  %100 = load %struct.process*, %struct.process** %2, align 8
  %101 = icmp ne %struct.process* %100, null
  br i1 %101, label %102, label %224

102:                                              ; preds = %99
  %103 = load %struct.process*, %struct.process** %2, align 8
  %104 = getelementptr inbounds %struct.process, %struct.process* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.process*, %struct.process** %2, align 8
  %107 = getelementptr inbounds %struct.process, %struct.process* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %219

110:                                              ; preds = %102
  %111 = load %struct.process*, %struct.process** %2, align 8
  %112 = getelementptr inbounds %struct.process, %struct.process* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PALLSTATES, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @PINTERRUPTED, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @PSTOPPED, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @PSIGNALED, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %220

128:                                              ; preds = %123, %119, %110
  %129 = load %struct.process*, %struct.process** %2, align 8
  %130 = getelementptr inbounds %struct.process, %struct.process* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @short2str(i32 %131)
  store i8* %132, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  store i8* %133, i8** %6, align 8
  br label %134

134:                                              ; preds = %148, %128
  %135 = load i8*, i8** %6, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i8*, i8** %6, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @isspace(i8 zeroext %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi i1 [ false, %134 ], [ %144, %139 ]
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %6, align 8
  br label %134

151:                                              ; preds = %145
  %152 = load i8*, i8** %6, align 8
  store i8 0, i8* %152, align 1
  %153 = load i8*, i8** %7, align 8
  %154 = call i8* @strrchr(i8* %153, i8 signext 47)
  store i8* %154, i8** %6, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8* %158, i8** %6, align 8
  br label %161

159:                                              ; preds = %151
  %160 = load i8*, i8** %7, align 8
  store i8* %160, i8** %6, align 8
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i32**, i32*** %12, align 8
  %163 = icmp ne i32** %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32**, i32*** %12, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = call i64 @findvv(i32** %165, i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %201, label %169

169:                                              ; preds = %164, %161
  %170 = load i64, i64* %8, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load i8*, i8** %4, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i64 @strncmp(i8* %173, i8* %174, i64 %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i8*, i8** %6, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %178, %172, %169
  %186 = load i64, i64* %9, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %218

188:                                              ; preds = %185
  %189 = load i8*, i8** %5, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = load i64, i64* %9, align 8
  %192 = call i64 @strncmp(i8* %189, i8* %190, i64 %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %218

194:                                              ; preds = %188
  %195 = load i8*, i8** %6, align 8
  %196 = load i64, i64* %9, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %194, %178, %164
  %202 = load %struct.process*, %struct.process** %2, align 8
  %203 = load %struct.process*, %struct.process** @pcurrent, align 8
  %204 = icmp eq %struct.process* %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load %struct.process*, %struct.process** %2, align 8
  store %struct.process* %206, %struct.process** %1, align 8
  br label %226

207:                                              ; preds = %201
  %208 = load %struct.process*, %struct.process** %3, align 8
  %209 = icmp eq %struct.process* %208, null
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = load %struct.process*, %struct.process** %2, align 8
  %212 = load %struct.process*, %struct.process** @pprevious, align 8
  %213 = icmp eq %struct.process* %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %210, %207
  %215 = load %struct.process*, %struct.process** %2, align 8
  store %struct.process* %215, %struct.process** %3, align 8
  br label %216

216:                                              ; preds = %214, %210
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %194, %188, %185
  br label %219

219:                                              ; preds = %218, %102
  br label %220

220:                                              ; preds = %219, %127
  %221 = load %struct.process*, %struct.process** %2, align 8
  %222 = getelementptr inbounds %struct.process, %struct.process* %221, i32 0, i32 4
  %223 = load %struct.process*, %struct.process** %222, align 8
  store %struct.process* %223, %struct.process** %2, align 8
  br label %99

224:                                              ; preds = %99
  %225 = load %struct.process*, %struct.process** %3, align 8
  store %struct.process* %225, %struct.process** %1, align 8
  br label %226

226:                                              ; preds = %224, %205, %15
  %227 = load %struct.process*, %struct.process** %1, align 8
  ret %struct.process* %227
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i8* @short2str(i32) #1

declare dso_local i64 @findvv(i32**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
