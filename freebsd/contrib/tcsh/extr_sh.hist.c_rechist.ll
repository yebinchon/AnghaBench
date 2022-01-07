; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_rechist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_rechist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i64* }
%struct.stat = type { i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@rechist.dumphist = internal global [4 x i8*] [i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 128 to i8*), i8* null, i8* null], align 16
@STRsavehist = common dso_local global i8* null, align 8
@STRNULL = common dso_local global i8* null, align 8
@STRmaxint = common dso_local global i8* null, align 8
@STRhistfile = common dso_local global i8* null, align 8
@STRhome = common dso_local global i8* null, align 8
@STRtildothist = common dso_local global i32* null, align 8
@G_ERROR = common dso_local global i32 0, align 4
@didfds = common dso_local global i32 0, align 4
@STRmerge = common dso_local global i32 0, align 4
@STRlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%S.%S\00", align 1
@SHOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rechist(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.varent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 1, i32* %14, align 4
  br label %192

30:                                               ; preds = %26, %2
  %31 = load i8*, i8** @STRsavehist, align 8
  %32 = call i8* @varval(i8* %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** @STRNULL, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = call i8* @varval(i8* inttoptr (i64 129 to i8*))
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** @STRNULL, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i8*, i8** @STRmaxint, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %39, %35, %30
  %42 = load i8*, i8** %3, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i8*, i8** @STRhistfile, align 8
  %46 = call i8* @varval(i8* %45)
  store i8* %46, i8** %3, align 8
  %47 = load i8*, i8** @STRNULL, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** @STRhome, align 8
  %51 = call i8* @varval(i8* %50)
  %52 = load i32*, i32** @STRtildothist, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i8* @Strspl(i8* %51, i32* %53)
  store i8* %54, i8** %3, align 8
  br label %58

55:                                               ; preds = %44
  %56 = load i8*, i8** %3, align 8
  %57 = call i8* @Strsave(i8* %56)
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %55, %49
  br label %63

59:                                               ; preds = %41
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @G_ERROR, align 4
  %62 = call i8* @globone(i8* %60, i32 %61)
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @cleanup_push(i8* %64, i32 (i8*)* @xfree)
  %66 = load i32, i32* @didfds, align 4
  store i32 %66, i32* %9, align 4
  store i32 0, i32* @didfds, align 4
  %67 = load i8*, i8** @STRsavehist, align 8
  %68 = call %struct.varent* @adrof(i8* %67)
  store %struct.varent* %68, %struct.varent** %10, align 8
  %69 = icmp ne %struct.varent* %68, null
  br i1 %69, label %70, label %145

70:                                               ; preds = %63
  %71 = load %struct.varent*, %struct.varent** %10, align 8
  %72 = getelementptr inbounds %struct.varent, %struct.varent* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %145

75:                                               ; preds = %70
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 1, i64* %15, align 8
  br label %76

76:                                               ; preds = %111, %75
  %77 = load %struct.varent*, %struct.varent** %10, align 8
  %78 = getelementptr inbounds %struct.varent, %struct.varent* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %76
  %85 = load %struct.varent*, %struct.varent** %10, align 8
  %86 = getelementptr inbounds %struct.varent, %struct.varent* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @STRmerge, align 4
  %92 = call i64 @eq(i64 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %84
  %98 = load %struct.varent*, %struct.varent** %10, align 8
  %99 = getelementptr inbounds %struct.varent, %struct.varent* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @STRlock, align 4
  %105 = call i64 @eq(i64 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %107, %97
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %76

114:                                              ; preds = %76
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @short2str(i8* %121)
  %123 = call i8* @strsave(i32 %122)
  store i8* %123, i8** %19, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = call i32 @cleanup_push(i8* %124, i32 (i8*)* @xfree)
  %126 = load i8*, i8** %19, align 8
  %127 = call i64 @dot_lock(i8* %126, i32 100)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i8*, i8** %19, align 8
  %131 = call i32 @cleanup_push(i8* %130, i32 (i8*)* @dotlock_cleanup)
  br label %132

132:                                              ; preds = %129, %120
  br label %133

133:                                              ; preds = %132, %117
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @getexit(i32 %134)
  %136 = call i64 (...) @setexit()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %3, align 8
  %140 = call i32 @loadhist(i8* %139, i32 1)
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @resexit(i32 %142)
  br label %144

144:                                              ; preds = %141, %114
  br label %145

145:                                              ; preds = %144, %70, %63
  %146 = call i8* (...) @randsuf()
  store i8* %146, i8** %6, align 8
  %147 = trunc i64 %21 to i32
  %148 = load i8*, i8** %3, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @xsnprintf(i8* %23, i32 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %148, i8* %149)
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @xfree(i8* %151)
  %153 = call i32 @xcreat(i8* %23, i32 384)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* @didfds, align 4
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 @cleanup_until(i8* %158)
  store i32 1, i32* %14, align 4
  br label %192

160:                                              ; preds = %145
  %161 = load i8*, i8** %3, align 8
  %162 = call i32 @short2str(i8* %161)
  %163 = call i32 @stat(i32 %162, %struct.stat* %13)
  %164 = icmp ne i32 %163, -1
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load i32, i32* %7, align 4
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @fchown(i32 %166, i32 %168, i32 %170)
  %172 = call i32 @TCSH_IGNORE(i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @fchmod(i32 %173, i32 %175)
  %177 = call i32 @TCSH_IGNORE(i32 %176)
  br label %178

178:                                              ; preds = %165, %160
  %179 = load i32, i32* @SHOUT, align 4
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* @SHOUT, align 4
  %181 = load i8*, i8** %5, align 8
  store i8* %181, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @rechist.dumphist, i64 0, i64 2), align 16
  %182 = call i32 @dohist(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @rechist.dumphist, i64 0, i64 0), i32* null)
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @xclose(i32 %183)
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* @SHOUT, align 4
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* @didfds, align 4
  %187 = load i8*, i8** %3, align 8
  %188 = call i32 @short2str(i8* %187)
  %189 = call i32 @rename(i8* %23, i32 %188)
  %190 = load i8*, i8** %3, align 8
  %191 = call i32 @cleanup_until(i8* %190)
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %178, %156, %29
  %193 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %14, align 4
  switch i32 %194, label %196 [
    i32 0, label %195
    i32 1, label %195
  ]

195:                                              ; preds = %192, %192
  ret void

196:                                              ; preds = %192
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @varval(i8*) #2

declare dso_local i8* @Strspl(i8*, i32*) #2

declare dso_local i8* @Strsave(i8*) #2

declare dso_local i8* @globone(i8*, i32) #2

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #2

declare dso_local i32 @xfree(i8*) #2

declare dso_local %struct.varent* @adrof(i8*) #2

declare dso_local i64 @eq(i64, i32) #2

declare dso_local i8* @strsave(i32) #2

declare dso_local i32 @short2str(i8*) #2

declare dso_local i64 @dot_lock(i8*, i32) #2

declare dso_local i32 @dotlock_cleanup(i8*) #2

declare dso_local i32 @getexit(i32) #2

declare dso_local i64 @setexit(...) #2

declare dso_local i32 @loadhist(i8*, i32) #2

declare dso_local i32 @resexit(i32) #2

declare dso_local i8* @randsuf(...) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @xcreat(i8*, i32) #2

declare dso_local i32 @cleanup_until(i8*) #2

declare dso_local i32 @stat(i32, %struct.stat*) #2

declare dso_local i32 @TCSH_IGNORE(i32) #2

declare dso_local i32 @fchown(i32, i32, i32) #2

declare dso_local i32 @fchmod(i32, i32) #2

declare dso_local i32 @dohist(i8**, i32*) #2

declare dso_local i32 @xclose(i32) #2

declare dso_local i32 @rename(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
