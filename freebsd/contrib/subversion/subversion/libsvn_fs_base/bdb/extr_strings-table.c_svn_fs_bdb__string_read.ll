; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64, i8*, i8*, i8* }

@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"reading string\00", align 1
@DB_DBT_USERMEM = common dso_local global i32 0, align 4
@DB_DBT_PARTIAL = common dso_local global i32 0, align 4
@DB_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"closing string-reading cursor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__string_read(i32* %0, i8* %1, i8* %2, i64 %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_8__* %17, i8* %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = call i32* @locate_key(i64* %20, i32** %19, %struct.TYPE_8__* %17, i32* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32* %27)
  br label %29

29:                                               ; preds = %53, %7
  %30 = load i64, i64* %20, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i64, i64* %20, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %12, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = call i32 @get_next_length(i64* %20, i32* %37, %struct.TYPE_8__* %17)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @DB_NOTFOUND, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i64*, i64** %13, align 8
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %8, align 8
  br label %127

45:                                               ; preds = %33
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %16, align 4
  %52 = call i32* @BDB_WRAP(i32* %49, i32 %50, i32 %51)
  store i32* %52, i32** %8, align 8
  br label %127

53:                                               ; preds = %45
  br label %29

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %122
  %56 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_8__* %18)
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %21, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load i64*, i64** %13, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %21, align 8
  %64 = sub nsw i64 %62, %63
  %65 = inttoptr i64 %64 to i8*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i8* %65, i8** %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @DB_DBT_USERMEM, align 4
  %74 = load i32, i32* @DB_DBT_PARTIAL, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* @DB_CURRENT, align 4
  %81 = call i32 @svn_bdb_dbc_get(i32* %79, %struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %55
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @svn_bdb_dbc_close(i32* %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* %16, align 4
  %90 = call i32* @BDB_WRAP(i32* %87, i32 %88, i32 %89)
  store i32* %90, i32** %8, align 8
  br label %127

91:                                               ; preds = %55
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %21, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %21, align 8
  %96 = load i64, i64* %21, align 8
  %97 = load i64*, i64** %13, align 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @svn_bdb_dbc_close(i32* %103)
  %105 = call i32* @BDB_WRAP(i32* %101, i32 %102, i32 %104)
  %106 = call i32 @SVN_ERR(i32* %105)
  br label %123

107:                                              ; preds = %91
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @get_next_length(i64* %20, i32* %108, %struct.TYPE_8__* %17)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @DB_NOTFOUND, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %123

114:                                              ; preds = %107
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @N_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* %16, align 4
  %121 = call i32* @BDB_WRAP(i32* %118, i32 %119, i32 %120)
  store i32* %121, i32** %8, align 8
  br label %127

122:                                              ; preds = %114
  store i64 0, i64* %12, align 8
  br label %55

123:                                              ; preds = %113, %100
  %124 = load i64, i64* %21, align 8
  %125 = load i64*, i64** %13, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %8, align 8
  br label %127

127:                                              ; preds = %123, %117, %84, %48, %42
  %128 = load i32*, i32** %8, align 8
  ret i32* %128
}

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @locate_key(i64*, i32**, %struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i32 @get_next_length(i64*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @BDB_WRAP(i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
