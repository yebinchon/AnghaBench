; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_print_git_diff_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_print_git_diff_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@svn_diff_op_deleted = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"a/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"b/%s\00", align 1
@svn_diff_op_copied = common dso_local global i64 0, align 8
@svn_diff_op_added = common dso_local global i64 0, align 8
@svn_diff_op_modified = common dso_local global i64 0, align 8
@svn_diff_op_moved = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8**, i64, i8*, i8*, i32, i32, i8*, i32, i32*, i32*, i8*, i8*, i32*)* @print_git_diff_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_git_diff_header(i32* %0, i8** %1, i8** %2, i64 %3, i8* %4, i8* %5, i32 %6, i32 %7, i8* %8, i32 %9, i32* %10, i32* %11, i8* %12, i8* %13, i32* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i8** %1, i8*** %17, align 8
  store i8** %2, i8*** %18, align 8
  store i64 %3, i64* %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i8* %8, i8** %24, align 8
  store i32 %9, i32* %25, align 4
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i8* %12, i8** %28, align 8
  store i8* %13, i8** %29, align 8
  store i32* %14, i32** %30, align 8
  %35 = load i32*, i32** %26, align 8
  %36 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %37 = call i32* @svn_prop_get_value(i32* %35, i32 %36)
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %31, align 4
  %40 = load i32*, i32** %27, align 8
  %41 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %42 = call i32* @svn_prop_get_value(i32* %40, i32 %41)
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %32, align 4
  %45 = load i32*, i32** %26, align 8
  %46 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %47 = call i32* @svn_prop_get_value(i32* %45, i32 %46)
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %33, align 4
  %50 = load i32*, i32** %27, align 8
  %51 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %52 = call i32* @svn_prop_get_value(i32* %50, i32 %51)
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %34, align 4
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* @svn_diff_op_deleted, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %15
  %59 = load i32*, i32** %16, align 8
  %60 = load i8*, i8** %29, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = load i8*, i8** %21, align 8
  %63 = load i32, i32* %31, align 4
  %64 = load i32, i32* %33, align 4
  %65 = load i32*, i32** %30, align 8
  %66 = call i32 @print_git_diff_header_deleted(i32* %59, i8* %60, i8* %61, i8* %62, i32 %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %30, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = call i32 @apr_psprintf(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %22, align 4
  %72 = load i32*, i32** %30, align 8
  %73 = call i8* @diff_label(i32 %70, i32 %71, i32* %72)
  %74 = load i8**, i8*** %17, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i32*, i32** %30, align 8
  %76 = load i8*, i8** %21, align 8
  %77 = call i32 @apr_psprintf(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %23, align 4
  %79 = load i32*, i32** %30, align 8
  %80 = call i8* @diff_label(i32 %77, i32 %78, i32* %79)
  %81 = load i8**, i8*** %18, align 8
  store i8* %80, i8** %81, align 8
  br label %223

82:                                               ; preds = %15
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* @svn_diff_op_copied, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = load i32*, i32** %16, align 8
  %88 = load i8*, i8** %29, align 8
  %89 = load i8*, i8** %24, align 8
  %90 = load i32, i32* %25, align 4
  %91 = load i8*, i8** %21, align 8
  %92 = load i32*, i32** %30, align 8
  %93 = call i32 @print_git_diff_header_copied(i32* %87, i8* %88, i8* %89, i32 %90, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** %30, align 8
  %96 = load i8*, i8** %24, align 8
  %97 = call i32 @apr_psprintf(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %22, align 4
  %99 = load i32*, i32** %30, align 8
  %100 = call i8* @diff_label(i32 %97, i32 %98, i32* %99)
  %101 = load i8**, i8*** %17, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i32*, i32** %30, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = call i32 @apr_psprintf(i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %23, align 4
  %106 = load i32*, i32** %30, align 8
  %107 = call i8* @diff_label(i32 %104, i32 %105, i32* %106)
  %108 = load i8**, i8*** %18, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i8*, i8** %29, align 8
  %111 = load i32, i32* %31, align 4
  %112 = load i32, i32* %32, align 4
  %113 = load i32, i32* %33, align 4
  %114 = load i32, i32* %34, align 4
  %115 = load i8*, i8** %28, align 8
  %116 = load i32*, i32** %30, align 8
  %117 = call i32 @maybe_print_mode_change(i32* %109, i8* %110, i32 %111, i32 %112, i32 %113, i32 %114, i8* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  br label %222

119:                                              ; preds = %82
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* @svn_diff_op_added, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load i32*, i32** %16, align 8
  %125 = load i8*, i8** %29, align 8
  %126 = load i8*, i8** %20, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = load i32, i32* %32, align 4
  %129 = load i32, i32* %34, align 4
  %130 = load i32*, i32** %30, align 8
  %131 = call i32 @print_git_diff_header_added(i32* %124, i8* %125, i8* %126, i8* %127, i32 %128, i32 %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load i32*, i32** %30, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = call i32 @apr_psprintf(i32* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* %22, align 4
  %137 = load i32*, i32** %30, align 8
  %138 = call i8* @diff_label(i32 %135, i32 %136, i32* %137)
  %139 = load i8**, i8*** %17, align 8
  store i8* %138, i8** %139, align 8
  %140 = load i32*, i32** %30, align 8
  %141 = load i8*, i8** %21, align 8
  %142 = call i32 @apr_psprintf(i32* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* %23, align 4
  %144 = load i32*, i32** %30, align 8
  %145 = call i8* @diff_label(i32 %142, i32 %143, i32* %144)
  %146 = load i8**, i8*** %18, align 8
  store i8* %145, i8** %146, align 8
  br label %221

147:                                              ; preds = %119
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* @svn_diff_op_modified, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %183

151:                                              ; preds = %147
  %152 = load i32*, i32** %16, align 8
  %153 = load i8*, i8** %29, align 8
  %154 = load i8*, i8** %20, align 8
  %155 = load i8*, i8** %21, align 8
  %156 = load i32*, i32** %30, align 8
  %157 = call i32 @print_git_diff_header_modified(i32* %152, i8* %153, i8* %154, i8* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i32*, i32** %30, align 8
  %160 = load i8*, i8** %20, align 8
  %161 = call i32 @apr_psprintf(i32* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* %22, align 4
  %163 = load i32*, i32** %30, align 8
  %164 = call i8* @diff_label(i32 %161, i32 %162, i32* %163)
  %165 = load i8**, i8*** %17, align 8
  store i8* %164, i8** %165, align 8
  %166 = load i32*, i32** %30, align 8
  %167 = load i8*, i8** %21, align 8
  %168 = call i32 @apr_psprintf(i32* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* %23, align 4
  %170 = load i32*, i32** %30, align 8
  %171 = call i8* @diff_label(i32 %168, i32 %169, i32* %170)
  %172 = load i8**, i8*** %18, align 8
  store i8* %171, i8** %172, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = load i8*, i8** %29, align 8
  %175 = load i32, i32* %31, align 4
  %176 = load i32, i32* %32, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %34, align 4
  %179 = load i8*, i8** %28, align 8
  %180 = load i32*, i32** %30, align 8
  %181 = call i32 @maybe_print_mode_change(i32* %173, i8* %174, i32 %175, i32 %176, i32 %177, i32 %178, i8* %179, i32* %180)
  %182 = call i32 @SVN_ERR(i32 %181)
  br label %220

183:                                              ; preds = %147
  %184 = load i64, i64* %19, align 8
  %185 = load i64, i64* @svn_diff_op_moved, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %219

187:                                              ; preds = %183
  %188 = load i32*, i32** %16, align 8
  %189 = load i8*, i8** %29, align 8
  %190 = load i8*, i8** %24, align 8
  %191 = load i8*, i8** %21, align 8
  %192 = load i32*, i32** %30, align 8
  %193 = call i32 @print_git_diff_header_renamed(i32* %188, i8* %189, i8* %190, i8* %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load i32*, i32** %30, align 8
  %196 = load i8*, i8** %24, align 8
  %197 = call i32 @apr_psprintf(i32* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %196)
  %198 = load i32, i32* %22, align 4
  %199 = load i32*, i32** %30, align 8
  %200 = call i8* @diff_label(i32 %197, i32 %198, i32* %199)
  %201 = load i8**, i8*** %17, align 8
  store i8* %200, i8** %201, align 8
  %202 = load i32*, i32** %30, align 8
  %203 = load i8*, i8** %21, align 8
  %204 = call i32 @apr_psprintf(i32* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %203)
  %205 = load i32, i32* %23, align 4
  %206 = load i32*, i32** %30, align 8
  %207 = call i8* @diff_label(i32 %204, i32 %205, i32* %206)
  %208 = load i8**, i8*** %18, align 8
  store i8* %207, i8** %208, align 8
  %209 = load i32*, i32** %16, align 8
  %210 = load i8*, i8** %29, align 8
  %211 = load i32, i32* %31, align 4
  %212 = load i32, i32* %32, align 4
  %213 = load i32, i32* %33, align 4
  %214 = load i32, i32* %34, align 4
  %215 = load i8*, i8** %28, align 8
  %216 = load i32*, i32** %30, align 8
  %217 = call i32 @maybe_print_mode_change(i32* %209, i8* %210, i32 %211, i32 %212, i32 %213, i32 %214, i8* %215, i32* %216)
  %218 = call i32 @SVN_ERR(i32 %217)
  br label %219

219:                                              ; preds = %187, %183
  br label %220

220:                                              ; preds = %219, %151
  br label %221

221:                                              ; preds = %220, %123
  br label %222

222:                                              ; preds = %221, %86
  br label %223

223:                                              ; preds = %222, %58
  %224 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %224
}

declare dso_local i32* @svn_prop_get_value(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @print_git_diff_header_deleted(i32*, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i8* @diff_label(i32, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i8*) #1

declare dso_local i32 @print_git_diff_header_copied(i32*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @maybe_print_mode_change(i32*, i8*, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @print_git_diff_header_added(i32*, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @print_git_diff_header_modified(i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @print_git_diff_header_renamed(i32*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
