; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_validate_and_resolve_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_validate_and_resolve_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@svn_opt_revision_number = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Unsupported revision specifier used; use only integer values or 'HEAD'\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Revision '%ld' does not exist\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"LOWER revision cannot be greater than UPPER revision; consider reversing your revision range\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i64, i32*)* @validate_and_resolve_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @validate_and_resolve_revisions(%struct.TYPE_11__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @svn_opt_revision_number, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @svn_opt_revision_head, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i64, i64* @svn_opt_revision_number, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %34, i64* %38, align 8
  br label %56

39:                                               ; preds = %22
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i64, i64* @svn_opt_revision_number, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %39
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_opt_revision_number, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %66 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %67 = call i32* @svn_error_create(i32 %65, i32* null, i32 %66)
  store i32* %67, i32** %4, align 8
  br label %191

68:                                               ; preds = %57
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %75, %68
  %84 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32* @svn_error_createf(i32 %84, i32* null, i32 %85, i64 %90)
  store i32* %91, i32** %4, align 8
  br label %191

92:                                               ; preds = %75
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load i64, i64* @svn_opt_revision_number, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @SVN_IS_VALID_REVNUM(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  br label %119

113:                                              ; preds = %99
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %107
  br label %138

120:                                              ; preds = %92
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @svn_opt_revision_head, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %120
  %128 = load i64, i64* @svn_opt_revision_number, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i64 %132, i64* %136, align 8
  br label %137

137:                                              ; preds = %127, %120
  br label %138

138:                                              ; preds = %137, %119
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @svn_opt_revision_number, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %147 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %148 = call i32* @svn_error_create(i32 %146, i32* null, i32 %147)
  store i32* %148, i32** %4, align 8
  br label %191

149:                                              ; preds = %138
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %6, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %156, %149
  %165 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %166 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32* @svn_error_createf(i32 %165, i32* null, i32 %166, i64 %171)
  store i32* %172, i32** %4, align 8
  br label %191

173:                                              ; preds = %156
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %178, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %173
  %186 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %187 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  %188 = call i32* @svn_error_create(i32 %186, i32* null, i32 %187)
  store i32* %188, i32** %4, align 8
  br label %191

189:                                              ; preds = %173
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %190, i32** %4, align 8
  br label %191

191:                                              ; preds = %189, %185, %164, %145, %83, %64
  %192 = load i32*, i32** %4, align 8
  ret i32* %192
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
