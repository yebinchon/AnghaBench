; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_main.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_main.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i8*, i32, i32 (i32, i8**)*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"usage: %s [command [...]]\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%sommands may be abbreviated.  Commands are:\0A\0A\00", align 1
@proxy = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Proxy c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@cmdtab = common dso_local global %struct.cmd* null, align 8
@MAX_C_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"?Ambiguous %s command `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"?Invalid %s command `%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%-*s\09%s\0A\00", align 1
@HELPINDENT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.cmd*, align 8
  %6 = alloca [1 x i8*], align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %2
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @UPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %129

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = call i32* (...) @ftp_sl_init()
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* @ttyout, align 4
  %38 = load i64, i64* @proxy, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.cmd*, %struct.cmd** @cmdtab, align 8
  store %struct.cmd* %43, %struct.cmd** %5, align 8
  br label %44

44:                                               ; preds = %63, %35
  %45 = load %struct.cmd*, %struct.cmd** %5, align 8
  %46 = getelementptr inbounds %struct.cmd, %struct.cmd* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i64, i64* @proxy, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.cmd*, %struct.cmd** %5, align 8
  %54 = getelementptr inbounds %struct.cmd, %struct.cmd* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %49
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @ftp_strdup(i8* %59)
  %61 = call i32 @ftp_sl_add(i32* %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.cmd*, %struct.cmd** %5, align 8
  %65 = getelementptr inbounds %struct.cmd, %struct.cmd* %64, i32 1
  store %struct.cmd* %65, %struct.cmd** %5, align 8
  br label %44

66:                                               ; preds = %44
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @list_vertical(i32* %67)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @sl_free(i32* %69, i32 1)
  br label %129

71:                                               ; preds = %32
  br label %72

72:                                               ; preds = %127, %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %3, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %129

76:                                               ; preds = %72
  %77 = load i32, i32* @MAX_C_NAME, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %12, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %13, align 8
  %81 = load i8**, i8*** %4, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %4, align 8
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call %struct.cmd* @getcmd(i8* %84)
  store %struct.cmd* %85, %struct.cmd** %5, align 8
  %86 = load %struct.cmd*, %struct.cmd** %5, align 8
  %87 = icmp eq %struct.cmd* %86, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i32, i32* @ttyout, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %90, i8* %91)
  br label %127

93:                                               ; preds = %76
  %94 = load %struct.cmd*, %struct.cmd** %5, align 8
  %95 = icmp eq %struct.cmd* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* @ttyout, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %98, i8* %99)
  br label %126

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.cmd*, %struct.cmd** %5, align 8
  %106 = getelementptr inbounds %struct.cmd, %struct.cmd* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = trunc i64 %78 to i32
  %109 = call i32 @strlcpy(i8* %80, i8* %107, i32 %108)
  %110 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  store i8* %80, i8** %110, align 8
  %111 = load %struct.cmd*, %struct.cmd** %5, align 8
  %112 = getelementptr inbounds %struct.cmd, %struct.cmd* %111, i32 0, i32 2
  %113 = load i32 (i32, i8**)*, i32 (i32, i8**)** %112, align 8
  %114 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %115 = call i32 %113(i32 0, i8** %114)
  br label %125

116:                                              ; preds = %101
  %117 = load i32, i32* @ttyout, align 4
  %118 = load %struct.cmd*, %struct.cmd** %5, align 8
  %119 = getelementptr inbounds %struct.cmd, %struct.cmd* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.cmd*, %struct.cmd** %5, align 8
  %122 = getelementptr inbounds %struct.cmd, %struct.cmd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* inttoptr (i64 11 to i8*), i8* %120, i32 %123)
  br label %125

125:                                              ; preds = %116, %104
  br label %126

126:                                              ; preds = %125, %96
  br label %127

127:                                              ; preds = %126, %88
  %128 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %72

129:                                              ; preds = %29, %66, %72
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32* @ftp_sl_init(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @ftp_sl_add(i32*, i32) #1

declare dso_local i32 @ftp_strdup(i8*) #1

declare dso_local i32 @list_vertical(i32*) #1

declare dso_local i32 @sl_free(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.cmd* @getcmd(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
