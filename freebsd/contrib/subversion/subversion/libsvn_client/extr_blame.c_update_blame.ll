; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_update_blame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_update_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_baton = type { i32, i32, i32, i64, %struct.file_rev_baton* }
%struct.file_rev_baton = type { i32*, i32*, i32, i32*, i32, i32*, %struct.TYPE_2__*, i32, %struct.blame_chain*, i64, %struct.blame_chain* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.blame_chain = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @update_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_blame(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.delta_baton*, align 8
  %4 = alloca %struct.file_rev_baton*, align 8
  %5 = alloca %struct.blame_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.delta_baton*
  store %struct.delta_baton* %9, %struct.delta_baton** %3, align 8
  %10 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %11 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %10, i32 0, i32 4
  %12 = load %struct.file_rev_baton*, %struct.file_rev_baton** %11, align 8
  store %struct.file_rev_baton* %12, %struct.file_rev_baton** %4, align 8
  %13 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %14 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %19 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @svn_stream_close(i64 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %25 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %30 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %29, i32 0, i32 10
  %31 = load %struct.blame_chain*, %struct.blame_chain** %30, align 8
  store %struct.blame_chain* %31, %struct.blame_chain** %5, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %34 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %33, i32 0, i32 8
  %35 = load %struct.blame_chain*, %struct.blame_chain** %34, align 8
  store %struct.blame_chain* %35, %struct.blame_chain** %5, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %38 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %41 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %44 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %45 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %48 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %51 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %56 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %61 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @add_file_blame(i32 %39, i32 %42, %struct.blame_chain* %43, i32 %46, i32 %49, i32 %54, i32 %59, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %66 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %65, i32 0, i32 9
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %129

69:                                               ; preds = %36
  %70 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %71 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %129, label %74

74:                                               ; preds = %69
  %75 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %76 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %79 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %82 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %81, i32 0, i32 8
  %83 = load %struct.blame_chain*, %struct.blame_chain** %82, align 8
  %84 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %85 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %88 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %91 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %90, i32 0, i32 6
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %96 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %95, i32 0, i32 6
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %101 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @add_file_blame(i32 %77, i32 %80, %struct.blame_chain* %83, i32 %86, i32 %89, i32 %94, i32 %99, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %106 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @svn_pool_clear(i32* %107)
  %109 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %110 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %6, align 8
  %112 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %113 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %116 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %119 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %118, i32 0, i32 5
  store i32* %117, i32** %119, align 8
  %120 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %121 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %124 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @apr_pstrdup(i32* %122, i32 %125)
  %127 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %128 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %74, %69, %36
  %130 = load %struct.delta_baton*, %struct.delta_baton** %3, align 8
  %131 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %134 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %136 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %7, align 8
  %138 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %139 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %142 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.file_rev_baton*, %struct.file_rev_baton** %4, align 8
  %145 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %144, i32 0, i32 0
  store i32* %143, i32** %145, align 8
  %146 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %146
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_close(i64) #1

declare dso_local i32 @add_file_blame(i32, i32, %struct.blame_chain*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
