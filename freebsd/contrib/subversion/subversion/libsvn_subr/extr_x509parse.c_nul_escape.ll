; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_nul_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_nul_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"?\\000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32*)* @nul_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nul_escape(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %33, %2
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %36

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %22

36:                                               ; preds = %31, %22
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %3, align 8
  br label %86

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.TYPE_7__* @svn_stringbuf_create_empty(i32* %45)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %9, align 8
  br label %47

47:                                               ; preds = %44, %77
  %48 = load i8*, i8** %7, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %60, %47
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  br label %49

63:                                               ; preds = %58
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_7__* %64, i8* %65, i32 %71)
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %82

77:                                               ; preds = %63
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_7__* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %7, align 8
  br label %47

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %82, %40
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local %struct.TYPE_7__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
