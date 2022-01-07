; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openmp/runtime/src/thirdparty/ittnotify/extr_ittnotify_static.c___itt_get_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openmp/runtime/src/thirdparty/ittnotify/extr_ittnotify_static.c___itt_get_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i8*, i32 }

@__itt_group_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"INTEL_ITTNOTIFY_GROUPS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",; \00", align 1
@group_list = common dso_local global %struct.TYPE_3__* null, align 8
@__itt_group_all = common dso_local global i32 0, align 4
@__itt_group_splitter_min = common dso_local global i32 0, align 4
@__itt_group_splitter_max = common dso_local global i32 0, align 4
@group_alias = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__itt_get_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__itt_get_groups() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [255 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @__itt_group_none, align 4
  store i32 %10, i32* %3, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @__itt_get_env_var(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %114

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %61, %15
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @__itt_fsplit(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, i32* %6)
  store i8* %18, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @__itt_min(i32 %21, i32 254)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @__itt_fstrcpyn(i8* %23, i32 254, i8* %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %58, %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @__itt_fstrcmp(i8* %39, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %49, %55
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %30

61:                                               ; preds = %48, %30
  br label %16

62:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %109, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @__itt_group_none, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %63
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @__itt_group_all, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %72
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @__itt_group_splitter_min, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %81
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @__itt_group_splitter_max, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @group_list, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %100, %106
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %99, %90, %81, %72
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %63

112:                                              ; preds = %63
  %113 = load i32, i32* %3, align 4
  store i32 %113, i32* %1, align 4
  br label %146

114:                                              ; preds = %0
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %140, %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @group_alias, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %115
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @group_alias, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @__itt_get_env_var(i8* %129)
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @group_alias, align 8
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %1, align 4
  br label %146

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %115

143:                                              ; preds = %115
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %3, align 4
  store i32 %145, i32* %1, align 4
  br label %146

146:                                              ; preds = %144, %132, %112
  %147 = load i32, i32* %1, align 4
  ret i32 %147
}

declare dso_local i8* @__itt_get_env_var(i8*) #1

declare dso_local i8* @__itt_fsplit(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @__itt_min(i32, i32) #1

declare dso_local i32 @__itt_fstrcpyn(i8*, i32, i8*, i32) #1

declare dso_local i32 @__itt_fstrcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
