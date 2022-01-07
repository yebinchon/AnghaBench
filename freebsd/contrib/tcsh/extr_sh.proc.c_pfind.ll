; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i64, i64, i8*, %struct.process* }
%struct.TYPE_2__ = type { %struct.process* }

@STRcent2 = common dso_local global i32 0, align 4
@STRcentplus = common dso_local global i32 0, align 4
@pcurrent = common dso_local global %struct.process* null, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_JOBCUR = common dso_local global i32 0, align 4
@STRcentminus = common dso_local global i32 0, align 4
@STRcenthash = common dso_local global i32 0, align 4
@pprevious = common dso_local global %struct.process* null, align 8
@ERR_JOBPREV = common dso_local global i32 0, align 4
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERR_NOSUCHJOB = common dso_local global i32 0, align 4
@ERR_AMBIG = common dso_local global i32 0, align 4
@ERR_JOBPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.process* @pfind(i8* %0) #0 {
  %2 = alloca %struct.process*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.process*, align 8
  %5 = alloca %struct.process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @STRcent2, align 4
  %19 = call i64 @eq(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @STRcentplus, align 4
  %24 = call i64 @eq(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21, %16, %10, %1
  %27 = load %struct.process*, %struct.process** @pcurrent, align 8
  %28 = icmp eq %struct.process* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @ERR_NAME, align 4
  %31 = load i32, i32* @ERR_JOBCUR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @stderror(i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.process*, %struct.process** @pcurrent, align 8
  store %struct.process* %35, %struct.process** %2, align 8
  br label %192

36:                                               ; preds = %21
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @STRcentminus, align 4
  %39 = call i64 @eq(i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @STRcenthash, align 4
  %44 = call i64 @eq(i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41, %36
  %47 = load %struct.process*, %struct.process** @pprevious, align 8
  %48 = icmp eq %struct.process* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @ERR_NAME, align 4
  %51 = load i32, i32* @ERR_JOBPREV, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @stderror(i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.process*, %struct.process** @pprevious, align 8
  store %struct.process* %55, %struct.process** %2, align 8
  br label %192

56:                                               ; preds = %41
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @Isdigit(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i32 @short2str(i8* %64)
  %66 = call i32 @atoi(i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %67, %struct.process** %4, align 8
  br label %68

68:                                               ; preds = %88, %62
  %69 = load %struct.process*, %struct.process** %4, align 8
  %70 = icmp ne %struct.process* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load %struct.process*, %struct.process** %4, align 8
  %73 = getelementptr inbounds %struct.process, %struct.process* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.process*, %struct.process** %4, align 8
  %79 = getelementptr inbounds %struct.process, %struct.process* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.process*, %struct.process** %4, align 8
  %82 = getelementptr inbounds %struct.process, %struct.process* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load %struct.process*, %struct.process** %4, align 8
  store %struct.process* %86, %struct.process** %2, align 8
  br label %192

87:                                               ; preds = %77, %71
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.process*, %struct.process** %4, align 8
  %90 = getelementptr inbounds %struct.process, %struct.process* %89, i32 0, i32 4
  %91 = load %struct.process*, %struct.process** %90, align 8
  store %struct.process* %91, %struct.process** %4, align 8
  br label %68

92:                                               ; preds = %68
  %93 = load i32, i32* @ERR_NAME, align 4
  %94 = load i32, i32* @ERR_NOSUCHJOB, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @stderror(i32 %95)
  br label %97

97:                                               ; preds = %92, %56
  store %struct.process* null, %struct.process** %5, align 8
  %98 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %98, %struct.process** %4, align 8
  br label %99

99:                                               ; preds = %168, %97
  %100 = load %struct.process*, %struct.process** %4, align 8
  %101 = icmp ne %struct.process* %100, null
  br i1 %101, label %102, label %172

102:                                              ; preds = %99
  %103 = load %struct.process*, %struct.process** %4, align 8
  %104 = getelementptr inbounds %struct.process, %struct.process* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.process*, %struct.process** %4, align 8
  %107 = getelementptr inbounds %struct.process, %struct.process* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %167

110:                                              ; preds = %102
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 63
  br i1 %115, label %116, label %146

116:                                              ; preds = %110
  %117 = load %struct.process*, %struct.process** %4, align 8
  %118 = getelementptr inbounds %struct.process, %struct.process* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %7, align 8
  br label %120

120:                                              ; preds = %142, %116
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %142

134:                                              ; preds = %124
  %135 = load i8*, i8** %3, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8*, i8** %7, align 8
  %138 = call i64 @prefix(i8* %136, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %155

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %133
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  br label %120

145:                                              ; preds = %120
  br label %166

146:                                              ; preds = %110
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load %struct.process*, %struct.process** %4, align 8
  %150 = getelementptr inbounds %struct.process, %struct.process* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @prefix(i8* %148, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %140
  %156 = load %struct.process*, %struct.process** %5, align 8
  %157 = icmp ne %struct.process* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* @ERR_NAME, align 4
  %160 = load i32, i32* @ERR_AMBIG, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @stderror(i32 %161)
  br label %163

163:                                              ; preds = %158, %155
  %164 = load %struct.process*, %struct.process** %4, align 8
  store %struct.process* %164, %struct.process** %5, align 8
  br label %165

165:                                              ; preds = %163, %146
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %102
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.process*, %struct.process** %4, align 8
  %170 = getelementptr inbounds %struct.process, %struct.process* %169, i32 0, i32 4
  %171 = load %struct.process*, %struct.process** %170, align 8
  store %struct.process* %171, %struct.process** %4, align 8
  br label %99

172:                                              ; preds = %99
  %173 = load %struct.process*, %struct.process** %5, align 8
  %174 = icmp ne %struct.process* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load %struct.process*, %struct.process** %5, align 8
  store %struct.process* %176, %struct.process** %2, align 8
  br label %192

177:                                              ; preds = %172
  %178 = load i32, i32* @ERR_NAME, align 4
  %179 = load i8*, i8** %3, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 63
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @ERR_JOBPAT, align 4
  br label %188

186:                                              ; preds = %177
  %187 = load i32, i32* @ERR_NOSUCHJOB, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = or i32 %178, %189
  %191 = call i32 @stderror(i32 %190)
  store %struct.process* null, %struct.process** %2, align 8
  br label %192

192:                                              ; preds = %188, %175, %85, %54, %34
  %193 = load %struct.process*, %struct.process** %2, align 8
  ret %struct.process* %193
}

declare dso_local i64 @eq(i8*, i32) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i64 @prefix(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
