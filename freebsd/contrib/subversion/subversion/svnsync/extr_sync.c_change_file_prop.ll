; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_sync.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_sync.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32*, i8*, i32, i8*, i64, i8*, i8*, i64 }
%struct.TYPE_4__ = type { i32* (i32, i8*, i32*, i32*)* }

@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"svnmerge-integrated\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"svnmerge-blocked\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @svn_property_kind2(i8* %19)
  %21 = load i64, i64* @svn_prop_regular_kind, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %5, align 8
  br label %122

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** @SVN_PROP_MERGEINFO, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %5, align 8
  br label %122

40:                                               ; preds = %30, %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %5, align 8
  br label %122

54:                                               ; preds = %45, %40
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %59, %54
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @svn_prop_needs_translation(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %67
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @normalize_string(i32** %8, i64* %12, i32 %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %71
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** @SVN_PROP_MERGEINFO, align 8
  %85 = call i64 @strcmp(i8* %83, i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @remove_r0_mergeinfo(i32** %8, i64* %13, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i8*, i8** @TRUE, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %87
  br label %99

99:                                               ; preds = %98, %82, %71
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %99
  br label %109

109:                                              ; preds = %108, %67
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32* (i32, i8*, i32*, i32*)*, i32* (i32, i8*, i32*, i32*)** %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32* %114(i32 %117, i8* %118, i32* %119, i32* %120)
  store i32* %121, i32** %5, align 8
  br label %122

122:                                              ; preds = %109, %49, %35, %23
  %123 = load i32*, i32** %5, align 8
  ret i32* %123
}

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @svn_prop_needs_translation(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @normalize_string(i32**, i64*, i32, i32*, i32*) #1

declare dso_local i32 @remove_r0_mergeinfo(i32**, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
