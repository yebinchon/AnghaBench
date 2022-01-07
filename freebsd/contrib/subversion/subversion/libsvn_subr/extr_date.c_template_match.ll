; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_date.c_template_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_date.c_template_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i8*, i8*)* @template_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @template_match(%struct.TYPE_9__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 100000, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = bitcast %struct.TYPE_8__* %12 to i8*
  store i8* %17, i8** %13, align 8
  %18 = call i32 @memset(%struct.TYPE_8__* %12, i32 0, i32 12)
  br label %19

19:                                               ; preds = %102, %83, %80, %77, %66, %57, %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %20, align 1
  %23 = call %struct.TYPE_7__* @find_rule(i8 signext %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %14, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %15, align 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i8, i8* %15, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %15, align 1
  %42 = call i8* @strchr(i8* %40, i8 signext %41)
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37, %34, %19
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %155

46:                                               ; preds = %37, %29
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %16, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %111 [
    i32 133, label %57
    i32 132, label %66
    i32 128, label %77
    i32 130, label %80
    i32 131, label %83
    i32 129, label %84
    i32 134, label %105
  ]

57:                                               ; preds = %46
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 10
  %61 = load i8, i8* %15, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = sub nsw i32 %63, 48
  %65 = load i32*, i32** %16, align 8
  store i32 %64, i32* %65, align 4
  br label %19

66:                                               ; preds = %46
  %67 = load i8, i8* %15, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sdiv i32 %75, 10
  store i32 %76, i32* %10, align 4
  br label %19

77:                                               ; preds = %46
  %78 = load i8, i8* %15, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %11, align 4
  br label %19

80:                                               ; preds = %46
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %9, align 8
  br label %19

83:                                               ; preds = %46
  br label %19

84:                                               ; preds = %46
  %85 = load i8, i8* %15, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  br label %111

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call %struct.TYPE_7__* @find_rule(i8 signext %90)
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %14, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %15, align 1
  %96 = call i8* @strchr(i8* %94, i8 signext %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %88
  %99 = load i8*, i8** %8, align 8
  %100 = call i8* @strchr(i8* %99, i8 signext 93)
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %98, %88
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %9, align 8
  br label %19

105:                                              ; preds = %46
  %106 = load i8, i8* %15, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %5, align 4
  br label %155

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %46, %110, %87
  br label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 23
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 59
  br i1 %119, label %120, label %122

120:                                              ; preds = %116, %112
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %5, align 4
  br label %155

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  switch i32 %123, label %145 [
    i32 43, label %124
    i32 45, label %134
  ]

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 3600
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 60
  %131 = add nsw i32 %127, %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %145

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 3600
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, 60
  %141 = add nsw i32 %137, %140
  %142 = sub nsw i32 0, %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %122, %134, %124
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %148 = bitcast %struct.TYPE_9__* %146 to i8*
  %149 = bitcast %struct.TYPE_9__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 4 %149, i64 4, i1 false)
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = load i32*, i32** %7, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %145, %120, %108, %44
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @find_rule(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
