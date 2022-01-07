; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_fs_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_fs_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mansearch = type { i64, i8*, i32*, i64 }
%struct.manpaths = type { i64 }
%struct.manpage = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"3p\00", align 1
@__const.fs_search.sections = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)], align 16
@ARG_NAME = common dso_local global i64 0, align 8
@OSENUM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Unknown architecture \22%s\22.\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"No entry for %s in the manual.\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"No entry for %s in section %s of the manual.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mansearch*, %struct.manpaths*, i32, i8**, %struct.manpage**, i64*)* @fs_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_search(%struct.mansearch* %0, %struct.manpaths* %1, i32 %2, i8** %3, %struct.manpage** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mansearch*, align 8
  %9 = alloca %struct.manpaths*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.manpage**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca [10 x i8*], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.mansearch* %0, %struct.mansearch** %8, align 8
  store %struct.manpaths* %1, %struct.manpaths** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store %struct.manpage** %4, %struct.manpage*** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = bitcast [10 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([10 x i8*]* @__const.fs_search.sections to i8*), i64 80, i1 false)
  store i64 10, i64* %15, align 8
  %20 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %21 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ARG_NAME, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.manpage**, %struct.manpage*** %12, align 8
  %28 = icmp ne %struct.manpage** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load %struct.manpage**, %struct.manpage*** %12, align 8
  store %struct.manpage* null, %struct.manpage** %30, align 8
  br label %31

31:                                               ; preds = %29, %6
  store i64 0, i64* %18, align 8
  %32 = load i64*, i64** %13, align 8
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %153, %31
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %160

36:                                               ; preds = %33
  store i64 0, i64* %16, align 8
  br label %37

37:                                               ; preds = %101, %36
  %38 = load i64, i64* %16, align 8
  %39 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %40 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %104

43:                                               ; preds = %37
  %44 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %45 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %52 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %55 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i8**, i8*** %11, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.manpage**, %struct.manpage*** %12, align 8
  %60 = load i64*, i64** %13, align 8
  %61 = call i32 @fs_lookup(%struct.manpaths* %49, i64 %50, i8* %53, i32* %56, i8* %58, %struct.manpage** %59, i64* %60)
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %48
  %64 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %65 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %161

69:                                               ; preds = %63, %48
  br label %100

70:                                               ; preds = %43
  store i64 0, i64* %17, align 8
  br label %71

71:                                               ; preds = %96, %70
  %72 = load i64, i64* %17, align 8
  %73 = icmp ult i64 %72, 10
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %81 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i8**, i8*** %11, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.manpage**, %struct.manpage*** %12, align 8
  %86 = load i64*, i64** %13, align 8
  %87 = call i32 @fs_lookup(%struct.manpaths* %75, i64 %76, i8* %79, i32* %82, i8* %84, %struct.manpage** %85, i64* %86)
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %95

89:                                               ; preds = %74
  %90 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %91 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %161

95:                                               ; preds = %89, %74
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %17, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %17, align 8
  br label %71

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99, %69
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %16, align 8
  br label %37

104:                                              ; preds = %37
  %105 = load %struct.manpage**, %struct.manpage*** %12, align 8
  %106 = icmp ne %struct.manpage** %105, null
  br i1 %106, label %107, label %153

107:                                              ; preds = %104
  %108 = load i64*, i64** %13, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %18, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %107
  %113 = load i8**, i8*** %11, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i32* @strchr(i8* %114, i8 signext 47)
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %153

117:                                              ; preds = %112
  %118 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %119 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %124 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @OSENUM, align 4
  %127 = call i64 @arch_valid(i32* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %131 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %133)
  br label %152

135:                                              ; preds = %122, %117
  %136 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %137 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i8**, i8*** %11, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %142)
  br label %151

144:                                              ; preds = %135
  %145 = load i8**, i8*** %11, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.mansearch*, %struct.mansearch** %8, align 8
  %148 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %146, i8* %149)
  br label %151

151:                                              ; preds = %144, %140
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152, %112, %107, %104
  %154 = load i64*, i64** %13, align 8
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %18, align 8
  %156 = load i8**, i8*** %11, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i32 1
  store i8** %157, i8*** %11, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %10, align 4
  br label %33

160:                                              ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %94, %68
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fs_lookup(%struct.manpaths*, i64, i8*, i32*, i8*, %struct.manpage**, i64*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @arch_valid(i32*, i32) #2

declare dso_local i32 @warnx(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
