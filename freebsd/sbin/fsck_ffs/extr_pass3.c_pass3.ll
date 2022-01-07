; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass3.c_pass3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass3.c_pass3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inoinfo = type { i8*, i64, i64 }
%struct.inodesc = type { i8*, i8*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UFS_MAXNAMLEN = common dso_local global i32 0, align 4
@inplast = common dso_local global i32 0, align 4
@got_siginfo = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: phase 3: dir %d of %d (%d%%)\0A\00", align 1
@cdevname = common dso_local global i8* null, align 8
@got_sigalarm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s p3 %d%%\00", align 1
@inpsort = common dso_local global %struct.inoinfo** null, align 8
@UFS_ROOTINO = common dso_local global i64 0, align 8
@DCLEAR = common dso_local global i32 0, align 4
@preen = common dso_local global i64 0, align 8
@bkgrdflag = common dso_local global i64 0, align 8
@resolved = common dso_local global i64 0, align 8
@usedsoftdep = common dso_local global i64 0, align 8
@countdirs = common dso_local global i32 0, align 4
@lfdir = common dso_local global i8* null, align 8
@DFOUND = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"ORPHANED DIRECTORY LOOP DETECTED I=%lu\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RECONNECT\00", align 1
@DATA = common dso_local global i32 0, align 4
@findname = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"COULD NOT FIND NAME IN PARENT DIRECTORY\00", align 1
@clearentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass3() #0 {
  %1 = alloca %struct.inoinfo*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inodesc, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @UFS_MAXNAMLEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @inplast, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %251, %0
  %17 = load i32, i32* %3, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %254

19:                                               ; preds = %16
  %20 = load i64, i64* @got_siginfo, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i8*, i8** @cdevname, align 8
  %24 = load i32, i32* @inplast, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @inplast, align 4
  %29 = load i32, i32* @inplast, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 %32, 100
  %34 = load i32, i32* @inplast, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %27, i32 %28, i32 %35)
  store i64 0, i64* @got_siginfo, align 8
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i64, i64* @got_sigalarm, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8*, i8** @cdevname, align 8
  %42 = load i32, i32* @inplast, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = mul nsw i32 %45, 100
  %47 = load i32, i32* @inplast, align 4
  %48 = sdiv i32 %46, %47
  %49 = call i32 @setproctitle(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %48)
  store i64 0, i64* @got_sigalarm, align 8
  br label %50

50:                                               ; preds = %40, %37
  %51 = load %struct.inoinfo**, %struct.inoinfo*** @inpsort, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.inoinfo*, %struct.inoinfo** %51, i64 %53
  %55 = load %struct.inoinfo*, %struct.inoinfo** %54, align 8
  store %struct.inoinfo* %55, %struct.inoinfo** %1, align 8
  %56 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %57 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call %struct.TYPE_2__* @inoinfo(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  %62 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %63 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* @UFS_ROOTINO, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = icmp eq i8* %64, %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %50
  %69 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %70 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @S_IS_DUNFOUND(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %50
  br label %251

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @DCLEAR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %251

83:                                               ; preds = %78
  %84 = load i64, i64* @preen, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @bkgrdflag, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %86, %83
  %90 = load i64, i64* @resolved, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load i64, i64* @usedsoftdep, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @S_IS_DUNFOUND(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %101 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UFS_ROOTINO, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %107 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call %struct.TYPE_2__* @inoinfo(i8* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %105, %99
  br label %251

115:                                              ; preds = %95, %92, %89, %86
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %140, %115
  %117 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %118 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %5, align 8
  %120 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %121 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %116
  %125 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %126 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @INO_IS_DUNFOUND(i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @countdirs, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %124, %116
  br label %143

135:                                              ; preds = %130
  %136 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %137 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call %struct.inoinfo* @getinoinfo(i64 %138)
  store %struct.inoinfo* %139, %struct.inoinfo** %1, align 8
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %116

143:                                              ; preds = %134
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @countdirs, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %143
  %148 = load i8*, i8** %5, align 8
  %149 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %150 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i64 @linkup(i8* %148, i8* %152, i8* null)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = load i8*, i8** @lfdir, align 8
  %157 = ptrtoint i8* %156 to i64
  %158 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %159 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %161 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %160, i32 0, i32 1
  store i64 %157, i64* %161, align 8
  %162 = load i8*, i8** @lfdir, align 8
  %163 = call %struct.TYPE_2__* @inoinfo(i8* %162)
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %155, %147
  %168 = load i8*, i8** @DFOUND, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load i8*, i8** %5, align 8
  %171 = call %struct.TYPE_2__* @inoinfo(i8* %170)
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = call i32 (...) @propagate()
  br label %251

174:                                              ; preds = %143
  %175 = load i8*, i8** %5, align 8
  %176 = ptrtoint i8* %175 to i32
  %177 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = call i64 @reply(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %251

181:                                              ; preds = %174
  %182 = call i32 @memset(%struct.inodesc* %6, i32 0, i32 40)
  %183 = load i32, i32* @DATA, align 4
  %184 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 4
  store i32 %183, i32* %184, align 8
  %185 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %186 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 0
  store i8* %188, i8** %189, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 3
  store i8* %190, i8** %191, align 8
  %192 = load i32, i32* @findname, align 4
  %193 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 2
  store i32 %192, i32* %193, align 8
  %194 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 1
  store i8* %13, i8** %194, align 8
  %195 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %196 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = call i32 @ginode(i8* %198)
  %200 = call i32 @ckinode(i32 %199, %struct.inodesc* %6)
  %201 = load i32, i32* @FOUND, align 4
  %202 = and i32 %200, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %181
  %205 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %181
  %207 = load i8*, i8** %5, align 8
  %208 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %209 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i8*
  %212 = call i64 @linkup(i8* %207, i8* %211, i8* %13)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %244

214:                                              ; preds = %206
  %215 = load i32, i32* @clearentry, align 4
  %216 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 2
  store i32 %215, i32* %216, align 8
  %217 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %218 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @ginode(i8* %220)
  %222 = call i32 @ckinode(i32 %221, %struct.inodesc* %6)
  %223 = load i32, i32* @FOUND, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %214
  %227 = load i8*, i8** %5, align 8
  %228 = call %struct.TYPE_2__* @inoinfo(i8* %227)
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %226, %214
  %233 = load i8*, i8** @lfdir, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %236 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %235, i32 0, i32 2
  store i64 %234, i64* %236, align 8
  %237 = load %struct.inoinfo*, %struct.inoinfo** %1, align 8
  %238 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %237, i32 0, i32 1
  store i64 %234, i64* %238, align 8
  %239 = load i8*, i8** @lfdir, align 8
  %240 = call %struct.TYPE_2__* @inoinfo(i8* %239)
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %232, %206
  %245 = load i8*, i8** @DFOUND, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load i8*, i8** %5, align 8
  %248 = call %struct.TYPE_2__* @inoinfo(i8* %247)
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 4
  %250 = call i32 (...) @propagate()
  br label %251

251:                                              ; preds = %244, %180, %167, %114, %82, %77
  %252 = load i32, i32* %3, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %3, align 4
  br label %16

254:                                              ; preds = %16
  %255 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %255)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @setproctitle(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_2__* @inoinfo(i8*) #2

declare dso_local i64 @S_IS_DUNFOUND(i32) #2

declare dso_local i32 @INO_IS_DUNFOUND(i64) #2

declare dso_local %struct.inoinfo* @getinoinfo(i64) #2

declare dso_local i64 @linkup(i8*, i8*, i8*) #2

declare dso_local i32 @propagate(...) #2

declare dso_local i32 @pfatal(i8*, ...) #2

declare dso_local i64 @reply(i8*) #2

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #2

declare dso_local i32 @ckinode(i32, %struct.inodesc*) #2

declare dso_local i32 @ginode(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
