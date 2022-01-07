; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_group_unpack_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_group_unpack_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"gr_nmem\00", align 1
@_ALIGNBYTES = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"gr_mem[%u]\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***, i8**, i64*)* @group_unpack_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_unpack_members(i32* %0, i8*** %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @nvlist_exists_number(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* @_ALIGNBYTES, align 8
  %24 = add i64 %23, 8
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ERANGE, align 4
  store i32 %30, i32* %5, align 4
  br label %170

31:                                               ; preds = %22
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @_ALIGN(i8* %33)
  %35 = inttoptr i64 %34 to i8**
  store i8** %35, i8*** %11, align 8
  %36 = load i8**, i8*** %11, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* null, i8** %37, align 8
  %38 = load i8**, i8*** %11, align 8
  %39 = load i8***, i8**** %7, align 8
  store i8** %38, i8*** %39, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %40
  store i8* %43, i8** %41, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, %44
  store i64 %47, i64* %45, align 8
  store i32 0, i32* %5, align 4
  br label %170

48:                                               ; preds = %4
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @nvlist_get_number(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* @_ALIGNBYTES, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, 1
  %54 = mul i64 8, %53
  %55 = add i64 %51, %54
  store i64 %55, i64* %15, align 8
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %88, %48
  %57 = load i32, i32* %17, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %14, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @snprintf(i8* %62, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 64
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i1 [ false, %61 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %76 = call i8* @dnvlist_get_string(i32* %74, i8* %75, i32* null)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %5, align 4
  br label %170

81:                                               ; preds = %70
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %17, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %56

91:                                               ; preds = %56
  %92 = load i64, i64* %15, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp uge i64 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @ERANGE, align 4
  store i32 %97, i32* %5, align 4
  br label %170

98:                                               ; preds = %91
  %99 = load i8**, i8*** %8, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @_ALIGN(i8* %100)
  %102 = inttoptr i64 %101 to i8**
  store i8** %102, i8*** %11, align 8
  %103 = load i8**, i8*** %11, align 8
  %104 = bitcast i8** %103 to i8*
  %105 = load i64, i64* %14, align 8
  %106 = add i64 %105, 1
  %107 = mul i64 8, %106
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8* %108, i8** %12, align 8
  store i32 0, i32* %17, align 4
  br label %109

109:                                              ; preds = %146, %98
  %110 = load i32, i32* %17, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %14, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %149

114:                                              ; preds = %109
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @snprintf(i8* %115, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %18, align 4
  %122 = icmp slt i32 %121, 64
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi i1 [ false, %114 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %129 = call i8* @nvlist_get_string(i32* %127, i8* %128)
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %16, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i32 @memcpy(i8* %134, i8* %135, i64 %136)
  %138 = load i8*, i8** %12, align 8
  %139 = load i8**, i8*** %11, align 8
  %140 = load i32, i32* %17, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %138, i8** %142, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %12, align 8
  br label %146

146:                                              ; preds = %123
  %147 = load i32, i32* %17, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %109

149:                                              ; preds = %109
  %150 = load i32, i32* %17, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %14, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i8**, i8*** %11, align 8
  %157 = load i32, i32* %17, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* null, i8** %159, align 8
  %160 = load i8**, i8*** %11, align 8
  %161 = load i8***, i8**** %7, align 8
  store i8** %160, i8*** %161, align 8
  %162 = load i64, i64* %15, align 8
  %163 = load i8**, i8*** %8, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %162
  store i8* %165, i8** %163, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load i64*, i64** %9, align 8
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, %166
  store i64 %169, i64* %167, align 8
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %149, %96, %79, %31, %29
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i64 @_ALIGN(i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @dnvlist_get_string(i32*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
