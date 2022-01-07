; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_systemd_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_systemd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"/etc/os-release\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"/usr/lib/os-release\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PRETTY_NAME=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @systemd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @systemd_release(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_11__* @svn_stream_open_readonly(i32** %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @APR_STATUS_IS_ENOENT(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = call i32 @svn_error_clear(%struct.TYPE_11__* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.TYPE_11__* @svn_stream_open_readonly(i32** %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32* %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %4, align 8
  br label %26

26:                                               ; preds = %20, %14, %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = call i32 @svn_error_clear(%struct.TYPE_11__* %30)
  store i8* null, i8** %2, align 8
  br label %75

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %70, %32
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.TYPE_11__* @svn_stream_readline(i32* %37, %struct.TYPE_10__** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %7, i32* %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i32 @svn_error_clear(%struct.TYPE_11__* %43)
  store i8* null, i8** %2, align 8
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 12
  %56 = load i32*, i32** %3, align 8
  %57 = call %struct.TYPE_10__* @svn_stringbuf_create(i8* %55, i32* %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call %struct.TYPE_11__* @svn_stream_close(i32* %58)
  %60 = call i32 @svn_error_clear(%struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = call i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %2, align 8
  br label %75

66:                                               ; preds = %45
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %71

70:                                               ; preds = %66
  br label %33

71:                                               ; preds = %69, %33
  %72 = load i32*, i32** %5, align 8
  %73 = call %struct.TYPE_11__* @svn_stream_close(i32* %72)
  %74 = call i32 @svn_error_clear(%struct.TYPE_11__* %73)
  store i8* null, i8** %2, align 8
  br label %75

75:                                               ; preds = %71, %51, %42, %29
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local %struct.TYPE_11__* @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @svn_stream_readline(i32*, %struct.TYPE_10__**, i8*, i64*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_stream_close(i32*) #1

declare dso_local i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
