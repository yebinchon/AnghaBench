; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_putkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_putkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32 }
%struct.mpage = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.str = type { i32, %struct.mpage*, i32 }

@TYPE_Nm = common dso_local global i32 0, align 4
@names = common dso_local global %struct.ohash zeroinitializer, align 4
@name_mask = common dso_local global i32 0, align 4
@NAME_FIRST = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Adding name %*s, bits=0x%llx\00", align 1
@strings = common dso_local global %struct.ohash zeroinitializer, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Adding key %s=%*s\00", align 1
@mansearch_keynames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, i8*, i64, i32)* @putkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putkeys(%struct.mpage* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ohash*, align 8
  %10 = alloca %struct.str*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %144

18:                                               ; preds = %4
  %19 = call i32 @render_string(i8** %6, i64* %7)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @TYPE_Nm, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  store %struct.ohash* @names, %struct.ohash** %9, align 8
  %25 = load i32, i32* @name_mask, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NAME_FIRST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* @NAME_FIRST, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @name_mask, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* @name_mask, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32, i32* @debug, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.mpage*, %struct.mpage** %5, align 8
  %42 = getelementptr inbounds %struct.mpage, %struct.mpage* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i32, i8*, i32, ...) @say(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48, i64 %50)
  br label %52

52:                                               ; preds = %40, %37
  br label %88

53:                                               ; preds = %18
  store %struct.ohash* @strings, %struct.ohash** %9, align 8
  %54 = load i32, i32* @debug, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %87

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @KEY_MAX, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.mpage*, %struct.mpage** %5, align 8
  %69 = getelementptr inbounds %struct.mpage, %struct.mpage* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @mansearch_keynames, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i32, i8*, i32, ...) @say(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %67, %61
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %57

86:                                               ; preds = %57
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %11, align 8
  %92 = load %struct.ohash*, %struct.ohash** %9, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @ohash_qlookupi(%struct.ohash* %92, i8* %93, i8** %11)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.ohash*, %struct.ohash** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call %struct.str* @ohash_find(%struct.ohash* %95, i32 %96)
  store %struct.str* %97, %struct.str** %10, align 8
  %98 = load %struct.str*, %struct.str** %10, align 8
  %99 = icmp ne %struct.str* null, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = load %struct.mpage*, %struct.mpage** %5, align 8
  %102 = load %struct.str*, %struct.str** %10, align 8
  %103 = getelementptr inbounds %struct.str, %struct.str* %102, i32 0, i32 1
  %104 = load %struct.mpage*, %struct.mpage** %103, align 8
  %105 = icmp eq %struct.mpage* %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.str*, %struct.str** %10, align 8
  %109 = getelementptr inbounds %struct.str, %struct.str* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %144

112:                                              ; preds = %100, %88
  %113 = load %struct.str*, %struct.str** %10, align 8
  %114 = icmp eq %struct.str* null, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = add i64 24, %116
  %118 = add i64 %117, 1
  %119 = trunc i64 %118 to i32
  %120 = call %struct.str* @mandoc_calloc(i32 1, i32 %119)
  store %struct.str* %120, %struct.str** %10, align 8
  %121 = load %struct.str*, %struct.str** %10, align 8
  %122 = getelementptr inbounds %struct.str, %struct.str* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @memcpy(i32 %123, i8* %124, i64 %125)
  %127 = load %struct.ohash*, %struct.ohash** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.str*, %struct.str** %10, align 8
  %130 = call i32 @ohash_insert(%struct.ohash* %127, i32 %128, %struct.str* %129)
  br label %131

131:                                              ; preds = %115, %112
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.mpage*, %struct.mpage** %5, align 8
  %134 = load %struct.str*, %struct.str** %10, align 8
  %135 = getelementptr inbounds %struct.str, %struct.str* %134, i32 0, i32 1
  store %struct.mpage* %133, %struct.mpage** %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.str*, %struct.str** %10, align 8
  %138 = getelementptr inbounds %struct.str, %struct.str* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @free(i8* %142)
  br label %144

144:                                              ; preds = %17, %106, %141, %132
  ret void
}

declare dso_local i32 @render_string(i8**, i64*) #1

declare dso_local i32 @say(i32, i8*, i32, ...) #1

declare dso_local i32 @ohash_qlookupi(%struct.ohash*, i8*, i8**) #1

declare dso_local %struct.str* @ohash_find(%struct.ohash*, i32) #1

declare dso_local %struct.str* @mandoc_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @ohash_insert(%struct.ohash*, i32, %struct.str*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
