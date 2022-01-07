; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_gettext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_format_gettext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8* }

@XFF_GT_PLURAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"no comma in plural gettext field: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"nothing before comma in plural gettext field: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"nothing after comma in plural gettext field: '%s'\00", align 1
@XFF_GT_FIELD = common dso_local global i32 0, align 4
@XF_ENC_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32, i32)* @xo_format_gettext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_format_gettext(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %23 = call i32 @xo_buf_has_room(%struct.TYPE_12__* %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %6, align 4
  br label %173

27:                                               ; preds = %5
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %13, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @XFF_GT_PLURAL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %131

50:                                               ; preds = %27
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @xo_buf_find_last_number(%struct.TYPE_12__* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i8* @memchr(i8* %54, i32 44, i32 %55)
  store i8* %56, i8** %17, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @xo_failure(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %6, align 4
  br label %173

64:                                               ; preds = %50
  %65 = load i8*, i8** %17, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @xo_failure(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %6, align 4
  br label %173

73:                                               ; preds = %64
  %74 = load i8*, i8** %17, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @xo_failure(%struct.TYPE_11__* %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %6, align 4
  br label %173

84:                                               ; preds = %73
  %85 = load i8*, i8** %17, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %17, align 8
  store i8 0, i8* %85, align 1
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @XFF_GT_FIELD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i8* @xo_dngettext(%struct.TYPE_11__* %92, i8* %93, i8* %94, i32 %95)
  store i8* %96, i8** %15, align 8
  br label %106

97:                                               ; preds = %84
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i8*, i8** %13, align 8
  br label %104

102:                                              ; preds = %97
  %103 = load i8*, i8** %17, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  store i8* %105, i8** %15, align 8
  br label %106

106:                                              ; preds = %104, %91
  %107 = load i8*, i8** %15, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = icmp eq i8* %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 -1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @XF_ENC_UTF8, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %110
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @xo_count_utf8_cols(i8* %119, i32 %127)
  store i32 %128, i32* %6, align 4
  br label %173

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129, %106
  br label %146

131:                                              ; preds = %27
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i8* @xo_dgettext(%struct.TYPE_11__* %132, i8* %133)
  store i8* %134, i8** %15, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @XF_ENC_UTF8, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %6, align 4
  br label %173

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %131
  br label %146

146:                                              ; preds = %145, %130
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 @strlen(i8* %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i8* @alloca(i32 %150)
  store i8* %151, i8** %19, align 8
  %152 = load i8*, i8** %19, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i32 @memcpy(i8* %152, i8* %153, i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i8*, i8** %19, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @XF_ENC_UTF8, align 4
  %172 = call i32 @xo_format_string_direct(%struct.TYPE_11__* %165, %struct.TYPE_12__* %166, i32 %167, i32* null, i8* %168, i32 %169, i32 0, i32 %170, i32 %171)
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %146, %142, %118, %79, %68, %59, %25
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @xo_buf_has_room(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xo_buf_find_last_number(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i8* @xo_dngettext(%struct.TYPE_11__*, i8*, i8*, i32) #1

declare dso_local i32 @xo_count_utf8_cols(i8*, i32) #1

declare dso_local i8* @xo_dgettext(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xo_format_string_direct(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
