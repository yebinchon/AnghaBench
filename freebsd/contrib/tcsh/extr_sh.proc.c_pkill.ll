; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i32, i32, i32, %struct.process* }

@blk_cleanup = common dso_local global i32 0, align 4
@pchild_disabled = common dso_local global i8* null, align 8
@disabled_cleanup = common dso_local global i32 0, align 4
@setintr = common dso_local global i64 0, align 8
@pintr_disabled = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%S: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_JOBARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@ERR_SILENT = common dso_local global i32 0, align 4
@ERR_BADJOB = common dso_local global i32 0, align 4
@PRUNNING = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @pkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkill(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.process*, align 8
  %6 = alloca %struct.process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i8**, i8*** %3, align 8
  store i8** %14, i8*** %11, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i8**, i8*** %11, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8**, i8*** %11, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %38

24:                                               ; preds = %22
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8**, i8*** %11, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @quote(i8* %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34
  %36 = load i8**, i8*** %11, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %11, align 8
  br label %15

38:                                               ; preds = %22
  %39 = load i8**, i8*** %3, align 8
  %40 = call i8** @glob_all_or_error(i8** %39)
  store i8** %40, i8*** %3, align 8
  %41 = load i8**, i8*** %3, align 8
  store i8** %41, i8*** %12, align 8
  %42 = load i8**, i8*** %12, align 8
  %43 = load i32, i32* @blk_cleanup, align 4
  %44 = call i32 @cleanup_push(i8** %42, i32 %43)
  %45 = load i8*, i8** @pchild_disabled, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** @pchild_disabled, align 8
  %47 = load i32, i32* @disabled_cleanup, align 4
  %48 = call i32 @cleanup_push(i8** @pchild_disabled, i32 %47)
  %49 = load i64, i64* @setintr, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load i8*, i8** @pintr_disabled, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** @pintr_disabled, align 8
  %54 = load i32, i32* @disabled_cleanup, align 4
  %55 = call i32 @cleanup_push(i8** @pintr_disabled, i32 %54)
  br label %56

56:                                               ; preds = %51, %38
  br label %57

57:                                               ; preds = %144, %56
  %58 = load i8**, i8*** %3, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8**, i8*** %3, align 8
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %147

66:                                               ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = call %struct.process* @pfind(i8* %72)
  store %struct.process* %73, %struct.process** %5, align 8
  store %struct.process* %73, %struct.process** %6, align 8
  br label %74

74:                                               ; preds = %80, %71
  %75 = load %struct.process*, %struct.process** %6, align 8
  %76 = getelementptr inbounds %struct.process, %struct.process* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load %struct.process*, %struct.process** %6, align 8
  %82 = getelementptr inbounds %struct.process, %struct.process* %81, i32 0, i32 4
  %83 = load %struct.process*, %struct.process** %82, align 8
  store %struct.process* %83, %struct.process** %6, align 8
  %84 = load %struct.process*, %struct.process** %5, align 8
  %85 = icmp ne %struct.process* %83, %84
  br i1 %85, label %74, label %86

86:                                               ; preds = %80
  %87 = load %struct.process*, %struct.process** %5, align 8
  %88 = getelementptr inbounds %struct.process, %struct.process* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @killpg(i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @strerror(i32 %95)
  %97 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %94, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %93, %86
  br label %143

101:                                              ; preds = %66
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @Isdigit(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %10, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 45
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @ERR_NAME, align 4
  %113 = load i32, i32* @ERR_JOBARGS, align 4
  %114 = or i32 %112, %113
  %115 = call i32 (i32, ...) @stderror(i32 %114)
  br label %142

116:                                              ; preds = %106, %101
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @short2str(i8* %117)
  %119 = call i8* @strtol(i32 %118, i8** %13, i32 10)
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @ERR_NAME, align 4
  %125 = load i32, i32* @ERR_JOBARGS, align 4
  %126 = or i32 %124, %125
  %127 = call i32 (i32, ...) @stderror(i32 %126)
  br label %141

128:                                              ; preds = %116
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i64 @kill(i8* %129, i32 %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* @errno, align 4
  %136 = call i32 @strerror(i32 %135)
  %137 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %134, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %144

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %111
  br label %143

143:                                              ; preds = %142, %100
  br label %144

144:                                              ; preds = %143, %133
  %145 = load i8**, i8*** %3, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %3, align 8
  br label %57

147:                                              ; preds = %64
  %148 = call i32 @cleanup_until(i8** @pchild_disabled)
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @ERR_SILENT, align 4
  %153 = call i32 (i32, ...) @stderror(i32 %152)
  br label %154

154:                                              ; preds = %151, %147
  ret void
}

declare dso_local i32 @quote(i8*) #1

declare dso_local i8** @glob_all_or_error(i8**) #1

declare dso_local i32 @cleanup_push(i8**, i32) #1

declare dso_local %struct.process* @pfind(i8*) #1

declare dso_local i64 @killpg(i32, i32) #1

declare dso_local i32 @xprintf(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i8* @strtol(i32, i8**, i32) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i64 @kill(i8*, i32) #1

declare dso_local i32 @cleanup_until(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
