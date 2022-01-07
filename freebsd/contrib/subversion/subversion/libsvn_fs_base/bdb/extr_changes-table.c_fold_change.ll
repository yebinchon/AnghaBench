; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_fold_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_fold_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i64, i8*, i8*, i32 }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Missing required node revision ID\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Invalid change ordering: new node revision ID without delete\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Invalid change ordering: non-add change on deleted path\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Invalid change ordering: add change on preexisting path\00", align 1
@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_10__*)* @fold_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fold_change(i32* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @apr_hash_pool_get(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call %struct.TYPE_9__* @svn_hash_gets(i32* %14, i8* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %9, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %176

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = call i32* @svn_error_create(i32 %34, i32* null, i32 %35)
  store i32* %36, i32** %4, align 8
  br label %191

37:                                               ; preds = %28, %20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @svn_fs_base__id_eq(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 131
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32* @svn_error_create(i32 %57, i32* null, i32 %58)
  store i32* %59, i32** %4, align 8
  br label %191

60:                                               ; preds = %51, %42, %37
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 131
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 129
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 128
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 132
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32* @svn_error_create(i32 %81, i32* null, i32 %82)
  store i32* %83, i32** %4, align 8
  br label %191

84:                                               ; preds = %75, %70, %65, %60
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 132
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 131
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 128
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32* @svn_error_create(i32 %100, i32* null, i32 %101)
  store i32* %102, i32** %4, align 8
  br label %191

103:                                              ; preds = %94, %89, %84
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  switch i64 %106, label %155 [
    i64 128, label %107
    i64 131, label %108
    i64 132, label %141
    i64 129, label %141
    i64 130, label %154
  ]

107:                                              ; preds = %103
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %175

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 132
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %140

114:                                              ; preds = %108
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 129
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32*, i32** %6, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call %struct.TYPE_9__* @svn_hash_gets(i32* %120, i8* %121)
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %10, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_9__* %123)
  br label %139

125:                                              ; preds = %114
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %10, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i64 131, i64* %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %125, %119
  br label %140

140:                                              ; preds = %139, %113
  br label %175

141:                                              ; preds = %103, %103
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call %struct.TYPE_9__* @change_to_fs_change(%struct.TYPE_10__* %142, i32* %143)
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %10, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i64 129, i64* %146, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i32* @apr_hash_pool_get(i32* %148)
  %150 = load i8*, i8** %11, align 8
  %151 = call i8* @apr_pstrdup(i32* %149, i8* %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %153 = call i32 @svn_hash_sets(i32* %147, i8* %151, %struct.TYPE_9__* %152)
  br label %175

154:                                              ; preds = %103
  br label %155

155:                                              ; preds = %103, %154
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %10, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i8*, i8** @TRUE, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i8*, i8** @TRUE, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %174, %141, %140, %107
  br label %185

176:                                              ; preds = %3
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call %struct.TYPE_9__* @change_to_fs_change(%struct.TYPE_10__* %177, i32* %178)
  store %struct.TYPE_9__* %179, %struct.TYPE_9__** %10, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @apr_pstrdup(i32* %180, i8* %183)
  store i8* %184, i8** %11, align 8
  br label %185

185:                                              ; preds = %176, %175
  %186 = load i32*, i32** %5, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %189 = call i32 @svn_hash_sets(i32* %186, i8* %187, %struct.TYPE_9__* %188)
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %190, i32** %4, align 8
  br label %191

191:                                              ; preds = %185, %99, %80, %56, %33
  %192 = load i32*, i32** %4, align 8
  ret i32* %192
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__id_eq(i32, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @change_to_fs_change(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_9__*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
