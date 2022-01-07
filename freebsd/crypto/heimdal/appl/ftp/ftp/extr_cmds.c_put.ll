; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"local-file\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"remote-file\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"usage: %s local-file remote-file\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"APPE\00", align 1
@sunique = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@curtype = common dso_local global i64 0, align 8
@TYPE_I = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %11, %2
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %35

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 -1, i32* @code, align 4
  br label %139

40:                                               ; preds = %31, %28
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = call i32 @globulize(i8** %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  store i32 -1, i32* @code, align 4
  br label %139

52:                                               ; preds = %40
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %64, %58, %52
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 97
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  %80 = load i64, i64* @sunique, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  br label %84

84:                                               ; preds = %79, %78
  %85 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %78 ], [ %83, %79 ]
  store i8* %85, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i64, i64* @ntflag, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @dotrans(i8* %94)
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %91, %88, %84
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i64, i64* @mapflag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i8**, i8*** %4, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @domap(i8* %107)
  %109 = load i8**, i8*** %4, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %104, %101, %98
  %112 = load i8*, i8** %5, align 8
  %113 = load i8**, i8*** %4, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 2
  %118 = load i8*, i8** %117, align 8
  %119 = load i64, i64* @curtype, align 8
  %120 = load i64, i64* @TYPE_I, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = icmp ne i8* %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %111
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %132, %133
  br label %135

135:                                              ; preds = %129, %111
  %136 = phi i1 [ true, %111 ], [ %134, %129 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @sendrequest(i8* %112, i8* %115, i8* %118, i8* %123, i32 %137)
  br label %139

139:                                              ; preds = %135, %51, %35
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @globulize(i8**) #1

declare dso_local i8* @dotrans(i8*) #1

declare dso_local i8* @domap(i8*) #1

declare dso_local i32 @sendrequest(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
