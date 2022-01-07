; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_DoRegularFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_DoRegularFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFERSIZE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WARNING: EOF on dump device\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"read error on %s: %m\00", align 1
@nerr = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i32 0, align 4
@BLOCKMASK = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"write error on %s file: %m\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"WARNING: vmcore may be incomplete\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@got_siginfo = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"%s %.1lf%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i8*, i8*, i8*, i32*)* @DoRegularFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoRegularFile(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %24, align 4
  store i32 0, i32* %18, align 4
  br label %26

26:                                               ; preds = %199, %8
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %200

29:                                               ; preds = %26
  %30 = load i32, i32* @BUFFERSIZE, align 4
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %22, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %22, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @roundup(i32 %39, i32 %40)
  %42 = call i32 @read(i32 %37, i8* %38, i64 %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @roundup(i32 %44, i32 %45)
  %47 = trunc i64 %46 to i32
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %36
  %50 = load i32, i32* %20, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @LOG_WARNING, align 4
  %54 = call i32 (i32, i8*, ...) @logmsg(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 (i32, i8*, ...) @logmsg(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @nerr, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @nerr, align 4
  store i32 -1, i32* %9, align 4
  br label %201

62:                                               ; preds = %36
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %22, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @fwrite(i8* %66, i32 1, i32 %67, i32* %68)
  store i32 %69, i32* %21, align 4
  br label %159

70:                                               ; preds = %62
  store i32 0, i32* %21, align 4
  br label %71

71:                                               ; preds = %156, %70
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %158

75:                                               ; preds = %71
  %76 = load i32, i32* %21, align 4
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %109, %75
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %77
  %82 = load i32, i32* %19, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %98, %81
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %87, %83
  %96 = phi i1 [ false, %83 ], [ %94, %87 ]
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %83

101:                                              ; preds = %95
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* @BLOCKSIZE, align 4
  %105 = add nsw i32 %103, %104
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %113

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* @BLOCKSIZE, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %19, align 4
  br label %77

113:                                              ; preds = %107, %77
  %114 = load i32, i32* @BLOCKMASK, align 4
  %115 = load i32, i32* %18, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @BLOCKSIZE, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %20, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %20, align 4
  store i32 %123, i32* %18, align 4
  store i32 %123, i32* %19, align 4
  br label %124

124:                                              ; preds = %122, %113
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %21, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32*, i32** %17, align 8
  %137 = call i32 @fwrite(i8* %132, i32 %135, i32 1, i32* %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %158

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %124
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* @SEEK_CUR, align 4
  %151 = call i32 @fseeko(i32* %146, i32 %149, i32 %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %158

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %141
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %21, align 4
  br label %71

158:                                              ; preds = %153, %139, %71
  br label %159

159:                                              ; preds = %158, %65
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i32, i32* @LOG_ERR, align 4
  %165 = load i8*, i8** %16, align 8
  %166 = call i32 (i32, i8*, ...) @logmsg(i32 %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* @LOG_WARNING, align 4
  %168 = call i32 (i32, i8*, ...) @logmsg(i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* @nerr, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @nerr, align 4
  store i32 -1, i32* %9, align 4
  br label %201

171:                                              ; preds = %159
  %172 = load i64, i64* @verbose, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %23, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %179)
  %181 = load i32, i32* @stdout, align 4
  %182 = call i32 @fflush(i32 %181)
  br label %183

183:                                              ; preds = %174, %171
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %11, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %11, align 4
  %187 = load i64, i64* @got_siginfo, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load i8*, i8** %16, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sitofp i32 %191 to double
  %193 = fmul double 1.000000e+02, %192
  %194 = load i32, i32* %24, align 4
  %195 = sitofp i32 %194 to double
  %196 = fdiv double %193, %195
  %197 = fsub double 1.000000e+02, %196
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %190, double %197)
  store i64 0, i64* @got_siginfo, align 8
  br label %199

199:                                              ; preds = %189, %183
  br label %26

200:                                              ; preds = %26
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %200, %163, %59
  %202 = load i32, i32* %9, align 4
  ret i32 %202
}

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
