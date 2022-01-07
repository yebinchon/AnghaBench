; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.c__citrus_stdenc_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.c__citrus_stdenc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_stdenc = type { i32*, %struct._citrus_stdenc_ops*, i32*, i32* }
%struct._citrus_stdenc_ops = type { i32 (%struct._citrus_stdenc.0*, i8*, i64, i32*)*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct._citrus_stdenc.0 = type opaque

@_CITRUS_DEFAULT_STDENC_NAME = common dso_local global i32 0, align 4
@_citrus_stdenc_default = common dso_local global %struct._citrus_stdenc zeroinitializer, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdenc\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_stdenc_open(%struct._citrus_stdenc** noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_stdenc**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._citrus_stdenc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct._citrus_stdenc_ops*, i32)*, align 8
  %13 = alloca i32, align 4
  store %struct._citrus_stdenc** %0, %struct._citrus_stdenc*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @_CITRUS_DEFAULT_STDENC_NAME, align 4
  %16 = call i32 @strcmp(i8* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load %struct._citrus_stdenc**, %struct._citrus_stdenc*** %6, align 8
  store %struct._citrus_stdenc* @_citrus_stdenc_default, %struct._citrus_stdenc** %19, align 8
  store i32 0, i32* %5, align 4
  br label %168

20:                                               ; preds = %4
  %21 = call i8* @malloc(i32 32)
  %22 = bitcast i8* %21 to %struct._citrus_stdenc*
  store %struct._citrus_stdenc* %22, %struct._citrus_stdenc** %10, align 8
  %23 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %24 = icmp eq %struct._citrus_stdenc* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %13, align 4
  br label %164

27:                                               ; preds = %20
  %28 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %29 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %28, i32 0, i32 1
  store %struct._citrus_stdenc_ops* null, %struct._citrus_stdenc_ops** %29, align 8
  %30 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %31 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %33 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %35 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @_citrus_load_module(i32** %11, i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %164

41:                                               ; preds = %27
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %44 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %46 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @_citrus_find_getops(i32* %47, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i32 (%struct._citrus_stdenc_ops*, i32)*
  store i32 (%struct._citrus_stdenc_ops*, i32)* %50, i32 (%struct._citrus_stdenc_ops*, i32)** %12, align 8
  %51 = load i32 (%struct._citrus_stdenc_ops*, i32)*, i32 (%struct._citrus_stdenc_ops*, i32)** %12, align 8
  %52 = icmp eq i32 (%struct._citrus_stdenc_ops*, i32)* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %13, align 4
  br label %164

55:                                               ; preds = %41
  %56 = call i8* @malloc(i32 64)
  %57 = bitcast i8* %56 to %struct._citrus_stdenc_ops*
  %58 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %59 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %58, i32 0, i32 1
  store %struct._citrus_stdenc_ops* %57, %struct._citrus_stdenc_ops** %59, align 8
  %60 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %61 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %60, i32 0, i32 1
  %62 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %61, align 8
  %63 = icmp eq %struct._citrus_stdenc_ops* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %13, align 4
  br label %164

66:                                               ; preds = %55
  %67 = load i32 (%struct._citrus_stdenc_ops*, i32)*, i32 (%struct._citrus_stdenc_ops*, i32)** %12, align 8
  %68 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %69 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %68, i32 0, i32 1
  %70 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %69, align 8
  %71 = call i32 %67(%struct._citrus_stdenc_ops* %70, i32 64)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %164

75:                                               ; preds = %66
  %76 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %77 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %76, i32 0, i32 1
  %78 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %77, align 8
  %79 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %78, i32 0, i32 0
  %80 = load i32 (%struct._citrus_stdenc.0*, i8*, i64, i32*)*, i32 (%struct._citrus_stdenc.0*, i8*, i64, i32*)** %79, align 8
  %81 = icmp eq i32 (%struct._citrus_stdenc.0*, i8*, i64, i32*)* %80, null
  br i1 %81, label %131, label %82

82:                                               ; preds = %75
  %83 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %84 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %83, i32 0, i32 1
  %85 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %84, align 8
  %86 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %131, label %89

89:                                               ; preds = %82
  %90 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %91 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %90, i32 0, i32 1
  %92 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %91, align 8
  %93 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %131, label %96

96:                                               ; preds = %89
  %97 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %98 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %97, i32 0, i32 1
  %99 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %98, align 8
  %100 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %131, label %103

103:                                              ; preds = %96
  %104 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %105 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %104, i32 0, i32 1
  %106 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %105, align 8
  %107 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %131, label %110

110:                                              ; preds = %103
  %111 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %112 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %111, i32 0, i32 1
  %113 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %112, align 8
  %114 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %110
  %118 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %119 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %118, i32 0, i32 1
  %120 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %119, align 8
  %121 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %117
  %125 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %126 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %125, i32 0, i32 1
  %127 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %126, align 8
  %128 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %124, %117, %110, %103, %96, %89, %82, %75
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %13, align 4
  br label %164

133:                                              ; preds = %124
  %134 = call i8* @malloc(i32 4)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %137 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  %138 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %139 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i32, i32* @errno, align 4
  store i32 %143, i32* %13, align 4
  br label %164

144:                                              ; preds = %133
  %145 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %146 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %145, i32 0, i32 1
  %147 = load %struct._citrus_stdenc_ops*, %struct._citrus_stdenc_ops** %146, align 8
  %148 = getelementptr inbounds %struct._citrus_stdenc_ops, %struct._citrus_stdenc_ops* %147, i32 0, i32 0
  %149 = load i32 (%struct._citrus_stdenc.0*, i8*, i64, i32*)*, i32 (%struct._citrus_stdenc.0*, i8*, i64, i32*)** %148, align 8
  %150 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %151 = bitcast %struct._citrus_stdenc* %150 to %struct._citrus_stdenc.0*
  %152 = load i8*, i8** %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %155 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 %149(%struct._citrus_stdenc.0* %151, i8* %152, i64 %153, i32* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %164

161:                                              ; preds = %144
  %162 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %163 = load %struct._citrus_stdenc**, %struct._citrus_stdenc*** %6, align 8
  store %struct._citrus_stdenc* %162, %struct._citrus_stdenc** %163, align 8
  store i32 0, i32* %5, align 4
  br label %168

164:                                              ; preds = %160, %142, %131, %74, %64, %53, %40, %25
  %165 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %10, align 8
  %166 = call i32 @_citrus_stdenc_close(%struct._citrus_stdenc* %165)
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %164, %161, %18
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @_citrus_load_module(i32**, i8*) #1

declare dso_local i64 @_citrus_find_getops(i32*, i8*, i8*) #1

declare dso_local i32 @_citrus_stdenc_close(%struct._citrus_stdenc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
