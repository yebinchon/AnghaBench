; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_mget.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_mget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxPathLen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"remote-files\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"usage: %s remote-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@mabort = common dso_local global i32 0, align 4
@jabort = common dso_local global i32 0, align 4
@proxy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"*** Suspicious filename: %s\0A\00", align 1
@mcase = common dso_local global i64 0, align 8
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@curtype = common dso_local global i64 0, align 8
@TYPE_I = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@interactive = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mget\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mget(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* @MaxPathLen, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %13, align 4
  br label %138

28:                                               ; preds = %20, %2
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %32 = load i32, i32* @SIGINT, align 4
  %33 = load i32, i32* @mabort, align 4
  %34 = call i32 @signal(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @jabort, align 4
  %36 = call i32 @setjmp(i32 %35) #5
  br label %37

37:                                               ; preds = %133, %47, %28
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @proxy, align 4
  %40 = call i8* @remglob(i8** %38, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %134

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* @mflag, align 4
  br label %37

48:                                               ; preds = %42
  %49 = load i32, i32* @mflag, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @suspicious_filename(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %51, %48
  %59 = load i32, i32* @mflag, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %133

61:                                               ; preds = %58
  %62 = load i8**, i8*** %4, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @confirm(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %133

68:                                               ; preds = %61
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %9, align 8
  %70 = load i64, i64* @mcase, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  store i8* %17, i8** %10, align 8
  br label %73

73:                                               ; preds = %79, %72
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  %76 = load i8, i8* %74, align 1
  %77 = zext i8 %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @tolower(i32 %80) #6
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  store i8 %82, i8* %83, align 1
  br label %73

85:                                               ; preds = %73
  %86 = load i8*, i8** %10, align 8
  store i8 0, i8* %86, align 1
  store i8* %17, i8** %9, align 8
  br label %87

87:                                               ; preds = %85, %68
  %88 = load i64, i64* @ntflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = call i8* @dotrans(i8* %91)
  store i8* %92, i8** %9, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i64, i64* @mapflag, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = call i8* @domap(i8* %97)
  store i8* %98, i8** %9, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* @curtype, align 8
  %103 = load i64, i64* @TYPE_I, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* @interactive, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %110, %99
  %115 = phi i1 [ true, %99 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %101, i8* %106, i32 %116, i32 0)
  %118 = load i32, i32* @mflag, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load i64, i64* @fromatty, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* @interactive, align 4
  store i32 %124, i32* %7, align 4
  store i32 1, i32* @interactive, align 4
  %125 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @mflag, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @mflag, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* @interactive, align 4
  br label %132

132:                                              ; preds = %130, %120, %114
  br label %133

133:                                              ; preds = %132, %61, %58
  br label %37

134:                                              ; preds = %37
  %135 = load i32, i32* @SIGINT, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @signal(i32 %135, i32 %136)
  store i32 0, i32* @mflag, align 4
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %134, %23
  %139 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %13, align 4
  switch i32 %140, label %142 [
    i32 0, label %141
    i32 1, label %141
  ]

141:                                              ; preds = %138, %138
  ret void

142:                                              ; preds = %138
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @another(i32*, i8***, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @signal(i32, i32) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i8* @remglob(i8**, i32) #2

declare dso_local i64 @suspicious_filename(i8*) #2

declare dso_local i64 @confirm(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #4

declare dso_local i8* @dotrans(i8*) #2

declare dso_local i8* @domap(i8*) #2

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { returns_twice }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
