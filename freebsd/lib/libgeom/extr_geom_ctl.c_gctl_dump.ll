; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_ctl.c_gctl_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_ctl.c_gctl_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i8*, i32, %struct.gctl_req_arg* }
%struct.gctl_req_arg = type { i8*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Dump of gctl request at NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Dump of gctl request at %p:\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  error:\09\22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  error:\09NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  param:\09\22%s\22 (%d)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" [%s%s\00", align 1
@GCTL_PARAM_RD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GCTL_PARAM_WR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@GCTL_PARAM_ASCII = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"%d] = \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d] = \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"0] = %p\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gctl_dump(%struct.gctl_req* %0, i32* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gctl_req_arg*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %9 = icmp eq %struct.gctl_req* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %135

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.gctl_req* %15)
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %30

27:                                               ; preds = %13
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %132, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %34 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %135

37:                                               ; preds = %31
  %38 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %39 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %38, i32 0, i32 2
  %40 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %40, i64 %42
  store %struct.gctl_req_arg* %43, %struct.gctl_req_arg** %7, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %46 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %49 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %47, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %54 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GCTL_PARAM_RD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %61 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %62 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GCTL_PARAM_WR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fflush(i32* %70)
  %72 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %73 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GCTL_PARAM_ASCII, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %37
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %81 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %84 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %82, i8* %86)
  br label %129

88:                                               ; preds = %37
  %89 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %90 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %88
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %96 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @fflush(i32* %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %118, %93
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %104 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %110 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %101

121:                                              ; preds = %101
  br label %128

122:                                              ; preds = %88
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %7, align 8
  %125 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %122, %121
  br label %129

129:                                              ; preds = %128, %78
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %31

135:                                              ; preds = %10, %31
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
