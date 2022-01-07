; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_make_string_from_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_make_string_from_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64, i8*, i8* }

@option_state_expanding = common dso_local global i64 0, align 8
@option_state_cyclic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@option_state_needs_expanding = common dso_local global i64 0, align 8
@option_state_expanded = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.TYPE_6__*, i32*, %struct.TYPE_7__*, i32*)* @make_string_from_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_string_from_option(i8** %0, %struct.TYPE_6__* %1, i32* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @option_state_expanding, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @option_state_cyclic, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %5
  %24 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i64, i64* @option_state_cyclic, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %141

28:                                               ; preds = %17
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @option_state_needs_expanding, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %125

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %119

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strchr(i8* %42, i8 signext 37)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %119

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32*, i32** %10, align 8
  br label %62

57:                                               ; preds = %45
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @svn_pool_create(i32* %60)
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i32* [ %56, %55 ], [ %61, %57 ]
  store i32* %63, i32** %11, align 8
  %64 = load i64, i64* @option_state_expanding, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32*, i32** %11, align 8
  %75 = call i64 @expand_option_value(%struct.TYPE_6__* %67, i32* %68, i8* %71, i8** %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load i8*, i8** @option_state_expanded, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %86

82:                                               ; preds = %62
  %83 = load i64, i64* @option_state_cyclic, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %87, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %86
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i8* @apr_pstrmemdup(i32* %100, i8* %103, i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %97, %92
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @svn_pool_destroy(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %86
  br label %124

119:                                              ; preds = %39, %34
  %120 = load i8*, i8** @option_state_expanded, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %118
  br label %125

125:                                              ; preds = %124, %28
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %6, align 8
  store i8* %134, i8** %135, align 8
  br label %141

136:                                              ; preds = %126
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %6, align 8
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %23, %136, %131
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @expand_option_value(%struct.TYPE_6__*, i32*, i8*, i8**, i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
