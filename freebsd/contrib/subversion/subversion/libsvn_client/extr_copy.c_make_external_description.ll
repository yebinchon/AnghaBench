; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_make_external_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_make_external_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@svn_opt_revision_unspecified = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_opt_revision_head = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@svn_opt_revision_number = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"-r%ld \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"@%ld\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s%s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"%s property defined at '%s' is using an unsupported syntax\00", align 1
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_13__*, %struct.TYPE_14__*, i64, i32*)* @make_external_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_external_description(i8** %0, i8* %1, %struct.TYPE_13__* %2, %struct.TYPE_14__* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = bitcast %struct.TYPE_15__* %8 to i64*
  store i64 %4, i64* %16, align 4
  store i8** %0, i8*** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %182 [
    i32 129, label %20
    i32 128, label %82
  ]

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32*, i32** %13, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SVN_VA_NULL, align 4
  %31 = call i8* @apr_pstrcat(i32* %26, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i8* %31, i8** %14, align 8
  br label %67

32:                                               ; preds = %20
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @svn_opt_revision_head, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i8* %51, i8** %14, align 8
  br label %66

52:                                               ; preds = %37, %32
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @svn_opt_revision_number, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i8* %65, i8** %14, align 8
  br label %66

66:                                               ; preds = %52, %44
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32*, i32** %13, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i8* @maybe_quote(i8* %71, i32* %72)
  %74 = load i8*, i8** %14, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i8* @maybe_quote(i8* %77, i32* %78)
  %80 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %74, i8* %79)
  %81 = load i8**, i8*** %9, align 8
  store i8* %80, i8** %81, align 8
  br label %190

82:                                               ; preds = %6
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32*, i32** %13, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SVN_VA_NULL, align 4
  %93 = call i8* @apr_pstrcat(i32* %88, i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i8* %93, i8** %14, align 8
  br label %116

94:                                               ; preds = %82
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @svn_opt_revision_head, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i32*, i32** %13, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %112)
  store i8* %113, i8** %14, align 8
  br label %115

114:                                              ; preds = %99, %94
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %115

115:                                              ; preds = %114, %106
  br label %116

116:                                              ; preds = %115, %87
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  br label %131

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i8* [ %129, %126 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %130 ]
  store i8* %132, i8** %15, align 8
  br label %164

133:                                              ; preds = %116
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @svn_opt_revision_head, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %15, align 8
  br label %163

149:                                              ; preds = %138, %133
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @svn_opt_revision_number, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @SVN_ERR_ASSERT(i32 %154)
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %161)
  store i8* %162, i8** %15, align 8
  br label %163

163:                                              ; preds = %149, %145
  br label %164

164:                                              ; preds = %163, %131
  %165 = load i32*, i32** %13, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %170, i8* %171)
  %173 = load i32*, i32** %13, align 8
  %174 = call i8* @maybe_quote(i8* %172, i32* %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load i32*, i32** %13, align 8
  %179 = call i8* @maybe_quote(i8* %177, i32* %178)
  %180 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %166, i8* %174, i8* %179)
  %181 = load i8**, i8*** %9, align 8
  store i8* %180, i8** %181, align 8
  br label %190

182:                                              ; preds = %6
  %183 = load i32, i32* @SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION, align 4
  %184 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %185 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %186 = load i8*, i8** %10, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @svn_dirent_local_style(i8* %186, i32* %187)
  %189 = call i32* @svn_error_createf(i32 %183, i32* null, i32 %184, i32 %185, i32 %188)
  store i32* %189, i32** %7, align 8
  br label %192

190:                                              ; preds = %164, %67
  %191 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %191, i32** %7, align 8
  br label %192

192:                                              ; preds = %190, %182
  %193 = load i32*, i32** %7, align 8
  ret i32* %193
}

declare dso_local i8* @apr_pstrcat(i32*, i32, i8*, i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @maybe_quote(i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
