; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_colors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@XO_EFF_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*, i8*, i32)* @xo_format_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_format_colors(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__, align 4
  %12 = alloca %struct.TYPE_25__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = call i64 @xo_style_is_encoding(%struct.TYPE_23__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %92

26:                                               ; preds = %21, %4
  %27 = call i32 @xo_buf_init(%struct.TYPE_26__* %11)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @xo_buf_append(%struct.TYPE_26__* %11, i8* %31, i32 %32)
  br label %45

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @xo_do_format_field(%struct.TYPE_23__* %38, %struct.TYPE_26__* %11, i8* %39, i32 %40, i32 0)
  br label %44

42:                                               ; preds = %34
  %43 = call i32 @xo_buf_append(%struct.TYPE_26__* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 6)
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %47 = call i64 @xo_colors_enabled(%struct.TYPE_23__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %45
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = call i32 @xo_style(%struct.TYPE_23__* %50)
  switch i32 %51, label %89 [
    i32 129, label %52
    i32 132, label %52
    i32 128, label %88
    i32 131, label %88
    i32 130, label %88
    i32 133, label %88
  ]

52:                                               ; preds = %49, %49
  %53 = call i32 @xo_buf_append(%struct.TYPE_26__* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_25__* %12 to i8*
  %57 = bitcast %struct.TYPE_25__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @xo_colors_parse(%struct.TYPE_23__* %58, %struct.TYPE_25__* %12, i32 %60)
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %63 = call i32 @xo_colors_update(%struct.TYPE_23__* %62, %struct.TYPE_25__* %12)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = call i32 @xo_style(%struct.TYPE_23__* %64)
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %67, label %75

67:                                               ; preds = %52
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = call i32 @xo_colors_handle_text(%struct.TYPE_23__* %68, %struct.TYPE_25__* %12)
  %70 = load i32, i32* @XO_EFF_RESET, align 4
  %71 = xor i32 %70, -1
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %83

75:                                               ; preds = %52
  %76 = load i32, i32* @XO_EFF_RESET, align 4
  %77 = xor i32 %76, -1
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %82 = call i32 @xo_colors_handle_html(%struct.TYPE_23__* %81, %struct.TYPE_25__* %12)
  br label %83

83:                                               ; preds = %75, %67
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = bitcast %struct.TYPE_25__* %85 to i8*
  %87 = bitcast %struct.TYPE_25__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %89

88:                                               ; preds = %49, %49, %49, %49
  br label %89

89:                                               ; preds = %49, %88, %83
  br label %90

90:                                               ; preds = %89, %45
  %91 = call i32 @xo_buf_cleanup(%struct.TYPE_26__* %11)
  br label %92

92:                                               ; preds = %90, %25
  ret void
}

declare dso_local i64 @xo_style_is_encoding(%struct.TYPE_23__*) #1

declare dso_local i32 @xo_buf_init(%struct.TYPE_26__*) #1

declare dso_local i32 @xo_buf_append(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @xo_do_format_field(%struct.TYPE_23__*, %struct.TYPE_26__*, i8*, i32, i32) #1

declare dso_local i64 @xo_colors_enabled(%struct.TYPE_23__*) #1

declare dso_local i32 @xo_style(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xo_colors_parse(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @xo_colors_update(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @xo_colors_handle_text(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @xo_colors_handle_html(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @xo_buf_cleanup(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
