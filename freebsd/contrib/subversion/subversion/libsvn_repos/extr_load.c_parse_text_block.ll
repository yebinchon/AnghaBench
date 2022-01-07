; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_parse_text_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load.c_parse_text_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32**, i8*)*, i32 (i64*, i8**, i8*)* }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_STREAM_UNEXPECTED_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected EOF writing contents\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i64, %struct.TYPE_3__*, i8*, i8*, i64, i32*)* @parse_text_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_text_block(i32* %0, i64 %1, i64 %2, %struct.TYPE_3__* %3, i8* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (i64*, i8**, i8*)*, i32 (i64*, i8**, i8*)** %28, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 %29(i64* %22, i8** %23, i8* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* %22, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i64, i64* %22, align 8
  %37 = load i8*, i8** %23, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32*, i32** %17, align 8
  %40 = call i32* @svn_txdelta_parse_svndiff(i64 %36, i8* %37, i32 %38, i32* %39)
  store i32* %40, i32** %18, align 8
  br label %41

41:                                               ; preds = %35, %26
  br label %49

42:                                               ; preds = %8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (i32**, i8*)*, i32 (i32**, i8*)** %44, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 %45(i32** %18, i8* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %42, %41
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %16, align 8
  store i64 %58, i64* %20, align 8
  br label %61

59:                                               ; preds = %53
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %20, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i64, i64* %20, align 8
  store i64 %62, i64* %19, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @svn_stream_read_full(i32* %63, i8* %64, i64* %20)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %19, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = call i32* (...) @stream_ran_dry()
  store i32* %74, i32** %9, align 8
  br label %102

75:                                               ; preds = %61
  %76 = load i32*, i32** %18, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i64, i64* %20, align 8
  store i64 %79, i64* %21, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @svn_stream_write(i32* %80, i8* %81, i64* %21)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %20, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* @SVN_ERR_STREAM_UNEXPECTED_EOF, align 4
  %89 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %90 = call i32* @svn_error_create(i32 %88, i32* null, i32 %89)
  store i32* %90, i32** %9, align 8
  br label %102

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %75
  br label %50

93:                                               ; preds = %50
  %94 = load i32*, i32** %18, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32*, i32** %18, align 8
  %98 = call i32 @svn_stream_close(i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %9, align 8
  br label %102

102:                                              ; preds = %100, %87, %73
  %103 = load i32*, i32** %9, align 8
  ret i32* %103
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @svn_txdelta_parse_svndiff(i64, i8*, i32, i32*) #1

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i64*) #1

declare dso_local i32* @stream_ran_dry(...) #1

declare dso_local i32 @svn_stream_write(i32*, i8*, i64*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
