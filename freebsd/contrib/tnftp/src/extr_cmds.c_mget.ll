; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"remote-files\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"usage: %s remote-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@restart_point = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"mreget\00", align 1
@features = common dso_local global i32* null, align 8
@FEAT_REST_STREAM = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Restart is not supported by the remote server.\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@mintr = common dso_local global i32 0, align 4
@jabort = common dso_local global i32 0, align 4
@proxy = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@connected = common dso_local global i32 0, align 4
@localcwd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Skipping non-relative filename `%s'\0A\00", align 1
@mcase = common dso_local global i32 0, align 4
@ntflag = common dso_local global i32 0, align 4
@mapflag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Can't stat `%s'\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@interactive = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mget(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19, %2
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @UPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 -1, i32* @code, align 4
  br label %159

27:                                               ; preds = %19, %16
  store i32 1, i32* @mflag, align 4
  store i64 0, i64* @restart_point, align 8
  store volatile i32 0, i32* %9, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32*, i32** @features, align 8
  %35 = load i64, i64* @FEAT_REST_STREAM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ttyout, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %159

42:                                               ; preds = %33
  store volatile i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* @SIGINT, align 4
  %45 = load i32, i32* @mintr, align 4
  %46 = call i32 @xsignal(i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @jabort, align 4
  %48 = call i64 @sigsetjmp(i32 %47, i32 1) #4
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @mabort(i8* %53)
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %154, %151, %55
  %57 = load i8**, i8*** %4, align 8
  %58 = load i32, i32* @proxy, align 4
  %59 = call i8* @remglob(i8** %57, i32 %58, i32* null)
  store i8* %59, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %155

61:                                               ; preds = %56
  %62 = load i32, i32* @MAXPATHLEN, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %10, align 8
  %65 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %11, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @connected, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %61
  store i32 0, i32* @mflag, align 4
  store i32 2, i32* %12, align 4
  br label %151

74:                                               ; preds = %70
  %75 = load i32, i32* @mflag, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 2, i32* %12, align 4
  br label %151

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @localcwd, align 4
  %81 = call i32 @fileindir(i8* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @ttyout, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  store i32 2, i32* %12, align 4
  br label %151

87:                                               ; preds = %78
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @confirm(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 2, i32* %12, align 4
  br label %151

95:                                               ; preds = %87
  %96 = trunc i64 %63 to i32
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @mcase, align 4
  %99 = load i32, i32* @ntflag, align 4
  %100 = load i32, i32* @mapflag, align 4
  %101 = call i8* @doprocess(i8* %65, i32 %96, i8* %97, i32 %98, i32 %99, i32 %100)
  store i8* %101, i8** %8, align 8
  %102 = load volatile i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %95
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @stat(i8* %105, %struct.stat* %13)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* @restart_point, align 8
  br label %114

111:                                              ; preds = %104
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* @restart_point, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %122 = load i8*, i8** %8, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = icmp ne i8* %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* @interactive, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %125, %115
  %130 = phi i1 [ true, %115 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %116, i8* %117, i8* %121, i32 %131, i32 1)
  store i64 0, i64* @restart_point, align 8
  %133 = load i32, i32* @mflag, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %129
  %136 = load i64, i64* @fromatty, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load i32, i32* @interactive, align 4
  store i32 %139, i32* %6, align 4
  store i32 1, i32* @interactive, align 4
  %140 = load i8**, i8*** %4, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @confirm(i8* %142, i8* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* @mflag, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @mflag, align 4
  br label %148

148:                                              ; preds = %145, %138
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* @interactive, align 4
  br label %150

150:                                              ; preds = %148, %135, %129
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %150, %94, %83, %77, %73
  %152 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %12, align 4
  switch i32 %153, label %160 [
    i32 0, label %154
    i32 2, label %56
  ]

154:                                              ; preds = %151
  br label %56

155:                                              ; preds = %56
  %156 = load i32, i32* @SIGINT, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @xsignal(i32 %156, i32 %157)
  store i32 0, i32* @mflag, align 4
  br label %159

159:                                              ; preds = %155, %39, %22
  ret void

160:                                              ; preds = %151
  unreachable
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @xsignal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @mabort(i8*) #1

declare dso_local i8* @remglob(i8**, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @fileindir(i8*, i32) #1

declare dso_local i64 @confirm(i8*, i8*) #1

declare dso_local i8* @doprocess(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
