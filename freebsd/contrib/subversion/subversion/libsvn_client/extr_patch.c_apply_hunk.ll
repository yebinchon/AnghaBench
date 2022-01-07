; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_apply_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_apply_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8*, i8* }
%struct.TYPE_13__ = type { i32, i64, i8*, i32, i32 (i32, i8*, i32, i32*)*, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i64 }
%struct.TYPE_14__ = type { i32, i8* }

@svn_node_file = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_16__*, i8*, i32*)* @apply_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_hunk(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_16__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @svn_node_file, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %83

31:                                               ; preds = %28, %5
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @copy_lines_to_target(%struct.TYPE_13__* %32, i64 %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @svn_diff_hunk_get_original_length(i32 %47)
  %49 = add nsw i32 %44, %48
  %50 = load i32, i32* %15, align 4
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @seek_to_line(%struct.TYPE_13__* %53, i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %31
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** @TRUE, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @reject_hunk(%struct.TYPE_15__* %72, %struct.TYPE_13__* %73, i32 %76, i8* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %6, align 8
  br label %184

82:                                               ; preds = %63, %31
  br label %83

83:                                               ; preds = %82, %28
  store i32 0, i32* %12, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @svn_diff_hunk_reset_modified_text(i32 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = call i32* @svn_pool_create(i32* %88)
  store i32* %89, i32** %14, align 8
  br label %90

90:                                               ; preds = %165, %83
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @svn_pool_clear(i32* %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @svn_diff_hunk_readline_modified_text(i32 %95, %struct.TYPE_14__** %17, i8** %18, i32* %13, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %164

105:                                              ; preds = %90
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @svn_diff_hunk_get_modified_length(i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = sub nsw i32 %110, %111
  %113 = icmp sle i32 %106, %112
  br i1 %113, label %114, label %164

114:                                              ; preds = %105
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %136

119:                                              ; preds = %114
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %19, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %19, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 %125(i32 %128, i8* %131, i32 %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %119, %114
  %137 = load i8*, i8** %18, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %163

139:                                              ; preds = %136
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @svn_subst_eol_style_none, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %18, align 8
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i8*, i8** %18, align 8
  %151 = call i32 @strlen(i8* %150)
  store i32 %151, i32* %19, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  %154 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 %154(i32 %157, i8* %158, i32 %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  br label %163

163:                                              ; preds = %149, %136
  br label %164

164:                                              ; preds = %163, %105, %90
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %90, label %169

169:                                              ; preds = %165
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 @svn_pool_destroy(i32* %170)
  %172 = load i8*, i8** %10, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i8*, i8** @TRUE, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  br label %182

178:                                              ; preds = %169
  %179 = load i8*, i8** @TRUE, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %183, i32** %6, align 8
  br label %184

184:                                              ; preds = %182, %68
  %185 = load i32*, i32** %6, align 8
  ret i32* %185
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @copy_lines_to_target(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @svn_diff_hunk_get_original_length(i32) #1

declare dso_local i32 @seek_to_line(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @reject_hunk(%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i8*, i32*) #1

declare dso_local i32 @svn_diff_hunk_reset_modified_text(i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_diff_hunk_readline_modified_text(i32, %struct.TYPE_14__**, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_diff_hunk_get_modified_length(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
