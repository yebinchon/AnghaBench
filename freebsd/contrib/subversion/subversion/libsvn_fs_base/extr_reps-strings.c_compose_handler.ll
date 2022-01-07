; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_compose_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_compose_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.compose_handler_baton = type { i32, i64, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*)* @compose_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compose_handler(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.compose_handler_baton*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.compose_handler_baton*
  store %struct.compose_handler_baton* %12, %struct.compose_handler_baton** %6, align 8
  %13 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %14 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ true, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %25 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %24, i32 0, i32 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %30 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %29, i32 0, i32 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %20
  %36 = phi i1 [ false, %20 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %40 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %3, align 8
  br label %189

48:                                               ; preds = %43, %35
  %49 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %50 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @SVN_ERR_ASSERT(i32 %54)
  %56 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %57 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %140

60:                                               ; preds = %48
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %102

63:                                               ; preds = %60
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %68, %63
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  %77 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %78 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @SVN_ERR_ASSERT(i32 %84)
  %86 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %87 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @apr_palloc(i32* %88, i64 %89)
  %91 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %92 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %95 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @svn_txdelta_apply_instructions(%struct.TYPE_11__* %93, i32* null, i32 %96, i64* %7)
  %98 = load i8*, i8** @TRUE, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %101 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %139

102:                                              ; preds = %68, %60
  %103 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %104 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %103, i32 0, i32 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32* @svn_pool_create(i64 %107)
  store i32* %108, i32** %8, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %111 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %110, i32 0, i32 3
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call %struct.TYPE_11__* @svn_txdelta_compose_windows(%struct.TYPE_11__* %109, %struct.TYPE_11__* %112, i32* %113)
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %9, align 8
  %115 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %116 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @svn_pool_destroy(i32* %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %121 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %120, i32 0, i32 3
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %121, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %124 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %102
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br label %134

134:                                              ; preds = %129, %102
  %135 = phi i1 [ true, %102 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %138 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %134, %73
  br label %184

140:                                              ; preds = %48
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %178

143:                                              ; preds = %140
  %144 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %145 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %144, i32 0, i32 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32* @svn_pool_create(i64 %148)
  store i32* %149, i32** %10, align 8
  %150 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %151 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  %154 = zext i1 %153 to i32
  %155 = call i32 @SVN_ERR_ASSERT(i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = call %struct.TYPE_11__* @svn_txdelta_window_dup(%struct.TYPE_11__* %156, i32* %157)
  %159 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %160 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %159, i32 0, i32 3
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %160, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %163 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %162, i32 0, i32 2
  store i32* %161, i32** %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %143
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br label %173

173:                                              ; preds = %168, %143
  %174 = phi i1 [ true, %143 ], [ %172, %168 ]
  %175 = zext i1 %174 to i32
  %176 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %177 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  br label %183

178:                                              ; preds = %140
  %179 = load i8*, i8** @TRUE, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %182 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %178, %173
  br label %184

184:                                              ; preds = %183, %139
  %185 = load i64, i64* @FALSE, align 8
  %186 = load %struct.compose_handler_baton*, %struct.compose_handler_baton** %6, align 8
  %187 = getelementptr inbounds %struct.compose_handler_baton, %struct.compose_handler_baton* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  %188 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %188, i32** %3, align 8
  br label %189

189:                                              ; preds = %184, %46
  %190 = load i32*, i32** %3, align 8
  ret i32* %190
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @apr_palloc(i32*, i64) #1

declare dso_local i32 @svn_txdelta_apply_instructions(%struct.TYPE_11__*, i32*, i32, i64*) #1

declare dso_local i32* @svn_pool_create(i64) #1

declare dso_local %struct.TYPE_11__* @svn_txdelta_compose_windows(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_11__* @svn_txdelta_window_dup(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
