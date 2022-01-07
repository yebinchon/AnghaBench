; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_run_diff2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_run_diff2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"'%s' returned %d\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_run_diff2(i8* %0, i8** %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i32* %8, i32* %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  store i8** %1, i8*** %15, align 8
  store i32 %2, i32* %16, align 4
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32 4, i32* %29, align 4
  %32 = load i32*, i32** %25, align 8
  %33 = call i32* @svn_pool_create(i32* %32)
  store i32* %33, i32** %30, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %12
  store i32* %28, i32** %21, align 8
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i8**, i8*** %15, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %29, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %29, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %29, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %29, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %29, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %29, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %18, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %29, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %29, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32*, i32** %30, align 8
  %61 = load i32, i32* %29, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i8** @apr_palloc(i32* %60, i32 %64)
  store i8** %65, i8*** %26, align 8
  store i32 0, i32* %27, align 4
  %66 = load i8*, i8** %24, align 8
  %67 = load i8**, i8*** %26, align 8
  %68 = load i32, i32* %27, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %27, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  store i8* %66, i8** %71, align 8
  %72 = load i8**, i8*** %15, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %59
  store i32 0, i32* %31, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %31, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i8**, i8*** %15, align 8
  %81 = load i32, i32* %31, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %26, align 8
  %86 = load i32, i32* %27, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %27, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* %84, i8** %89, align 8
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %31, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %31, align 4
  br label %75

93:                                               ; preds = %75
  br label %100

94:                                               ; preds = %59
  %95 = load i8**, i8*** %26, align 8
  %96 = load i32, i32* %27, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %27, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %93
  %101 = load i8*, i8** %17, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i8**, i8*** %26, align 8
  %105 = load i32, i32* %27, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %27, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %108, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i8**, i8*** %26, align 8
  %111 = load i32, i32* %27, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %27, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  store i8* %109, i8** %114, align 8
  br label %115

115:                                              ; preds = %103, %100
  %116 = load i8*, i8** %18, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load i8**, i8*** %26, align 8
  %120 = load i32, i32* %27, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %27, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %123, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = load i8**, i8*** %26, align 8
  %126 = load i32, i32* %27, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %27, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  store i8* %124, i8** %129, align 8
  br label %130

130:                                              ; preds = %118, %115
  %131 = load i8*, i8** %19, align 8
  %132 = load i32*, i32** %30, align 8
  %133 = call i8* @svn_dirent_local_style(i8* %131, i32* %132)
  %134 = load i8**, i8*** %26, align 8
  %135 = load i32, i32* %27, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %27, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  store i8* %133, i8** %138, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i32*, i32** %30, align 8
  %141 = call i8* @svn_dirent_local_style(i8* %139, i32* %140)
  %142 = load i8**, i8*** %26, align 8
  %143 = load i32, i32* %27, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %27, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  store i8* %141, i8** %146, align 8
  %147 = load i8**, i8*** %26, align 8
  %148 = load i32, i32* %27, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %27, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  store i8* null, i8** %151, align 8
  %152 = load i32, i32* %27, align 4
  %153 = load i32, i32* %29, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @SVN_ERR_ASSERT(i32 %155)
  %157 = load i8*, i8** %14, align 8
  %158 = load i8*, i8** %24, align 8
  %159 = load i8**, i8*** %26, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = load i32, i32* @TRUE, align 4
  %162 = load i32*, i32** %22, align 8
  %163 = load i32*, i32** %23, align 8
  %164 = load i32*, i32** %30, align 8
  %165 = call i32 @svn_io_run_cmd(i8* %157, i8* %158, i8** %159, i32* %160, i32* null, i32 %161, i32* null, i32* %162, i32* %163, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load i32*, i32** %21, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %130
  %171 = load i32*, i32** %21, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %176 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i8*, i8** %24, align 8
  %178 = load i32*, i32** %25, align 8
  %179 = call i8* @svn_dirent_local_style(i8* %177, i32* %178)
  %180 = load i32*, i32** %21, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32* @svn_error_createf(i32 %175, i32* null, i32 %176, i8* %179, i32 %181)
  store i32* %182, i32** %13, align 8
  br label %187

183:                                              ; preds = %170, %130
  %184 = load i32*, i32** %30, align 8
  %185 = call i32 @svn_pool_destroy(i32* %184)
  %186 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %186, i32** %13, align 8
  br label %187

187:                                              ; preds = %183, %174
  %188 = load i32*, i32** %13, align 8
  ret i32* %188
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8** @apr_palloc(i32*, i32) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_run_cmd(i8*, i8*, i8**, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
