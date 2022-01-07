; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c_loadlocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c_loadlocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8* }

@new_categories = common dso_local global i8** null, align 8
@current_categories = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_LDP_ERROR = common dso_local global i32 0, align 4
@__xlocale_global_locale = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @loadlocale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @loadlocale(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i8**, i8*** @new_categories, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8**, i8*** @current_categories, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35, %29, %1
  %42 = load i8*, i8** %4, align 8
  %43 = call i32* @strchr(i8* %42, i8 signext 47)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %35, %23
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %93

47:                                               ; preds = %41
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %7, align 4
  %49 = call i32 (...) @__detect_path_locale()
  store i32 %49, i32* @errno, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* null, i8** %2, align 8
  br label %93

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* @errno, align 4
  %55 = load i32, i32* %3, align 4
  switch i32 %55, label %62 [
    i32 132, label %56
    i32 133, label %57
    i32 128, label %58
    i32 129, label %59
    i32 130, label %60
    i32 131, label %61
  ]

56:                                               ; preds = %53
  store i32 (i8*)* @__wrap_setrunelocale, i32 (i8*)** %6, align 8
  br label %64

57:                                               ; preds = %53
  store i32 (i8*)* @__collate_load_tables, i32 (i8*)** %6, align 8
  br label %64

58:                                               ; preds = %53
  store i32 (i8*)* @__time_load_locale, i32 (i8*)** %6, align 8
  br label %64

59:                                               ; preds = %53
  store i32 (i8*)* @__numeric_load_locale, i32 (i8*)** %6, align 8
  br label %64

60:                                               ; preds = %53
  store i32 (i8*)* @__monetary_load_locale, i32 (i8*)** %6, align 8
  br label %64

61:                                               ; preds = %53
  store i32 (i8*)* @__messages_load_locale, i32 (i8*)** %6, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %93

64:                                               ; preds = %61, %60, %59, %58, %57, %56
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strcmp(i8* %65, i8* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %2, align 8
  br label %93

71:                                               ; preds = %64
  %72 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 %72(i8* %73)
  %75 = load i32, i32* @_LDP_ERROR, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strcpy(i8* %78, i8* %79)
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @__xlocale_global_locale, i32 0, i32 0), align 8
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strcpy(i8* %88, i8* %89)
  %91 = load i8*, i8** %5, align 8
  store i8* %91, i8** %2, align 8
  br label %93

92:                                               ; preds = %71
  store i8* null, i8** %2, align 8
  br label %93

93:                                               ; preds = %92, %77, %69, %62, %52, %45
  %94 = load i8*, i8** %2, align 8
  ret i8* %94
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @__detect_path_locale(...) #1

declare dso_local i32 @__wrap_setrunelocale(i8*) #1

declare dso_local i32 @__collate_load_tables(i8*) #1

declare dso_local i32 @__time_load_locale(i8*) #1

declare dso_local i32 @__numeric_load_locale(i8*) #1

declare dso_local i32 @__monetary_load_locale(i8*) #1

declare dso_local i32 @__messages_load_locale(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
