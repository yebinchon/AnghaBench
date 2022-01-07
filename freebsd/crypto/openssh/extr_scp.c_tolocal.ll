; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_tolocal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_tolocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: invalid uri\0A\00", align 1
@errs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_PATH_CP = common dso_local global i8* null, align 8
@iamrecursive = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@pflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s -f %s%s\00", align 1
@cmd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@remin = common dso_local global i32 0, align 4
@remout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tolocal(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %12, align 4
  %13 = call i32 @memset(%struct.TYPE_6__* %9, i8 signext 0, i32 8)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32* null, i32** %14, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %135, %2
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %138

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @parse_scp_uri(i8* %31, i8** %8, i8** %6, i32* %12, i8** %7)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %45

35:                                               ; preds = %20
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fmprintf(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @errs, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @errs, align 4
  br label %135

45:                                               ; preds = %20
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @parse_user_host_path(i8* %53, i8** %8, i8** %6, i8** %7)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @okname(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @errs, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @errs, align 4
  br label %135

65:                                               ; preds = %58, %55
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %102, label %68

68:                                               ; preds = %65
  %69 = call i32 @freeargs(%struct.TYPE_6__* %9)
  %70 = load i8*, i8** @_PATH_CP, align 8
  %71 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i64, i64* @iamrecursive, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i64, i64* @pflag, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8**, i8*** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load i8**, i8*** %4, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = call i64 @do_local_cmd(%struct.TYPE_6__* %9)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %81
  %99 = load i32, i32* @errs, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @errs, align 4
  br label %101

101:                                              ; preds = %98, %81
  br label %135

102:                                              ; preds = %65
  %103 = load i32, i32* @cmd, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 45
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @xasprintf(i8** %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %103, i8* %109, i8* %110)
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @do_cmd(i8* %112, i8* %113, i32 %114, i8* %115, i32* @remin, i32* @remout)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %102
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i32, i32* @errs, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @errs, align 4
  br label %135

123:                                              ; preds = %102
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i8**, i8*** %4, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = getelementptr inbounds i8*, i8** %129, i64 -1
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @sink(i32 1, i8** %130, i8* %131)
  %133 = load i32, i32* @remin, align 4
  %134 = call i32 @close(i32 %133)
  store i32 -1, i32* @remout, align 4
  store i32 -1, i32* @remin, align 4
  br label %135

135:                                              ; preds = %123, %118, %101, %62, %35
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %15

138:                                              ; preds = %15
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @free(i8* %143)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_scp_uri(i8*, i8**, i8**, i32*, i8**) #1

declare dso_local i32 @fmprintf(i32, i8*, i8*) #1

declare dso_local i32 @parse_user_host_path(i8*, i8**, i8**, i8**) #1

declare dso_local i32 @okname(i8*) #1

declare dso_local i32 @freeargs(%struct.TYPE_6__*) #1

declare dso_local i32 @addargs(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @do_local_cmd(%struct.TYPE_6__*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*, i8*) #1

declare dso_local i64 @do_cmd(i8*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @sink(i32, i8**, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
