; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_shelve-cmd.c_svn_cl__shelve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_shelve-cmd.c_svn_cl__shelve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_21__ = type { i32, i64, i32, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"deleted '%s'\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"No changes were shelved\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"shelved '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__shelve(%struct.TYPE_24__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_23__*
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_23__*
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %9, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %3
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @svn_dirent_get_absolute(i8** %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = call i32 @SVN_ERR(i32* %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %31
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %49 = call i32* @svn_error_create(i32 %48, i32 0, i32* null)
  store i32* %49, i32** %4, align 8
  br label %221

50:                                               ; preds = %39
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @shelves_list(i8* %51, i32 %57, %struct.TYPE_21__* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32* %60)
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %4, align 8
  br label %221

63:                                               ; preds = %31
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @get_name(i8** %11, %struct.TYPE_24__* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32* %67)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %63
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %83 = call i32* @svn_error_create(i32 %82, i32 0, i32* null)
  store i32* %83, i32** %4, align 8
  br label %221

84:                                               ; preds = %73
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32* @svn_client_shelves_delete(i8* %85, i8* %86, i32 %89, %struct.TYPE_21__* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %84
  %99 = load i32*, i32** %7, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32* @svn_cmdline_printf(i32* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  %102 = call i32 @SVN_ERR(i32* %101)
  br label %103

103:                                              ; preds = %98, %84
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %4, align 8
  br label %221

105:                                              ; preds = %63
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = load i32, i32* @FALSE, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = call i32* @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_25__** %12, %struct.TYPE_24__* %106, i32 %109, %struct.TYPE_21__* %110, i32 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32* %113)
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @svn_opt_push_implicit_dot_target(%struct.TYPE_25__* %115, i32* %116)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %14, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %105
  %126 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %127 = call i32* @svn_error_create(i32 %126, i32 0, i32* null)
  store i32* %127, i32** %4, align 8
  br label %221

128:                                              ; preds = %105
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %130 = call i32* @svn_cl__check_targets_are_local_paths(%struct.TYPE_25__* %129)
  %131 = call i32 @SVN_ERR(i32* %130)
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @svn_depth_unknown, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %135, %128
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = call i32* @svn_cl__eat_peg_revisions(%struct.TYPE_25__** %12, %struct.TYPE_25__* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32* %140)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %137
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32* @svn_cl__make_log_msg_baton(i32* %148, %struct.TYPE_22__* %149, i32* null, i32 %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32* %154)
  br label %156

156:                                              ; preds = %146, %137
  %157 = load i8*, i8** %11, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = call i32* @svn_client_shelve(i8* %157, %struct.TYPE_25__* %158, i64 %159, i32 %162, i32 %165, i32 %168, %struct.TYPE_21__* %169, i32* %170)
  store i32* %171, i32** %15, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %156
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = call i32* @svn_cl__cleanup_log_msg(i32 %179, i32* %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32* %182)
  br label %187

184:                                              ; preds = %156
  %185 = load i32*, i32** %15, align 8
  %186 = call i32 @SVN_ERR(i32* %185)
  br label %187

187:                                              ; preds = %184, %176
  %188 = load i8*, i8** %11, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = call i32* @svn_client_shelf_has_changes(i32* %13, i8* %188, i8* %189, %struct.TYPE_21__* %190, i32* %191)
  %193 = call i32 @SVN_ERR(i32* %192)
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %187
  %197 = load i8*, i8** %11, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = call i32* @svn_client_shelves_delete(i8* %197, i8* %198, i32 %201, %struct.TYPE_21__* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32* %204)
  %206 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %207 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %208 = call i32* @svn_error_createf(i32 %206, i32* null, i32 %207)
  store i32* %208, i32** %4, align 8
  br label %221

209:                                              ; preds = %187
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load i32*, i32** %7, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = call i32* @svn_cmdline_printf(i32* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %216)
  %218 = call i32 @SVN_ERR(i32* %217)
  br label %219

219:                                              ; preds = %214, %209
  %220 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %220, i32** %4, align 8
  br label %221

221:                                              ; preds = %219, %196, %125, %103, %81, %50, %47
  %222 = load i32*, i32** %4, align 8
  ret i32* %222
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32* @shelves_list(i8*, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @get_name(i8**, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32* @svn_client_shelves_delete(i8*, i8*, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_cmdline_printf(i32*, i8*, i8*) #1

declare dso_local i32* @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_25__**, %struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @svn_opt_push_implicit_dot_target(%struct.TYPE_25__*, i32*) #1

declare dso_local i32* @svn_cl__check_targets_are_local_paths(%struct.TYPE_25__*) #1

declare dso_local i32* @svn_cl__eat_peg_revisions(%struct.TYPE_25__**, %struct.TYPE_25__*, i32*) #1

declare dso_local i32* @svn_cl__make_log_msg_baton(i32*, %struct.TYPE_22__*, i32*, i32, i32*) #1

declare dso_local i32* @svn_client_shelve(i8*, %struct.TYPE_25__*, i64, i32, i32, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_cl__cleanup_log_msg(i32, i32*, i32*) #1

declare dso_local i32* @svn_client_shelf_has_changes(i32*, i8*, i8*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
