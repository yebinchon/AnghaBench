; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_close_handler_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_close_handler_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_stream_baton = type { %struct.TYPE_3__*, i32, i8**, %struct.TYPE_4__*, i8**, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_handler_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_handler_md5(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.md5_stream_baton*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.md5_stream_baton*
  store %struct.md5_stream_baton* %5, %struct.md5_stream_baton** %3, align 8
  %6 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %7 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @svn_stream_close(i32 %8)
  %10 = call i32 @SVN_ERR(i32 %9)
  %11 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %12 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %11, i32 0, i32 4
  %13 = load i8**, i8*** %12, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %17 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %20 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %25 = call i8* @apr_pmemdup(i32 %18, i32 %23, i32 %24)
  %26 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %27 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %26, i32 0, i32 4
  %28 = load i8**, i8*** %27, align 8
  store i8* %25, i8** %28, align 8
  br label %29

29:                                               ; preds = %15, %1
  %30 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %31 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %30, i32 0, i32 2
  %32 = load i8**, i8*** %31, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %36 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %39 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %44 = call i8* @apr_pmemdup(i32 %37, i32 %42, i32 %43)
  %45 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %3, align 8
  %46 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  store i8* %44, i8** %47, align 8
  br label %48

48:                                               ; preds = %34, %29
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i8* @apr_pmemdup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
