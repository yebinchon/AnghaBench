; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_doproxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_doproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 (i32, i8**)*, i32, i64, i32 }

@MAX_C_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"usage: %s command\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"?Ambiguous command.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"?Invalid command.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"?Invalid proxy command.\0A\00", align 1
@abortprox = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@proxabort = common dso_local global i32 0, align 4
@connected = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"Not connected.\0A\00", align 1
@line = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@proxflag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doproxy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* @MAX_C_NAME, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %2
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @UPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %10, align 4
  br label %119

28:                                               ; preds = %20, %17
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call %struct.cmd* @getcmd(i8* %31)
  store %struct.cmd* %32, %struct.cmd** %5, align 8
  %33 = load %struct.cmd*, %struct.cmd** %5, align 8
  %34 = icmp eq %struct.cmd* %33, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ttyout, align 4
  %37 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %10, align 4
  br label %119

38:                                               ; preds = %28
  %39 = load %struct.cmd*, %struct.cmd** %5, align 8
  %40 = icmp eq %struct.cmd* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ttyout, align 4
  %43 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %10, align 4
  br label %119

44:                                               ; preds = %38
  %45 = load %struct.cmd*, %struct.cmd** %5, align 8
  %46 = getelementptr inbounds %struct.cmd, %struct.cmd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ttyout, align 4
  %51 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %10, align 4
  br label %119

52:                                               ; preds = %44
  %53 = load i32, i32* @abortprox, align 4
  %54 = call i64 @sigsetjmp(i32 %53, i32 1) #4
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %10, align 4
  br label %119

57:                                               ; preds = %52
  %58 = load i32, i32* @SIGINT, align 4
  %59 = load i32, i32* @proxabort, align 4
  %60 = call i32 @xsignal(i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = call i32 @pswitch(i32 1)
  %62 = load %struct.cmd*, %struct.cmd** %5, align 8
  %63 = getelementptr inbounds %struct.cmd, %struct.cmd* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load i64, i64* @connected, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ttyout, align 4
  %71 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = call i32 @pswitch(i32 0)
  %73 = load i32, i32* @SIGINT, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @xsignal(i32 %73, i32 %74)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %10, align 4
  br label %119

76:                                               ; preds = %66, %57
  %77 = load i64, i64* @line, align 8
  %78 = call i32 @strcspn(i64 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i64, i64* @line, align 8
  %83 = load i64, i64* @line, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = add nsw i64 %86, 1
  %88 = load i64, i64* @line, align 8
  %89 = call i32 @strlen(i64 %88)
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %89, %90
  %92 = add nsw i32 %91, 1
  %93 = call i32 @memmove(i64 %82, i64 %87, i32 %92)
  br label %94

94:                                               ; preds = %81, %76
  %95 = load %struct.cmd*, %struct.cmd** %5, align 8
  %96 = getelementptr inbounds %struct.cmd, %struct.cmd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = trunc i64 %12 to i32
  %99 = call i32 @strlcpy(i8* %14, i32 %97, i32 %98)
  %100 = load i8**, i8*** %4, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  store i8* %14, i8** %101, align 8
  %102 = load %struct.cmd*, %struct.cmd** %5, align 8
  %103 = getelementptr inbounds %struct.cmd, %struct.cmd* %102, i32 0, i32 0
  %104 = load i32 (i32, i8**)*, i32 (i32, i8**)** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i8**, i8*** %4, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  %109 = call i32 %104(i32 %106, i8** %108)
  %110 = load i64, i64* @connected, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %94
  store i32 1, i32* @proxflag, align 4
  br label %114

113:                                              ; preds = %94
  store i32 0, i32* @proxflag, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = call i32 @pswitch(i32 0)
  %116 = load i32, i32* @SIGINT, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @xsignal(i32 %116, i32 %117)
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %114, %69, %56, %49, %41, %35, %23
  %120 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %10, align 4
  switch i32 %121, label %123 [
    i32 0, label %122
    i32 1, label %122
  ]

122:                                              ; preds = %119, %119
  ret void

123:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @another(i32*, i8***, i8*) #2

declare dso_local i32 @UPRINTF(i8*, i8*) #2

declare dso_local %struct.cmd* @getcmd(i8*) #2

declare dso_local i32 @fputs(i8*, i32) #2

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #3

declare dso_local i32 @xsignal(i32, i32) #2

declare dso_local i32 @pswitch(i32) #2

declare dso_local i32 @strcspn(i64, i8*) #2

declare dso_local i32 @memmove(i64, i64, i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
