; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_notify_merge_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_notify_merge_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__*, i32, i64, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32 (i32, %struct.TYPE_21__*, i32*)* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_notify_merge_begin = common dso_local global i32 0, align 4
@svn_wc_notify_foreign_merge_begin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_24__*, i8*, i64, i32*)* @notify_merge_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @notify_merge_begin(%struct.TYPE_24__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %15 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %17 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i32 (i32, %struct.TYPE_21__*, i32*)*, i32 (i32, %struct.TYPE_21__*, i32*)** %25, align 8
  %27 = icmp ne i32 (i32, %struct.TYPE_21__*, i32*)* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %5, align 8
  br label %183

30:                                               ; preds = %4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %118

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %7, align 8
  %48 = call %struct.TYPE_23__* @find_nearest_ancestor_with_intersecting_ranges(i32* %37, i32* %38, i32 %42, i32 %46, i8* %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %13, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %36
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call %struct.TYPE_23__* @find_nearest_ancestor(i32 %58, i32 %59, i8* %60)
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %13, align 8
  br label %62

62:                                               ; preds = %54, %51, %36
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %64 = icmp ne %struct.TYPE_23__* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %68 = icmp ne %struct.TYPE_23__* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %5, align 8
  br label %183

71:                                               ; preds = %62
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %80, i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %5, align 8
  br label %183

89:                                               ; preds = %77, %71
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %89
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @SVN_IS_VALID_REVNUM(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107, %100, %89
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %5, align 8
  br label %183

114:                                              ; preds = %107
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %12, align 8
  br label %140

118:                                              ; preds = %30
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %5, align 8
  br label %183

126:                                              ; preds = %118
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %12, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  br label %140

140:                                              ; preds = %126, %114
  %141 = load i8*, i8** %12, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @svn_wc_notify_merge_begin, align 4
  br label %150

148:                                              ; preds = %140
  %149 = load i32, i32* @svn_wc_notify_foreign_merge_begin, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load i32*, i32** %9, align 8
  %153 = call %struct.TYPE_21__* @svn_wc_create_notify(i8* %141, i32 %151, i32* %152)
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @SVN_IS_VALID_REVNUM(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @remove_source_gap(%struct.TYPE_22__* %11, i32 %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %164, align 8
  br label %168

165:                                              ; preds = %150
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %167, align 8
  br label %168

168:                                              ; preds = %165, %158
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32 (i32, %struct.TYPE_21__*, i32*)*, i32 (i32, %struct.TYPE_21__*, i32*)** %172, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 %173(i32 %178, %struct.TYPE_21__* %179, i32* %180)
  %182 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %182, i32** %5, align 8
  br label %183

183:                                              ; preds = %168, %124, %112, %87, %69, %28
  %184 = load i32*, i32** %5, align 8
  ret i32* %184
}

declare dso_local %struct.TYPE_23__* @find_nearest_ancestor_with_intersecting_ranges(i32*, i32*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_23__* @find_nearest_ancestor(i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local %struct.TYPE_21__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @remove_source_gap(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
