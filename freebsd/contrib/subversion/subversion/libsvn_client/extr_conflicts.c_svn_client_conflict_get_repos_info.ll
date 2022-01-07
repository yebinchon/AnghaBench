; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_get_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_get_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_get_repos_info(i8** %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %5
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  br label %44

27:                                               ; preds = %13
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  br label %43

41:                                               ; preds = %27
  %42 = load i8**, i8*** %6, align 8
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %41, %33
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i8**, i8*** %7, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %7, align 8
  store i8* %60, i8** %61, align 8
  br label %79

62:                                               ; preds = %48
  %63 = load i32*, i32** %8, align 8
  %64 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i32*, i32** %8, align 8
  %70 = call %struct.TYPE_6__* @get_conflict_desc2_t(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %7, align 8
  store i8* %74, i8** %75, align 8
  br label %78

76:                                               ; preds = %62
  %77 = load i8**, i8*** %7, align 8
  store i8* null, i8** %77, align 8
  br label %78

78:                                               ; preds = %76, %68
  br label %79

79:                                               ; preds = %78, %54
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %81
}

declare dso_local %struct.TYPE_6__* @get_conflict_desc2_t(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
