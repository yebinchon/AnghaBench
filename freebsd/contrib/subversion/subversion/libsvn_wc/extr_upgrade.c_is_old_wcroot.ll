; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_is_old_wcroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_is_old_wcroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@SVN_ERR_WC_INVALID_OP_ON_CWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Can't upgrade '%s' as it is not a working copy\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_schedule_add = common dso_local global i64 0, align 8
@svn_depth_exclude = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Can't upgrade '%s' as it is not a working copy root, the root is '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @is_old_wcroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @is_old_wcroot(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @svn_wc__read_entries_old(i32** %6, i8* %11, i32* %12, i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @SVN_ERR_WC_INVALID_OP_ON_CWD, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @svn_dirent_local_style(i8* %21, i32* %22)
  %24 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %18, i32* %19, i32 %20, i32 %23)
  store i32* %24, i32** %3, align 8
  br label %147

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i64 @svn_dirent_is_root(i8* %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %3, align 8
  br label %147

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @svn_dirent_split(i8** %7, i8** %8, i8* %35, i32* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32* @svn_wc__read_entries_old(i32** %6, i8* %38, i32* %39, i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @svn_error_clear(i32* %45)
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %3, align 8
  br label %147

48:                                               ; preds = %34
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call %struct.TYPE_3__* @svn_hash_gets(i32* %49, i8* %50)
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %9, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @svn_wc_schedule_add, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @svn_depth_exclude, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70, %64, %54, %48
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %3, align 8
  br label %147

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %136, %78
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = call i64 @svn_dirent_is_root(i8* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %137

86:                                               ; preds = %79
  %87 = load i8*, i8** %7, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @svn_dirent_split(i8** %7, i8** %8, i8* %87, i32* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32* @svn_wc__read_entries_old(i32** %6, i8* %90, i32* %91, i32* %92)
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @svn_error_clear(i32* %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i8* @svn_dirent_join(i8* %99, i8* %100, i32* %101)
  store i8* %102, i8** %7, align 8
  br label %137

103:                                              ; preds = %86
  %104 = load i32*, i32** %6, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call %struct.TYPE_3__* @svn_hash_gets(i32* %104, i8* %105)
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %9, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = icmp ne %struct.TYPE_3__* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @svn_wc_schedule_add, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @svn_depth_exclude, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125, %119, %109, %103
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i8* @svn_dirent_join(i8* %132, i8* %133, i32* %134)
  store i8* %135, i8** %7, align 8
  br label %137

136:                                              ; preds = %125
  br label %79

137:                                              ; preds = %131, %96, %79
  %138 = load i32, i32* @SVN_ERR_WC_INVALID_OP_ON_CWD, align 4
  %139 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i8*, i8** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @svn_dirent_local_style(i8* %140, i32* %141)
  %143 = load i8*, i8** %7, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @svn_dirent_local_style(i8* %143, i32* %144)
  %146 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %138, i32* null, i32 %139, i32 %142, i32 %145)
  store i32* %146, i32** %3, align 8
  br label %147

147:                                              ; preds = %137, %76, %44, %31, %17
  %148 = load i32*, i32** %3, align 8
  ret i32* %148
}

declare dso_local i32* @svn_wc__read_entries_old(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
