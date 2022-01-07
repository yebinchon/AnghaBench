; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doforeach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doforeach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whyle = type { i8**, i8**, %struct.TYPE_2__, %struct.whyle*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.command = type { i32 }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_VARBEGIN = common dso_local global i32 0, align 4
@ERR_VARALNUM = common dso_local global i32 0, align 4
@ERR_NOPAREN = common dso_local global i32 0, align 4
@noexec = common dso_local global i32 0, align 4
@ERR_NOMATCH = common dso_local global i32 0, align 4
@whyles = common dso_local global %struct.whyle* null, align 8
@TCSH_F_SEEK = common dso_local global i32 0, align 4
@TC_FOREACH = common dso_local global i32 0, align 4
@zlast = common dso_local global i32 0, align 4
@intty = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doforeach(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.whyle*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %9 = load %struct.command*, %struct.command** %4, align 8
  %10 = call i32 @USE(%struct.command* %9)
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %3, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @strip(i8* %14)
  store i8* %15, i8** %6, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @letter(i8 signext %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERR_NAME, align 4
  %22 = load i32, i32* @ERR_VARBEGIN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @stderror(i32 %23)
  br label %25

25:                                               ; preds = %20, %2
  br label %26

26:                                               ; preds = %29, %25
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @alnum(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %26, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @ERR_NAME, align 4
  %41 = load i32, i32* @ERR_VARALNUM, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @stderror(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8**, i8*** %3, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %3, align 8
  %47 = load i8*, i8** %45, align 8
  store i8* %47, i8** %5, align 8
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 40
  br i1 %54, label %67, label %55

55:                                               ; preds = %44
  %56 = load i8**, i8*** %3, align 8
  %57 = load i8**, i8*** %3, align 8
  %58 = call i32 @blklen(i8** %57)
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %56, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 41
  br i1 %66, label %67, label %72

67:                                               ; preds = %55, %44
  %68 = load i32, i32* @ERR_NAME, align 4
  %69 = load i32, i32* @ERR_NOPAREN, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @stderror(i32 %70)
  br label %72

72:                                               ; preds = %67, %55
  %73 = load i8**, i8*** %3, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %3, align 8
  %75 = load i8**, i8*** %3, align 8
  %76 = call i32 @tglob(i8** %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load i8**, i8*** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i8** @globall(i8** %80, i32 %81)
  store i8** %82, i8*** %3, align 8
  %83 = load i8**, i8*** %3, align 8
  %84 = icmp eq i8** %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32, i32* @noexec, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @ERR_NAME, align 4
  %90 = load i32, i32* @ERR_NOMATCH, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @stderror(i32 %91)
  br label %93

93:                                               ; preds = %88, %85, %79
  br label %99

94:                                               ; preds = %72
  %95 = load i8**, i8*** %3, align 8
  %96 = call i8** @saveblk(i8** %95)
  store i8** %96, i8*** %3, align 8
  %97 = load i8**, i8*** %3, align 8
  %98 = call i32 @trim(i8** %97)
  br label %99

99:                                               ; preds = %94, %93
  %100 = call %struct.whyle* @xcalloc(i32 1, i32 40)
  store %struct.whyle* %100, %struct.whyle** %7, align 8
  %101 = load i8**, i8*** %3, align 8
  %102 = load %struct.whyle*, %struct.whyle** %7, align 8
  %103 = getelementptr inbounds %struct.whyle, %struct.whyle* %102, i32 0, i32 1
  store i8** %101, i8*** %103, align 8
  %104 = load %struct.whyle*, %struct.whyle** %7, align 8
  %105 = getelementptr inbounds %struct.whyle, %struct.whyle* %104, i32 0, i32 0
  store i8** %101, i8*** %105, align 8
  %106 = load %struct.whyle*, %struct.whyle** %7, align 8
  %107 = getelementptr inbounds %struct.whyle, %struct.whyle* %106, i32 0, i32 5
  %108 = call i32 @btell(i32* %107)
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @Strsave(i8* %109)
  %111 = load %struct.whyle*, %struct.whyle** %7, align 8
  %112 = getelementptr inbounds %struct.whyle, %struct.whyle* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  %114 = load %struct.whyle*, %struct.whyle** %7, align 8
  %115 = getelementptr inbounds %struct.whyle, %struct.whyle* %114, i32 0, i32 3
  store %struct.whyle* %113, %struct.whyle** %115, align 8
  %116 = load i32, i32* @TCSH_F_SEEK, align 4
  %117 = load %struct.whyle*, %struct.whyle** %7, align 8
  %118 = getelementptr inbounds %struct.whyle, %struct.whyle* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.whyle*, %struct.whyle** %7, align 8
  store %struct.whyle* %120, %struct.whyle** @whyles, align 8
  %121 = load i32, i32* @TC_FOREACH, align 4
  store i32 %121, i32* @zlast, align 4
  %122 = load i64, i64* @intty, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = call i32 (...) @preread()
  br label %126

126:                                              ; preds = %124, %99
  %127 = load i32, i32* @noexec, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = call i32 (...) @doagain()
  br label %131

131:                                              ; preds = %129, %126
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i8* @strip(i8*) #1

declare dso_local i32 @letter(i8 signext) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @alnum(i8 signext) #1

declare dso_local i32 @blklen(i8**) #1

declare dso_local i32 @tglob(i8**) #1

declare dso_local i8** @globall(i8**, i32) #1

declare dso_local i8** @saveblk(i8**) #1

declare dso_local i32 @trim(i8**) #1

declare dso_local %struct.whyle* @xcalloc(i32, i32) #1

declare dso_local i32 @btell(i32*) #1

declare dso_local i32 @Strsave(i8*) #1

declare dso_local i32 @preread(...) #1

declare dso_local i32 @doagain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
