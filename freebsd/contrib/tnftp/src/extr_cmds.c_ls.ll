; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_ls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mlsd\00", align 1
@features = common dso_local global i32* null, align 8
@FEAT_MLST = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"MLSD is not supported by the remote server.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MLSD\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nlist\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"usage: %s [remote-path]\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"usage: %s [remote-path [local-file]]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"pager\00", align 1
@DEFAULTPAGER = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"output to local-file:\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ls(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 112
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i32*, i32** @features, align 8
  %32 = load i64, i64* @FEAT_MLST, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ttyout, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %161

39:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %86

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %60

48:                                               ; preds = %44
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %59

58:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %3, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %3, align 4
  %69 = icmp sgt i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %3, align 4
  %76 = icmp sgt i32 %75, 3
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %103

85:                                               ; preds = %82, %74
  br label %86

86:                                               ; preds = %85, %43
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89, %86
  %93 = load i8**, i8*** %4, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @UPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %95)
  br label %102

97:                                               ; preds = %89
  %98 = load i8**, i8*** %4, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @UPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %97, %92
  store i32 -1, i32* @code, align 4
  br label %155

103:                                              ; preds = %82, %77
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %103
  %107 = call i8* @getoptionvalue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i64 @EMPTYSTRING(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** @DEFAULTPAGER, align 8
  store i8* %112, i8** %11, align 8
  br label %113

113:                                              ; preds = %111, %106
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i8* @ftp_malloc(i64 %118)
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 124, i8* %121, align 1
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8*, i8** %11, align 8
  %125 = load i64, i64* %12, align 8
  %126 = sub i64 %125, 1
  %127 = call i32 @strlcpy(i8* %123, i8* %124, i64 %126)
  %128 = load i8*, i8** %7, align 8
  store i8* %128, i8** %8, align 8
  br label %150

129:                                              ; preds = %103
  %130 = load i8*, i8** %8, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 124
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load i8*, i8** %8, align 8
  %140 = call i8* @globulize(i8* %139)
  store i8* %140, i8** %7, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @confirm(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142, %138
  store i32 -1, i32* @code, align 4
  br label %155

147:                                              ; preds = %142
  %148 = load i8*, i8** %7, align 8
  store i8* %148, i8** %8, align 8
  br label %149

149:                                              ; preds = %147, %133, %129
  br label %150

150:                                              ; preds = %149, %113
  %151 = load i8*, i8** %5, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @recvrequest(i8* %151, i8* %152, i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  br label %155

155:                                              ; preds = %150, %146, %102
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @free(i8* %159)
  br label %161

161:                                              ; preds = %36, %158, %155
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i8* @getoptionvalue(i8*) #1

declare dso_local i64 @EMPTYSTRING(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ftp_malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @globulize(i8*) #1

declare dso_local i32 @confirm(i8*, i8*) #1

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
