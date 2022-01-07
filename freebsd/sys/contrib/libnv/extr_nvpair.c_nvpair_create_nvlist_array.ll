; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_nvlist_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_nvlist_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4
@NV_FLAG_IN_ARRAY = common dso_local global i32 0, align 4
@NV_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_create_nvlist_array(i8* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32** null, i32*** %9, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = icmp eq i32** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @ERRNO_SET(i32 %19)
  store i32* null, i32** %4, align 8
  br label %165

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32** @nv_malloc(i32 %24)
  store i32** %25, i32*** %9, align 8
  %26 = load i32**, i32*** %9, align 8
  %27 = icmp eq i32** %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %165

29:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %97, %29
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %100

35:                                               ; preds = %30
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @ERRNO_SET(i32 %43)
  br label %145

45:                                               ; preds = %35
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32* @nvlist_clone(i32* %50)
  %52 = load i32**, i32*** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %145

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %68 = load i32**, i32*** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = ptrtoint i32* %72 to i64
  %74 = trunc i64 %73 to i32
  %75 = call i32* @nvpair_allocv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %74, i32 0, i64 0)
  store i32* %75, i32** %12, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %66
  %79 = call i32 (...) @ERRNO_SAVE()
  %80 = load i32**, i32*** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @nvlist_destroy(i32* %84)
  %86 = call i32 (...) @ERRNO_RESTORE()
  br label %145

87:                                               ; preds = %66
  %88 = load i32**, i32*** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @nvlist_set_array_next(i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %87, %63
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %30

100:                                              ; preds = %30
  %101 = load i32**, i32*** %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @nvlist_flags(i32* %105)
  %107 = load i32, i32* @NV_FLAG_IN_ARRAY, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32**, i32*** %9, align 8
  %110 = load i64, i64* %7, align 8
  %111 = sub i64 %110, 1
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @nvlist_set_flags(i32* %113, i32 %114)
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* @NV_TYPE_NVLIST_ARRAY, align 4
  %118 = load i32**, i32*** %9, align 8
  %119 = ptrtoint i32** %118 to i64
  %120 = trunc i64 %119 to i32
  %121 = load i64, i64* %7, align 8
  %122 = call i32* @nvpair_allocv(i8* %116, i32 %117, i32 %120, i32 0, i64 %121)
  store i32* %122, i32** %10, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %100
  br label %145

126:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %140, %126
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %7, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load i32**, i32*** %9, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @nvlist_set_parent(i32* %137, i32* %138)
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %127

143:                                              ; preds = %127
  %144 = load i32*, i32** %10, align 8
  store i32* %144, i32** %4, align 8
  br label %165

145:                                              ; preds = %125, %78, %62, %42
  %146 = call i32 (...) @ERRNO_SAVE()
  br label %147

147:                                              ; preds = %158, %145
  %148 = load i32, i32* %8, align 4
  %149 = icmp ugt i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load i32**, i32*** %9, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sub i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %151, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @nvlist_destroy(i32* %156)
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %159, -1
  store i32 %160, i32* %8, align 4
  br label %147

161:                                              ; preds = %147
  %162 = load i32**, i32*** %9, align 8
  %163 = call i32 @nv_free(i32** %162)
  %164 = call i32 (...) @ERRNO_RESTORE()
  store i32* null, i32** %4, align 8
  br label %165

165:                                              ; preds = %161, %143, %28, %18
  %166 = load i32*, i32** %4, align 8
  ret i32* %166
}

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i32** @nv_malloc(i32) #1

declare dso_local i32* @nvlist_clone(i32*) #1

declare dso_local i32* @nvpair_allocv(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ERRNO_SAVE(...) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @ERRNO_RESTORE(...) #1

declare dso_local i32 @nvlist_set_array_next(i32*, i32*) #1

declare dso_local i32 @nvlist_flags(i32*) #1

declare dso_local i32 @nvlist_set_flags(i32*, i32) #1

declare dso_local i32 @nvlist_set_parent(i32*, i32*) #1

declare dso_local i32 @nv_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
