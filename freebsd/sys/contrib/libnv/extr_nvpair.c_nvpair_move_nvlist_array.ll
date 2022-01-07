; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_move_nvlist_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_move_nvlist_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4
@NV_FLAG_IN_ARRAY = common dso_local global i32 0, align 4
@NV_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_move_nvlist_array(i8* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @ERRNO_SET(i32 %18)
  store i32* null, i32** %4, align 8
  br label %159

20:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %74, %20
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load i32**, i32*** %6, align 8
  %28 = icmp eq i32** %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @nvlist_error(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @nvlist_get_pararr(i32* %42, i32* null)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29, %26
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @ERRNO_SET(i32 %46)
  br label %122

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = trunc i64 %58 to i32
  %60 = call i32* @nvpair_allocv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %59, i32 0, i64 0)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %122

64:                                               ; preds = %51
  %65 = load i32**, i32*** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @nvlist_set_array_next(i32* %70, i32* %71)
  br label %73

73:                                               ; preds = %64, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %21

77:                                               ; preds = %21
  %78 = load i32**, i32*** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @nvlist_flags(i32* %82)
  %84 = load i32, i32* @NV_FLAG_IN_ARRAY, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32**, i32*** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @nvlist_set_flags(i32* %90, i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* @NV_TYPE_NVLIST_ARRAY, align 4
  %95 = load i32**, i32*** %6, align 8
  %96 = ptrtoint i32** %95 to i64
  %97 = trunc i64 %96 to i32
  %98 = load i64, i64* %7, align 8
  %99 = call i32* @nvpair_allocv(i8* %93, i32 %94, i32 %97, i32 0, i64 %98)
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %77
  br label %122

103:                                              ; preds = %77
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %117, %103
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %7, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32**, i32*** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @nvlist_set_parent(i32* %114, i32* %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %9, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %104

120:                                              ; preds = %104
  %121 = load i32*, i32** %8, align 8
  store i32* %121, i32** %4, align 8
  br label %159

122:                                              ; preds = %102, %63, %45
  %123 = call i32 (...) @ERRNO_SAVE()
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %152, %122
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %7, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %124
  %130 = load i32**, i32*** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %129
  %137 = load i32**, i32*** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i32* @nvlist_get_pararr(i32* %141, i32* null)
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load i32**, i32*** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @nvlist_destroy(i32* %149)
  br label %151

151:                                              ; preds = %144, %136, %129
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %124

155:                                              ; preds = %124
  %156 = load i32**, i32*** %6, align 8
  %157 = call i32 @nv_free(i32** %156)
  %158 = call i32 (...) @ERRNO_RESTORE()
  store i32* null, i32** %4, align 8
  br label %159

159:                                              ; preds = %155, %120, %17
  %160 = load i32*, i32** %4, align 8
  ret i32* %160
}

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32* @nvlist_get_pararr(i32*, i32*) #1

declare dso_local i32* @nvpair_allocv(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @nvlist_set_array_next(i32*, i32*) #1

declare dso_local i32 @nvlist_flags(i32*) #1

declare dso_local i32 @nvlist_set_flags(i32*, i32) #1

declare dso_local i32 @nvlist_set_parent(i32*, i32*) #1

declare dso_local i32 @ERRNO_SAVE(...) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nv_free(i32**) #1

declare dso_local i32 @ERRNO_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
