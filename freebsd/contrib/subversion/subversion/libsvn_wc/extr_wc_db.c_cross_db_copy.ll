; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_cross_db_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_cross_db_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i32, i32*, i32*, i32, i8*, i32, i32, i8*, i32*, i64, i64 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i8*, i64, i32, i32, i64, i32*, i32, i8*, i8*, i32*)* @cross_db_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cross_db_copy(i32* %0, i8* %1, i32* %2, i8* %3, i64 %4, i32 %5, i32 %6, i64 %7, i32* %8, i32 %9, i8* %10, i8* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_4__, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i8* %3, i8** %17, align 8
  store i64 %4, i64* %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i64 %7, i64* %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  store i32* %12, i32** %26, align 8
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* @svn_node_file, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %13
  %38 = load i64, i64* %21, align 8
  %39 = load i64, i64* @svn_node_dir, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %13
  %42 = phi i1 [ true, %13 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @SVN_ERR_ASSERT(i32 %43)
  %45 = load i32*, i32** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32*, i32** %26, align 8
  %48 = load i32*, i32** %26, align 8
  %49 = call i32 @read_info(i32* null, i32* null, i32* null, i32* null, i32* null, i8** %28, i32* %29, i8** %30, i32* %33, i32** %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %45, i8* %46, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %41
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i64, i64* %18, align 8
  %60 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** %14, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %26, align 8
  %67 = load i32*, i32** %26, align 8
  %68 = call i32 @db_read_pristine_props(i32** %32, i32* %63, i8* %64, i32 %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %71

70:                                               ; preds = %58, %54, %41
  store i32* null, i32** %32, align 8
  br label %71

71:                                               ; preds = %70, %62
  %72 = call i32 @blank_iwb(%struct.TYPE_4__* %27)
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 14
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 13
  store i64 %75, i64* %76, align 8
  %77 = load i32*, i32** %32, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 12
  store i32* %77, i32** %78, align 8
  %79 = load i8*, i8** %28, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 11
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* %29, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 10
  store i32 %81, i32* %82, align 4
  %83 = load i8*, i8** %30, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %23, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 9
  store i32 %85, i32* %86, align 8
  %87 = load i8*, i8** %24, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** %25, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 8
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* %19, align 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = load i32*, i32** %31, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i32* %95, i32** %96, align 8
  %97 = load i32*, i32** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32* %97, i32** %98, align 8
  %99 = load i32, i32* %33, align 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* %20, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %16, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load i32*, i32** %26, align 8
  %106 = call i32 @insert_working_node(%struct.TYPE_4__* %27, i32* %103, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i32*, i32** %14, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load i32*, i32** %26, align 8
  %113 = call i32 @copy_actual(i32* %108, i8* %109, i32* %110, i8* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_info(i32*, i32*, i32*, i32*, i32*, i8**, i32*, i8**, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @db_read_pristine_props(i32**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @blank_iwb(%struct.TYPE_4__*) #1

declare dso_local i32 @insert_working_node(%struct.TYPE_4__*, i32*, i8*, i32*) #1

declare dso_local i32 @copy_actual(i32*, i8*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
