; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"local-file\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"remote-file\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"usage: %s local-file [remote-file]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"APPE\00", align 1
@sunique = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %28
  br label %48

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @UPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %11, align 4
  br label %123

53:                                               ; preds = %44
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @globulize(i8* %56)
  store i8* %57, i8** %9, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %11, align 4
  br label %123

60:                                               ; preds = %53
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 97
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %82

77:                                               ; preds = %68
  %78 = load i64, i64* @sunique, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  br label %82

82:                                               ; preds = %77, %76
  %83 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %76 ], [ %81, %77 ]
  store i8* %83, i8** %7, align 8
  %84 = trunc i64 %13 to i32
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i64, i64* @ntflag, align 8
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi i1 [ false, %82 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i64, i64* @mapflag, align 8
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %96, %91
  %100 = phi i1 [ false, %91 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = call i8* @doprocess(i8* %15, i32 %84, i8* %85, i32 0, i32 %93, i32 %101)
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8**, i8*** %4, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %106, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %99
  %112 = load i8*, i8** %10, align 8
  %113 = load i8**, i8*** %4, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %112, %115
  br label %117

117:                                              ; preds = %111, %99
  %118 = phi i1 [ true, %99 ], [ %116, %111 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @sendrequest(i8* %103, i8* %104, i8* %105, i32 %119)
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @free(i8* %121)
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %117, %59, %48
  %124 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %11, align 4
  switch i32 %125, label %127 [
    i32 0, label %126
    i32 1, label %126
  ]

126:                                              ; preds = %123, %123
  ret void

127:                                              ; preds = %123
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @another(i32*, i8***, i8*) #2

declare dso_local i32 @UPRINTF(i8*, i8*) #2

declare dso_local i8* @globulize(i8*) #2

declare dso_local i8* @doprocess(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @sendrequest(i8*, i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
