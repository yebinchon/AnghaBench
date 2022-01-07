; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509info.c_svn_x509_oid_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509info.c_svn_x509_oid_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_x509_oid_to_string(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call %struct.TYPE_6__* @svn_stringbuf_create_empty(i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %126, %4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %130

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = sdiv i32 %35, 40
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = srem i32 %39, 40
  %41 = call i8* (i32*, i8*, ...) @apr_psprintf(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  br label %126

44:                                               ; preds = %27
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 128
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i8* (i32*, i8*, ...) @apr_psprintf(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  br label %125

57:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %15, align 8
  br label %59

59:                                               ; preds = %102, %57
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i64, i64* %15, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_6__* %71, i8 signext 46)
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %15, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_6__* %75, i8 signext 48)
  br label %84

77:                                               ; preds = %62, %59
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @UINT_MAX, align 4
  %80 = lshr i32 %79, 7
  %81 = icmp ugt i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i8* null, i8** %5, align 8
  br label %139

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, 7
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %11, align 8
  %89 = load i8, i8* %87, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 127
  %92 = or i32 %86, %91
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp sgt i32 %100, 127
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i1 [ false, %93 ], [ %101, %97 ]
  br i1 %103, label %59, label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @UINT_MAX, align 4
  %107 = lshr i32 %106, 7
  %108 = icmp ugt i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i8* null, i8** %5, align 8
  br label %139

110:                                              ; preds = %104
  %111 = load i32, i32* %14, align 4
  %112 = shl i32 %111, 7
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %11, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %112, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %123 = load i32, i32* %14, align 4
  %124 = call i8* (i32*, i8*, ...) @apr_psprintf(i32* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %122, i32 %123)
  store i8* %124, i8** %13, align 8
  br label %125

125:                                              ; preds = %110, %49
  br label %126

126:                                              ; preds = %125, %31
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_6__* %127, i8* %128)
  br label %23

130:                                              ; preds = %23
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = call i64 @svn_stringbuf_isempty(%struct.TYPE_6__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i8* null, i8** %5, align 8
  br label %139

135:                                              ; preds = %130
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %5, align 8
  br label %139

139:                                              ; preds = %135, %134, %109, %82
  %140 = load i8*, i8** %5, align 8
  ret i8* %140
}

declare dso_local %struct.TYPE_6__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, ...) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @svn_stringbuf_isempty(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
