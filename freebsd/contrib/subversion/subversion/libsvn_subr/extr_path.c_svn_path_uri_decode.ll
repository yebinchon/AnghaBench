; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_uri_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_uri_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_path_uri_decode(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca [3 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_3__* @svn_stringbuf_create_ensure(i64 %13, i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %91, %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %8, align 1
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 63
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %7, align 8
  br label %81

34:                                               ; preds = %24
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8 32, i8* %8, align 1
  br label %80

42:                                               ; preds = %38, %34
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @svn_ctype_isxdigit(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 2
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @svn_ctype_isxdigit(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 %67, i8* %68, align 1
  %69 = load i8*, i8** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  store i8 %73, i8* %74, align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  store i8 0, i8* %75, align 1
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %77 = call i64 @strtol(i8* %76, i32* null, i32 16)
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %8, align 1
  br label %79

79:                                               ; preds = %62, %54, %46, %42
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %32
  %82 = load i8, i8* %8, align 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 %82, i8* %90, align 1
  br label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %18

94:                                               ; preds = %18
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  ret i8* %104
}

declare dso_local %struct.TYPE_3__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @svn_ctype_isxdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
