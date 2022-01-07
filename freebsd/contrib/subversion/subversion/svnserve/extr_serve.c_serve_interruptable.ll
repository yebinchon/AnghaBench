; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_serve_interruptable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_serve_interruptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@main_commands = common dso_local global %struct.TYPE_9__* null, align 8
@APR_SO_KEEPALIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @serve_interruptable(i64* %0, %struct.TYPE_10__* %1, i64 (%struct.TYPE_10__*)* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64 (%struct.TYPE_10__*)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 (%struct.TYPE_10__*)* %2, i64 (%struct.TYPE_10__*)** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @svn_pool_create(i32* %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @apr_hash_make(i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_commands, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %11, align 8
  br label %22

22:                                               ; preds = %34, %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32*, i32** %13, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = call i32 @svn_hash_sets(i32* %28, i64 %31, %struct.TYPE_9__* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 1
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %11, align 8
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @APR_SO_KEEPALIVE, align 4
  %47 = call i64 @apr_socket_opt_set(i32 %45, i32 %46, i32 1)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %42
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @svn_ra_svn_create_conn5(i32 %54, i32* null, i32* null, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i32* @construct_server_baton(i32* %87, i32 %90, %struct.TYPE_11__* %93, i32* %94)
  store i32* %95, i32** %10, align 8
  br label %96

96:                                               ; preds = %51, %37
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64, i64* @TRUE, align 8
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %99, %96
  br label %102

102:                                              ; preds = %155, %101
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = icmp ne i32* %106, null
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i1 [ false, %102 ], [ %108, %105 ]
  br i1 %110, label %111, label %156

111:                                              ; preds = %109
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @svn_pool_clear(i32* %112)
  %114 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %7, align 8
  %115 = icmp ne i64 (%struct.TYPE_10__*)* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %111
  %117 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %7, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = call i64 %117(%struct.TYPE_10__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = call i32* @svn_ra_svn__has_command(i64* %15, i64* %9, i32 %124, i32* %125)
  store i32* %126, i32** %10, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %121
  %130 = load i64, i64* %15, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i32*, i32** %13, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* @FALSE, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = call i32* @svn_ra_svn__handle_command(i64* %9, i32* %133, i32 %136, i32 %139, i64 %140, i32* %141)
  store i32* %142, i32** %10, align 8
  br label %143

143:                                              ; preds = %132, %129, %121
  br label %156

144:                                              ; preds = %116, %111
  %145 = load i32*, i32** %13, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* @FALSE, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = call i32* @svn_ra_svn__handle_command(i64* %9, i32* %145, i32 %148, i32 %151, i64 %152, i32* %153)
  store i32* %154, i32** %10, align 8
  br label %155

155:                                              ; preds = %144
  br label %102

156:                                              ; preds = %143, %109
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @svn_pool_destroy(i32* %157)
  %159 = load i64*, i64** %5, align 8
  %160 = icmp ne i64* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i64, i64* %9, align 8
  %163 = load i64*, i64** %5, align 8
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32*, i32** %10, align 8
  %166 = call i32* @svn_error_trace(i32* %165)
  ret i32* %166
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i64, %struct.TYPE_9__*) #1

declare dso_local i64 @apr_socket_opt_set(i32, i32, i32) #1

declare dso_local i32 @svn_ra_svn_create_conn5(i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @construct_server_baton(i32*, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_ra_svn__has_command(i64*, i64*, i32, i32*) #1

declare dso_local i32* @svn_ra_svn__handle_command(i64*, i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
