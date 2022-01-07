; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_fold_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_fold_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Invalid change ordering: non-add change on deleted path\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Invalid change ordering: add change on preexisting path\00", align 1
@TRUE = common dso_local global i8* null, align 8
@svn_tristate_true = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_10__*)* @fold_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fold_change(i32* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @apr_hash_pool_get(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_10__* @apr_hash_get(i32* %16, i32 %19, i32 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %9, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %177

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 130
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 128
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 131
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %43 = call i32* @svn_error_create(i32 %41, i32* null, i32 %42)
  store i32* %43, i32** %4, align 8
  br label %194

44:                                               ; preds = %35, %30, %25
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 131
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 130
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32* @svn_error_create(i32 %55, i32* null, i32 %56)
  store i32* %57, i32** %4, align 8
  br label %194

58:                                               ; preds = %49, %44
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  switch i64 %61, label %147 [
    i64 130, label %62
    i64 131, label %116
    i64 128, label %116
    i64 129, label %146
  ]

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 131
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @apr_hash_set(i32* %68, i32 %71, i32 %74, %struct.TYPE_10__* null)
  br label %115

76:                                               ; preds = %62
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 128
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_10__* @apr_hash_get(i32* %82, i32 %85, i32 %88)
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %10, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_10__* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = call i32 @apr_hash_set(i32* %92, i32 %95, i32 %98, %struct.TYPE_10__* %99)
  br label %114

101:                                              ; preds = %76
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call %struct.TYPE_10__* @path_change_dup(%struct.TYPE_10__* %102, i32* %103)
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %10, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = call i32 @apr_hash_set(i32* %105, i32 %108, i32 %111, %struct.TYPE_10__* %112)
  br label %114

114:                                              ; preds = %101, %81
  br label %115

115:                                              ; preds = %114, %67
  br label %176

116:                                              ; preds = %58, %58
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call %struct.TYPE_10__* @path_change_dup(%struct.TYPE_10__* %117, i32* %118)
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %10, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i64 128, i64* %121, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %130 = call i32 @apr_hash_set(i32* %122, i32 %125, i32 %128, %struct.TYPE_10__* %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = call i32* @apr_hash_pool_get(i32* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @apr_pstrmemdup(i32* %133, i32 %136, i32 %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = call i32 @apr_hash_set(i32* %131, i32 %140, i32 %143, %struct.TYPE_10__* %144)
  br label %176

146:                                              ; preds = %58
  br label %147

147:                                              ; preds = %58, %146
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i8*, i8** @TRUE, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i8*, i8** @TRUE, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %156
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @svn_tristate_true, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i32, i32* @svn_tristate_true, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %165
  br label %176

176:                                              ; preds = %175, %116, %115
  br label %192

177:                                              ; preds = %3
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = call %struct.TYPE_10__* @path_change_dup(%struct.TYPE_10__* %178, i32* %179)
  store %struct.TYPE_10__* %180, %struct.TYPE_10__** %10, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %191 = call i32 @apr_hash_set(i32* %181, i32 %185, i32 %189, %struct.TYPE_10__* %190)
  br label %192

192:                                              ; preds = %177, %176
  %193 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %193, i32** %4, align 8
  br label %194

194:                                              ; preds = %192, %54, %40
  %195 = load i32*, i32** %4, align 8
  ret i32* %195
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_10__* @apr_hash_get(i32*, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_hash_set(i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SVN_ERR_ASSERT(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @path_change_dup(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @apr_pstrmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
