; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }

@CL_RENAME_OK = common dso_local global i32 0, align 4
@GO_TERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"WINDOWID\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"xprop -id %s WM_NAME\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@CL_RENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_rename(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = call %struct.TYPE_10__* @CLP(%struct.TYPE_9__* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %94

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = load i32, i32* @CL_RENAME_OK, align 4
  %29 = call i64 @F_ISSET(%struct.TYPE_10__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @GO_TERM, align 4
  %34 = call i32 @OG_STR(i32* %32, i32 %33)
  %35 = call i64 @strncmp(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %23
  store i32 0, i32* %4, align 4
  br label %110

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @snprintf(i8* %47, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %51 = call i32* @popen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %87

54:                                               ; preds = %46
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %56 = load i32*, i32** %10, align 8
  %57 = call i32* @fgets(i8* %55, i32 256, i32* %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @pclose(i32* %60)
  br label %87

62:                                               ; preds = %54
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @pclose(i32* %63)
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %66 = call i8* @strchr(i8* %65, i8 signext 34)
  store i8* %66, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %70 = call i8* @strrchr(i8* %69, i8 signext 34)
  store i8* %70, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sub nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i8* @strndup(i8* %74, i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %72, %68, %62
  br label %86

86:                                               ; preds = %85, %43, %38
  br label %87

87:                                               ; preds = %86, %59, %53
  %88 = load i32*, i32** %8, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @cl_setname(i32* %88, i8* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = load i32, i32* @CL_RENAME, align 4
  %93 = call i32 @F_SET(%struct.TYPE_10__* %91, i32 %92)
  br label %109

94:                                               ; preds = %3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = load i32, i32* @CL_RENAME, align 4
  %97 = call i64 @F_ISSET(%struct.TYPE_10__* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @cl_setname(i32* %100, i8* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = load i32, i32* @CL_RENAME, align 4
  %107 = call i32 @F_CLR(%struct.TYPE_10__* %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %94
  br label %109

109:                                              ; preds = %108, %87
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %37
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_10__* @CLP(%struct.TYPE_9__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @OG_STR(i32*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @cl_setname(i32*, i8*) #1

declare dso_local i32 @F_SET(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
