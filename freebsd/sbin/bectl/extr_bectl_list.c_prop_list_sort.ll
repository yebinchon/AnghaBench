; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_prop_list_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_prop_list_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_column = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"creation\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"usedds\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"usedsnap\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"usedrefreserv\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @prop_list_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_list_sort(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sort_column, align 8
  %14 = alloca %struct.sort_column, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @nvlist_dup(i32* %15, i32** %8, i32 0)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @fnvlist_num_pairs(i32* %17)
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %144, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %147

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @nvlist_next_nvpair(i32* %24, i32* null)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 2
  %28 = call i32 @nvpair_value_nvlist(i32* %26, i32* %27)
  %29 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 0
  %32 = call i32 @nvlist_lookup_string(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %31)
  %33 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 1
  %37 = call i32 @nvlist_lookup_string(i32 %34, i8* %35, i8** %36)
  br label %38

38:                                               ; preds = %132, %23
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @nvlist_next_nvpair(i32* %39, i32* %40)
  store i32* %41, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %133

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 2
  %46 = call i32 @nvpair_value_nvlist(i32* %44, i32* %45)
  %47 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 0
  %50 = call i32 @nvlist_lookup_string(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %49)
  %51 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 1
  %55 = call i32 @nvlist_lookup_string(i32 %52, i8* %53, i8** %54)
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %43
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %71, %67, %63, %59, %43
  %76 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strtoull(i8* %77, i32* null, i32 10)
  store i64 %78, i64* %11, align 8
  %79 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strtoull(i8* %80, i32* null, i32 10)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85, %75
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92, %85
  %96 = bitcast %struct.sort_column* %13 to i8*
  %97 = bitcast %struct.sort_column* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  br label %98

98:                                               ; preds = %95, %92, %88
  br label %132

99:                                               ; preds = %71
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %5, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcmp(i8* %109, i8* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %114, %107
  %118 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %14, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %119, i8* %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124, %114
  %128 = bitcast %struct.sort_column* %13 to i8*
  %129 = bitcast %struct.sort_column* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 24, i1 false)
  br label %130

130:                                              ; preds = %127, %124, %117
  br label %131

131:                                              ; preds = %130, %103
  br label %132

132:                                              ; preds = %131, %98
  br label %38

133:                                              ; preds = %38
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nvlist_add_nvlist(i32* %134, i8* %136, i32 %138)
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds %struct.sort_column, %struct.sort_column* %13, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @nvlist_remove_all(i32* %140, i8* %142)
  br label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %19

147:                                              ; preds = %19
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @be_prop_list_free(i32* %148)
  ret i32 0
}

declare dso_local i32 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i32 @fnvlist_num_pairs(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_value_nvlist(i32*, i32*) #1

declare dso_local i32 @nvlist_lookup_string(i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_remove_all(i32*, i8*) #1

declare dso_local i32 @be_prop_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
