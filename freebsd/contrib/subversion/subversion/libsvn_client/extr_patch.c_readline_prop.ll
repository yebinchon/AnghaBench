; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_readline_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_readline_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8* }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_8__**, i8**, i32*, i32*, i32*)* @readline_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @readline_prop(i8* %0, %struct.TYPE_8__** %1, i8** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp sge i64 %23, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = load i8**, i8*** %10, align 8
  store i8* null, i8** %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %35, align 8
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %7, align 8
  br label %146

37:                                               ; preds = %6
  %38 = load i8**, i8*** %10, align 8
  store i8* null, i8** %38, align 8
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %17, align 4
  br label %40

40:                                               ; preds = %106, %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  store i8* %50, i8** %16, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %17, align 4
  br label %121

61:                                               ; preds = %40
  %62 = load i8*, i8** %16, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  br label %99

68:                                               ; preds = %61
  %69 = load i8*, i8** %16, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 13
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  br label %98

87:                                               ; preds = %68
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %89 = icmp eq %struct.TYPE_8__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %12, align 8
  %92 = call %struct.TYPE_8__* @svn_stringbuf_create_ensure(i32 80, i32* %91)
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %15, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_8__* %94, i8 signext %96)
  br label %98

98:                                               ; preds = %93, %86
  br label %99

99:                                               ; preds = %98, %66
  br label %100

100:                                              ; preds = %99
  %101 = load i8**, i8*** %10, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %121

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i8*, i8** %16, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %112, i64 %118
  %120 = icmp ult i8* %107, %119
  br i1 %120, label %40, label %121

121:                                              ; preds = %106, %104, %59
  %122 = load i32*, i32** %11, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %129 = icmp ne %struct.TYPE_8__* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  br label %135

135:                                              ; preds = %130, %127
  %136 = phi i1 [ false, %127 ], [ %134, %130 ]
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %135, %124
  %139 = phi i1 [ false, %124 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %121
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %144 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %143, %struct.TYPE_8__** %144, align 8
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %145, i32** %7, align 8
  br label %146

146:                                              ; preds = %142, %31
  %147 = load i32*, i32** %7, align 8
  ret i32* %147
}

declare dso_local %struct.TYPE_8__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_8__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
